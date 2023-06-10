// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

class AuthError implements Exception {
  String toString() => 'Empty or invalid API key';
}

class BadResponse implements Exception {
  String toString() => 'Non-200 response from API';
}

class NoResultsError implements Exception {
  String _msg;

  NoResultsError([String this._msg = 'Missing results key']);

  @override
  String toString() => _msg;
}
