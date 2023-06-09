// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:developer' as dev;

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

final _log = (String msg) => dev.log(msg);

class BaseClient {
  String apiKey;
  String base;
  Dio dio = Dio();

  BaseClient({
    this.apiKey = '',
    required this.base,
    Duration? connectTimeout,
    Duration? receiveTimeout,
  }) {
    if (apiKey.isEmpty) {
      throw ArgumentError(
        'Must specify env var POLYGON_API_KEY or pass api_key in constructor',
      );
    }

    dio.options.headers = {
      "Authorization": "Bearer " + apiKey,
      "Accept-Encoding": "gzip",
      "User-Agent": "Polygon.io DartClient/unknown",
    };

    dio.options.baseUrl = base;
    dio.options.connectTimeout = connectTimeout ?? Duration(seconds: 5);
    dio.options.receiveTimeout = receiveTimeout ?? Duration(seconds: 3);

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

  dynamic decode(Response<dynamic> resp) {
    return jsonDecode(
      resp.data.toString(),
    );
  }

  Future<dynamic> get(String path, {Map<String, dynamic>? params}) async {
    var response = await dio.get(
      path,
      queryParameters: params,
    );

    if (response.statusCode != 200) {
      throw Exception('Bad response: ${response.data}');
    }

    return decode(response);
  }
}
