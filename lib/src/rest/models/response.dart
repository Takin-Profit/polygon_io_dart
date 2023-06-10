// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';

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
