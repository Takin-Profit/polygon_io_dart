// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'aggs.dart';

typedef IndicatorValue = ({
  int? timestamp,
  double? value,
});

extension Indicator_Value on IndicatorValue {
  static IndicatorValue fromMap(Map<String, dynamic> d) => (
        timestamp: d['timestamp'],
        value: d['value'],
      );
}

typedef MACDIndicatorValue = ({
  int? timestamp,
  double? value,
  double? signal,
  double? histogram,
});

extension MACD_IndicatorValue on MACDIndicatorValue {
  static MACDIndicatorValue fromMap(Map<String, dynamic> d) => (
        timestamp: d['timestamp'],
        value: d['value'],
        signal: d['signal'],
        histogram: d['histogram']
      );
}

typedef IndicatorUnderlying = ({
  String? url,
  List<Agg>? aggregates,
});

extension Indicator_Underlying on IndicatorUnderlying {
  static IndicatorUnderlying fromMap(Map<String, dynamic> d) => (
        url: d['url'],
        aggregates: d['aggregates'] != null
            ? List<Agg>.of(
                d['aggregates'].map(
                  (x) => Aggs.fromMap(
                    x as Map<String, dynamic>,
                  ),
                ) as List<Agg>,
              )
            : null
      );
}

typedef SingleIndicatorResults = ({
  List<IndicatorValue>? values,
  IndicatorUnderlying? underlying
});

extension SingleIndicator_Result on SingleIndicatorResults {
  static SingleIndicatorResults fromMap(Map<String, dynamic> d) => (
        values: d['values'] != null
            ? List<IndicatorValue>.of(d['values'].map(
                (x) => Indicator_Value.fromMap(x as Map<String, dynamic>),
              ) as List<IndicatorValue>)
            : null,
        underlying: d['underlying'] != null
            ? Indicator_Underlying.fromMap(
                d['underlying'] as Map<String, dynamic>,
              )
            : null
      );
}

typedef SMAIndicatorResults = SingleIndicatorResults;

extension SMAIndicator_Results on SMAIndicatorResults {
  static SMAIndicatorResults fromMap(Map<String, dynamic> d) =>
      SingleIndicator_Result.fromMap(d);
}

typedef EMAIndicatorResults = SingleIndicatorResults;

extension EMAIndicator_Results on SMAIndicatorResults {
  static EMAIndicatorResults fromMap(Map<String, dynamic> d) =>
      SingleIndicator_Result.fromMap(d);
}

typedef RSIIndicatorResults = SingleIndicatorResults;

extension RSIIndicator_Results on SMAIndicatorResults {
  static RSIIndicatorResults fromMap(Map<String, dynamic> d) =>
      SingleIndicator_Result.fromMap(d);
}

typedef MACDIndicatorResults = ({
  List<MACDIndicatorValue>? values,
  IndicatorUnderlying? underlying,
});

extension MACDIndicator_Results on MACDIndicatorResults {
  static MACDIndicatorResults fromMap(Map<String, dynamic> d) => (
        values: d['values'] != null
            ? List<MACDIndicatorValue>.of(d['values'].map(
                (x) => MACD_IndicatorValue.fromMap(x as Map<String, dynamic>),
              ) as List<MACDIndicatorValue>)
            : null,
        underlying: d['underlying'] != null
            ? Indicator_Underlying.fromMap(
                d['underlying'] as Map<String, dynamic>,
              )
            : null
      );
}
