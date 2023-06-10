// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

const String xPolygonEdgeId = 'X-Polygon-Edge-ID';
const String xPolygonEdgeIpAddress = 'X-Polygon-Edge-IP-Address';
const String xPolygonEdgeUserAgent = 'X-Polygon-Edge-User-Agent';

class RequestOptionError implements Exception {
  final String message;

  RequestOptionError(this.message);
}

/// RequestOptionBuilder is a utility class to build polygon api options used in requests.
/// [edgeId] is a required Launchpad header. It identifies the Edge User requesting data
/// [edgeIpAddress] is a required Launchpad header. It denotes the originating IP Address of the Edge User
/// [edgeUser] is an optional Launchpad header. It denotes the originating UserAgent of the Edge User requesting data.
class RequestOptionBuilder {
  Map<String, dynamic>? headers;

  RequestOptionBuilder({
    String? edgeId,
    String? edgeIpAddress,
    String? edgeUser,
  }) {
    if (edgeId != null && edgeIpAddress != null) {
      edgeHeaders(
        edgeId: edgeId,
        edgeIpAddress: edgeIpAddress,
        edgeUser: edgeUser,
      );
    }
  }

  /// [edgeHeaders] adds required headers to the headers' dictionary
  /// [edgeId] is a required Launchpad header. It identifies the Edge User requesting data
  /// [edgeIpAddress] is a required Launchpad header. It denotes the originating IP Address of the Edge User
  /// [edgeUser] is an optional Launchpad header. It denotes the originating UserAgent of the Edge User requesting data
  void edgeHeaders({
    required String edgeId,
    required String edgeIpAddress,
    String? edgeUser,
  }) {
    final Map<String, String> edgeHeaders = {
      xPolygonEdgeId: edgeId,
      xPolygonEdgeIpAddress: edgeIpAddress,
    };

    if (edgeUser != null) {
      edgeHeaders[xPolygonEdgeUserAgent] = edgeUser;
    }

    _addToEdgeHeaders(edgeHeaders);
  }

  /// [updateEdgeHeader] is used to change individual edge elements of underlying headers' dictionary.
  /// [edgeId] is a required Launchpad header. It identifies the Edge User requesting data
  /// [edgeIpAddress] is a required Launchpad header. It denotes the originating IP Address of the Edge User requesting data
  /// [edgeUser] is an optional Launchpad header. It denotes the originating UserAgent of the Edge User requesting data
  void updateEdgeHeader({
    String? edgeId,
    String? edgeIpAddress,
    String? edgeUser,
  }) {
    if (headers == null) {
      throw RequestOptionError(
        'Must set required fields prior to using update function.',
      );
    }

    final Map<String, String> edgeHeaders = {};

    if (edgeId != null) {
      edgeHeaders[xPolygonEdgeId] = edgeId;
    }

    if (edgeIpAddress != null) {
      edgeHeaders[xPolygonEdgeIpAddress] = edgeIpAddress;
    }

    if (edgeUser != null) {
      edgeHeaders[xPolygonEdgeUserAgent] = edgeUser;
    }

    _addToEdgeHeaders(edgeHeaders);
  }

  void _addToEdgeHeaders(Map<String, String> newHeaders) {
    if (headers == null) {
      headers = newHeaders;
    } else {
      headers?.addAll(newHeaders);
    }
  }
}
