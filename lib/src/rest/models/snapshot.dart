// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'aggs.dart';
import 'quotes.dart';
import 'trades.dart';

/// Most recent minute bar.
typedef MinuteSnapshot = ({
  double? accumulatedVolume,
  double? open,
  double? high,
  double? low,
  double? close,
  double? volume,
  double? vwap,
  bool? otc,
  int? timestamp,
  int? transactions,
});

extension Minute_Snapshot on MinuteSnapshot {
  static MinuteSnapshot fromJson(Map<String, dynamic> json) => (
        accumulatedVolume: json['av'],
        open: json['o'],
        high: json['h'],
        low: json['l'],
        close: json['c'],
        volume: json['v'],
        vwap: json['vw'],
        otc: json['otc'],
        timestamp: json['t'],
        transactions: json['n'],
      );
}

/// Contains data for the most recent daily bar in an options contract.
typedef IndicesSession = ({
  double? change,
  double? changePercent,
  double? close,
  double? high,
  double? low,
  double? open,
  double? previousClose,
});

extension Indices_Session on IndicesSession {
  static IndicesSession fromJson(Map<String, dynamic> json) => (
        change: json['change'],
        changePercent: json['changePercent'],
        close: json['close'],
        high: json['high'],
        low: json['low'],
        open: json['open'],
        previousClose: json['previousClose'],
      );
}

/// Contains data for the most recent daily bar in an options contract.
typedef IndicesSnapshot = ({
  double? value,
  String? name,
  String? type,
  String? ticker,
  String? marketStatus,
  IndicesSession? session,
  String? error,
  String? message,
});

extension Indices_Snapshot on IndicesSnapshot {
  static IndicesSnapshot fromJson(Map<String, dynamic> json) => (
        value: json['value'],
        name: json['name'],
        type: json['type'],
        ticker: json['ticker'],
        marketStatus: json['marketStatus'],
        session: json['session'] != null
            ? Indices_Session.fromJson(
                json['session'] as Map<String, dynamic>,
              )
            : null,
        error: json['error'],
        message: json['message'],
      );
}

/// Contains the most up-to-date market data for all traded ticker symbols.
typedef TickerSnapshot = ({
  Agg? day,
  LastQuote? lastQuote,
  LastTrade? lastTrade,
  MinuteSnapshot? min,
  Agg? prevDay,
  String? ticker,
  double? todaysChange,
  double? todaysChangePercent,
  int? updated,
});

extension Ticker_Snapshot on TickerSnapshot {
  static TickerSnapshot fromJson(Map<String, dynamic> json) => (
        day: json['day'] != null
            ? Aggs.fromMap(
                json['day'] as Map<String, dynamic>,
              )
            : null,
        lastQuote: json['lastQuote'] != null
            ? Last_Quote.fromMap(
                json['lastQuote'] as Map<String, dynamic>,
              )
            : null,
        lastTrade: json['lastTrade'] != null
            ? Last_Trade.fromJson(
                json['lastTrade'] as Map<String, dynamic>,
              )
            : null,
        min: json['min'] != null
            ? Minute_Snapshot.fromJson(
                json['min'] as Map<String, dynamic>,
              )
            : null,
        prevDay: json['prevDay'] != null
            ? Aggs.fromMap(
                json['prevDay'] as Map<String, dynamic>,
              )
            : null,
        ticker: json['ticker'],
        todaysChange: json['todaysChange'],
        todaysChangePercent: json['todaysChangePerc'],
        updated: json['updated'],
      );
}

/// Contains data for the most recent daily bar in an options contract.
typedef DayOptionContractSnapshot = ({
  double? change,
  double? changePercent,
  double? close,
  double? high,
  int? lastUpdated,
  double? low,
  double? open,
  double? previousClose,
  double? volume,
  double? vwap,
});

extension DayOption_ContractSnapshot on DayOptionContractSnapshot {
  static DayOptionContractSnapshot fromJson(Map<String, dynamic> json) => (
        change: json['change'],
        changePercent: json['changePercent'],
        close: json['close'],
        high: json['high'],
        lastUpdated: json['lastUpdated'],
        low: json['low'],
        open: json['open'],
        previousClose: json['previousClose'],
        volume: json['volume'],
        vwap: json['vwap'],
      );
}

/// Contains details for an options contract.
typedef OptionDetails = ({
  String? contractType,
  String? exerciseStyle,
  String? expirationDate,
  double? sharesPerContract,
  double? strikePrice,
  String? ticker,
});

extension Option_Details on OptionDetails {
  static OptionDetails fromJson(Map<String, dynamic> json) => (
        contractType: json['contractType'],
        exerciseStyle: json['exerciseStyle'],
        expirationDate: json['expirationDate'],
        sharesPerContract: json['sharesPerContract'],
        strikePrice: json['strikePrice'],
        ticker: json['ticker'],
      );
}

/// Contains data for the most recent quote in an options contract.
typedef LastQuoteOptionContractSnapshot = ({
  double? ask,
  double? askSize,
  double? bid,
  double? bidSize,
  int? lastUpdated,
  double? midpoint,
  String? timeframe,
});

extension LastQuoteOption_ContractSnapshot on LastQuoteOptionContractSnapshot {
  static LastQuoteOptionContractSnapshot fromJson(Map<String, dynamic> json) =>
      (
        ask: json['ask'] as double?,
        askSize: json['askSize'] as double?,
        bid: json['bid'] as double?,
        bidSize: json['bidSize'] as double?,
        lastUpdated: json['lastUpdated'] as int?,
        midpoint: json['midpoint'] as double?,
        timeframe: json['timeframe'] as String?,
      );
}

/// Contains data for the most recent trade for an options contract.
typedef LastTradeOptionContractSnapshot = ({
  double? price,
  int? sipTimestamp,
  int? size,
  List<int>? conditions,
  int? exchange,
  String? timeframe,
});

extension LastTradeOption_ContractSnapshot on LastTradeOptionContractSnapshot {
  static LastTradeOptionContractSnapshot fromJson(Map<String, dynamic> json) =>
      (
        price: json['price'],
        sipTimestamp: json['sipTimestamp'],
        size: json['size'],
        conditions: json['conditions'] != null
            ? List<int>.from(
                json['conditions'] as List,
              )
            : null,
        exchange: json['exchange'],
        timeframe: json['timeframe'],
      );
}

/// Contains data for the greeks in an options contract.
typedef Greeks = ({
  double? delta,
  double? gamma,
  double? theta,
  double? vega,
});

extension Greek on Greeks {
  static Greeks fromJson(Map<String, dynamic> json) => (
        delta: json['delta'],
        gamma: json['gamma'],
        theta: json['theta'],
        vega: json['vega'],
      );
}
