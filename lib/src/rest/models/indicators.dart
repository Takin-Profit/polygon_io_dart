// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'aggs.dart';

/// Contains one datum for indicators with a single value.
typedef IndicatorValue = ({
  int? timestamp,
  double? value,
});

extension indicatorValue on IndicatorValue {
  static IndicatorValue fromMap(Map<String, dynamic> d) => (
        timestamp: d['timestamp'],
        value: d['value'],
      );
}

/// Contains one datum for all MACD values.
typedef MACDIndicatorValue = ({
  int? timestamp,
  double? value,
  double? signal,
  double? histogram,
});

extension macdIndicatorValue on MACDIndicatorValue {
  static MACDIndicatorValue fromMap(Map<String, dynamic> d) => (
        timestamp: d['timestamp'],
        value: d['value'],
        signal: d['signal'],
        histogram: d['histogram']
      );
}

/// Contains the URL to call to get the aggs used for building the indicator.
typedef IndicatorUnderlying = ({
  String? url,
  List<Agg>? aggregates,
});

extension indicatorUnderlying on IndicatorUnderlying {
  static IndicatorUnderlying fromMap(Map<String, dynamic> d) => (
        url: d['url'],
        aggregates: d['aggregates'] != null
            ? List<Agg>.of(
                d['aggregates'].map(
                  (x) => agg.fromMap(
                    x as Map<String, dynamic>,
                  ),
                ) as List<Agg>,
              )
            : null
      );
}

/// Contains indicator values and Underlying.
typedef SingleIndicatorResults = ({
  List<IndicatorValue>? values,
  IndicatorUnderlying? underlying
});

extension singleIndicatorResult on SingleIndicatorResults {
  static SingleIndicatorResults fromMap(Map<String, dynamic> d) => (
        values: d['values'] != null
            ? List<IndicatorValue>.of(d['values'].map(
                (x) => indicatorValue.fromMap(x as Map<String, dynamic>),
              ) as List<IndicatorValue>)
            : null,
        underlying: d['underlying'] != null
            ? indicatorUnderlying.fromMap(
                d['underlying'] as Map<String, dynamic>,
              )
            : null
      );
}

typedef SMAIndicatorResults = SingleIndicatorResults;

extension smaIndicatorResults on SMAIndicatorResults {
  static SMAIndicatorResults fromMap(Map<String, dynamic> d) =>
      singleIndicatorResult.fromMap(d);
}

typedef EMAIndicatorResults = SingleIndicatorResults;

extension emaIndicatorResults on SMAIndicatorResults {
  static EMAIndicatorResults fromMap(Map<String, dynamic> d) =>
      singleIndicatorResult.fromMap(d);
}

typedef RSIIndicatorResults = SingleIndicatorResults;

extension rsiIndicatorResults on SMAIndicatorResults {
  static RSIIndicatorResults fromMap(Map<String, dynamic> d) =>
      singleIndicatorResult.fromMap(d);
}

/// Contains indicator values and Underlying.
typedef MACDIndicatorResults = ({
  List<MACDIndicatorValue>? values,
  IndicatorUnderlying? underlying,
});

extension macdIndicatorResults on MACDIndicatorResults {
  static MACDIndicatorResults fromMap(Map<String, dynamic> d) => (
        values: d['values'] != null
            ? List<MACDIndicatorValue>.of(d['values'].map(
                (x) => macdIndicatorValue.fromMap(x as Map<String, dynamic>),
              ) as List<MACDIndicatorValue>)
            : null,
        underlying: d['underlying'] != null
            ? indicatorUnderlying.fromMap(
                d['underlying'] as Map<String, dynamic>,
              )
            : null
      );
}
