// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:logging/logging.dart';
import 'package:polygon_io/src/exceptions.dart';
import 'package:polygon_io/src/logging.dart';
import 'package:polygon_io/src/rest/models/request.dart';

final _logger = getLogger('RESTClient');
typedef Deserializer<T> = T Function(Map<String, dynamic> data);

sealed class PolygonResp<T> {
  bool get isList;

  PolygonResp();

  factory PolygonResp.list(List<T> data) => PolygonResponseList(data);
  factory PolygonResp.of(T data) => PolygonResponse(data);
}

class PolygonResponseList<T> extends PolygonResp<T>
    with ListMixin<T>
    implements List<T> {
  final List<T> _ls;

  @override
  bool get isList => true;

  @override
  int get length => _ls.length;

  @override
  void set length(int newLength) {
    _ls.length = newLength;
  }

  PolygonResponseList(this._ls);

  @override
  T operator [](int index) {
    return _ls[index];
  }

  @override
  void operator []=(int index, T value) {
    _ls[index] = value;
  }
}

class PolygonResponse<T> extends PolygonResp<T> {
  final T _data;
  @override
  bool get isList => false;

  T get data => _data;

  PolygonResponse(this._data);
}

class BaseClient {
  String apiKey;
  String base;
  Dio dio = Dio();
  bool trace;

  BaseClient({
    required this.base,
    required this.apiKey,
    this.trace = false,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    bool verbose = false,
    RequestOptionBuilder? options,
  }) {
    if (apiKey.isEmpty) {
      throw ArgumentError(
        'Must specify env var POLYGON_API_KEY or pass api_key in constructor',
      );
    }

    final option = options ?? RequestOptionBuilder();

    dio.options.headers = {
      "Authorization": "Bearer " + apiKey,
      "Accept-Encoding": "gzip",
      "User-Agent": "Polygon.io DartClient/unknown",
      ...?option.headers,
    };

    if (verbose) {
      _logger.level = Level.ALL;
    }

    dio.options.baseUrl = base;
    dio.options.connectTimeout = connectTimeout ?? Duration(seconds: 5);
    dio.options.receiveTimeout = receiveTimeout ?? Duration(seconds: 3);
    dio.options.responseType = ResponseType.json;

    dio.interceptors.add(RetryInterceptor(
      dio: dio,
      retries: 3, // retry count
      retryDelays: const [
        // set delays between retries
        Duration(seconds: 1), // wait 1 sec before the first retry
        Duration(seconds: 2), // wait 2 sec before the second retry
        Duration(seconds: 3), // wait 3 sec before the third retry
      ],
    ));
  }
  static int timeMult(String timestampRes) => switch (timestampRes) {
        ('nanos') => 1000000000,
        ('micros') => 1000000,
        ('millis') => 1000,
        _ => 1
      };

  dynamic decode(Response<String> resp) => jsonDecode(
        resp.data ?? '{}',
      );

  void _trace({required String path, Map<String, dynamic>? params}) {
    var fullUrl;
    fullUrl = '${base}${path}';
    if (params != null) {
      fullUrl += Uri(queryParameters: params).query;
    }
    final printHeaders = {...dio.options.headers};
    if (printHeaders.containsKey('Authorization')) {
      printHeaders['Authorization'] = printHeaders['Authorization']
          .toString()
          .replaceAll(apiKey, 'REDACTED');
    }
    print('Request URL: ${fullUrl}');
    print('Request Headers: ${printHeaders}');
  }

  Future<PolygonResp<T>> _get<T>(
    String path, {
    required Deserializer<T> deserializer,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    String? resultKey,
  }) async {
    if (trace) _trace(path: path, params: params);

    var response = await dio.get<String>(
      path,
      queryParameters: params,
      cancelToken: cancelToken,
    );

    if (trace) print('Response HEADERS: ${response.headers}');

    if (response.statusCode != 200) {
      throw Exception('Bad response: ${response.data}');
    }

    final data = decode(response);

    if (resultKey != null) {
      if (data is Map && !data.containsKey(resultKey)) {
        throw NoResultsError(
          'Expected key "${resultKey}" in response ${data}.' +
              'Make sure you have sufficient permissions and your request parameters are valid.' +
              'This is the url that returned no results: ${response.requestOptions.uri}',
        );
      }
    }

    return data is List
        ? PolygonResp.list([
            for (Map<String, dynamic> d in data as List<Map<String, dynamic>>)
              deserializer(d),
          ])
        : PolygonResp.of(deserializer(data as Map<String, dynamic>));
  }

  Future<Response<String>> _getRaw(
    String path, {
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
  }) async {
    if (trace) _trace(path: path, params: params);

    var response = await dio.get<String>(
      path,
      queryParameters: params,
      cancelToken: cancelToken,
    );

    if (trace) print('Response HEADERS: ${response.headers}');

    if (response.statusCode != 200) {
      throw Exception('Bad response: ${response.data}');
    }
    if (response.statusCode != 200) {
      throw Exception('Bad response: ${response.data}');
    }

    return response;
  }

  Stream<T> _paginateIter<T>(
    String path,
    Map<String, dynamic> params,
    Deserializer<T> deserializer, {
    String resultKey = 'results',
  }) async* {
    while (true) {
      var resp = await _getRaw(
        path,
        params: params,
      );
      var decoded = decode(resp);
      if (decoded case Map()) {
        final results = (decoded.containsKey(resultKey)
            ? decoded[resultKey]
            : []) as List<Map<String, dynamic>>;

        for (Map<String, dynamic> t in results) {
          yield deserializer(t);
        }

        if (decoded.containsKey('next_url')) {
          path = decoded['next_url']?.replaceAll(base, '') as String;
          params = {};
        } else {
          break;
        }
      }
    }
  }
}
