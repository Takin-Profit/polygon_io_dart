// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
// Contains aggregate data for a given ticker symbol over a given date range in a custom time window size.
typedef Agg = ({
  double? open,
  double? high,
  double? low,
  double? close,
  double? volume,
  double? vwap,
  int? timestamp,
  int? transactions,
  bool? otc
});

extension AggExtension on Agg {
  Agg fromMap(Map<String, dynamic> map) {
    return (
      open: map['o'],
      high: map['h'],
      low: map['l'],
      close: map['c'],
      volume: map['v'],
      vwap: map['vw'],
      timestamp: map['t'],
      transactions: map['n'],
      otc: map['otc'],
    );
  }
}

// Contains daily open, high, low, and close (OHLC) data for a given date.
typedef GroupedDailyAgg = ({
  String? ticker,
  double? open,
  double? high,
  double? low,
  double? close,
  double? volume,
  double? vwap,
  int? timestamp,
  int? transactions,
  bool? otc
});

extension GroupedDailyAggExtension on GroupedDailyAgg {
  GroupedDailyAgg fromMap(Map<String, dynamic> map) {
    return (
      ticker: map['T'],
      open: map['o'],
      high: map['h'],
      low: map['l'],
      close: map['c'],
      volume: map['v'],
      vwap: map['vw'],
      timestamp: map['t'],
      transactions: map['n'],
      otc: map['otc'],
    );
  }
}

// Contains data for open, close and afterhours prices of a ticker symbol on a specified date.
typedef DailyOpenCloseAgg = ({
  double? afterHours,
  double? close,
  String? from,
  double? high,
  double? low,
  double? open,
  double? preMarket,
  String? status,
  String? symbol,
  double? volume,
  bool? otc
});

extension DailyOpenCloseAggExtension on DailyOpenCloseAgg {
  DailyOpenCloseAgg fromMap(Map<String, dynamic> map) {
    return (
      afterHours: map['afterHours'],
      close: map['close'],
      from: map['from'],
      high: map['high'],
      low: map['low'],
      open: map['open'],
      preMarket: map['preMarket'],
      status: map['status'],
      symbol: map['symbol'],
      volume: map['volume'],
      otc: map['otc'],
    );
  }
}

// Contains data for the previous day's open, high, low, and close (OHLC) of the specified stock ticker.
typedef PreviousCloseAgg = ({
  String? ticker,
  double? close,
  double? high,
  double? low,
  double? open,
  int? timestamp,
  double? volume,
  double? vwap
});

extension PreviousCloseAggExtension on PreviousCloseAgg {
  PreviousCloseAgg fromMap(Map<String, dynamic> map) {
    return (
      ticker: map['T'],
      close: map['c'],
      high: map['h'],
      low: map['l'],
      open: map['o'],
      timestamp: map['t'],
      volume: map['v'],
      vwap: map['vw'],
    );
  }
}
