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

extension minuteSnapshot on MinuteSnapshot {
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

extension indicesSession on IndicesSession {
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

extension indicesSnapshot on IndicesSnapshot {
  static IndicesSnapshot fromJson(Map<String, dynamic> json) => (
        value: json['value'],
        name: json['name'],
        type: json['type'],
        ticker: json['ticker'],
        marketStatus: json['marketStatus'],
        session: json['session'] != null
            ? indicesSession.fromJson(
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

extension tickerSnapshot on TickerSnapshot {
  static TickerSnapshot fromJson(Map<String, dynamic> json) => (
        day: json['day'] != null
            ? agg.fromMap(
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
            ? minuteSnapshot.fromJson(
                json['min'] as Map<String, dynamic>,
              )
            : null,
        prevDay: json['prevDay'] != null
            ? agg.fromMap(
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

extension dayOptionContractSnapshot on DayOptionContractSnapshot {
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

extension optionDetails on OptionDetails {
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

extension lastQuoteOptionContractSnapshot on LastQuoteOptionContractSnapshot {
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

extension lastTradeOptionContractSnapshot on LastTradeOptionContractSnapshot {
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

extension greeks on Greeks {
  static Greeks fromJson(Map<String, dynamic> json) => (
        delta: json['delta'],
        gamma: json['gamma'],
        theta: json['theta'],
        vega: json['vega'],
      );
}

/// Contains data for the underlying stock in an options contract.
typedef UnderlyingAsset = ({
  double? changeToBreakEven,
  int? lastUpdated,
  double? price,
  double? value,
  String? ticker,
  String? timeframe,
});

extension underlyingAsset on UnderlyingAsset {
  static UnderlyingAsset fromJson(Map<String, dynamic> json) => (
        changeToBreakEven: json['changeToBreakEven'],
        lastUpdated: json['lastUpdated'],
        price: json['price'],
        value: json['value'],
        ticker: json['ticker'],
        timeframe: json['timeframe'],
      );
}

/// Contains data for the snapshot of an option contract of a stock equity.
typedef OptionContractSnapshot = ({
  double? breakEvenPrice,
  DayOptionContractSnapshot? day,
  OptionDetails? details,
  Greeks? greeks,
  double? impliedVolatility,
  LastQuoteOptionContractSnapshot? lastQuote,
  LastTradeOptionContractSnapshot? lastTrade,
  double? openInterest,
  UnderlyingAsset? underlyingAsset,
});

extension optionContractSnapshot on OptionContractSnapshot {
  static OptionContractSnapshot fromJson(Map<String, dynamic> json) => (
        breakEvenPrice: json['breakEvenPrice'],
        day: json['day'] != null
            ? dayOptionContractSnapshot.fromJson(
                json['day'] as Map<String, dynamic>,
              )
            : null,
        details: json['details'] != null
            ? optionDetails.fromJson(
                json['details'] as Map<String, dynamic>,
              )
            : null,
        greeks: json['greeks'] != null
            ? greeks.fromJson(
                json['greeks'] as Map<String, dynamic>,
              )
            : null,
        impliedVolatility: json['impliedVolatility'],
        lastQuote: json['lastQuote'] != null
            ? lastQuoteOptionContractSnapshot.fromJson(
                json['lastQuote'] as Map<String, dynamic>,
              )
            : null,
        lastTrade: json['lastTrade'] != null
            ? lastTradeOptionContractSnapshot.fromJson(
                json['lastTrade'] as Map<String, dynamic>,
              )
            : null,
        openInterest: json['openInterest'],
        underlyingAsset: json['underlyingAsset'] != null
            ? underlyingAsset.fromJson(
                json['underlyingAsset'] as Map<String, dynamic>,
              )
            : null,
      );
}

/// Contains data for a book bid or ask.
typedef OrderBookQuote = ({
  double? price,
  Map<String, double>? exchangeShares,
});

extension orderBookQuote on OrderBookQuote {
  static OrderBookQuote fromJson(Map<String, dynamic> json) => (
        price: json['p'],
        exchangeShares: Map<String, double>.from(
          json['x'] as Map<String, dynamic>,
        ),
      );
}

/// Contains the current level 2 book of a single ticker. This is the combined book from all of the exchanges.
typedef SnapshotTickerFullBook = ({
  String? ticker,
  List<OrderBookQuote>? bids,
  List<OrderBookQuote>? asks,
  double? bidCount,
  double? askCount,
  double? spread,
  int? updated,
});

extension snapShotTickerFullBook on SnapshotTickerFullBook {
  SnapshotTickerFullBook fromJson(Map<String, dynamic> json) {
    var bidList = json['bids'] as List?;
    var askList = json['asks'] as List?;

    return (
      ticker: json['ticker'],
      bids: bidList
          ?.map(
            (i) => orderBookQuote.fromJson(
              i as Map<String, dynamic>,
            ),
          )
          .toList(),
      asks: askList
          ?.map(
            (i) => orderBookQuote.fromJson(
              i as Map<String, dynamic>,
            ),
          )
          .toList(),
      bidCount: json['bidCount'] as double,
      askCount: json['askCount'] as double,
      spread: json['spread'] as double,
      updated: json['updated'],
    );
  }
}

/// Contains data about the most recent trading session for an asset.
typedef UniversalSnapshotSession = ({
  double? price,
  double? change,
  double? changePercent,
  double? earlyTradingChange,
  double? earlyTradingChangePercent,
  double? lateTradingChange,
  double? lateTradingChangePercent,
  double? open,
  double? close,
  double? high,
  double? low,
  double? previousClose,
  double? volume,
});

extension universalSnapshotSession on UniversalSnapshotSession {
  static UniversalSnapshotSession fromJson(Map<String, dynamic> json) => (
        price: json['price'],
        change: json['change'],
        changePercent: json['change_percent'],
        earlyTradingChange: json['early_trading_change'],
        earlyTradingChangePercent: json['early_trading_change_percent'],
        lateTradingChange: json['late_trading_change'],
        lateTradingChangePercent: json['late_trading_change_percent'],
        open: json['open'],
        close: json['close'],
        high: json['high'],
        low: json['low'],
        previousClose: json['previous_close'],
        volume: json['volume'],
      );
}

/// Contains the most recent quote for an asset.
typedef UniversalSnapshotLastQuote = ({
  double? ask,
  double? askSize,
  double? bid,
  double? bidSize,
  double? midpoint,
  int? exchange,
  String? timeframe,
  int? lastUpdated,
});

extension universalSnapshotLastQuote on UniversalSnapshotLastQuote {
  static UniversalSnapshotLastQuote fromJson(Map<String, dynamic> json) => (
        ask: json['ask'],
        askSize: json['ask_size'],
        bid: json['bid'],
        bidSize: json['bid_size'],
        midpoint: json['midpoint'],
        exchange: json['exchange'],
        timeframe: json['timeframe'],
        lastUpdated: json['last_updated'],
      );
}

/// Contains the most recent trade for an asset.
typedef UniversalSnapshotLastTrade = ({
  int? id,
  double? price,
  int? size,
  int? exchange,
  List<int>? conditions,
  String? timeframe,
  int? lastUpdated,
  int? participantTimestamp,
  int? sipTimestamp,
});

extension universalSnapshotLastTrade on UniversalSnapshotLastTrade {
  static UniversalSnapshotLastTrade fromJson(Map<String, dynamic> json) => (
        id: json['id'],
        price: json['price'],
        size: json['size'],
        exchange: json['exchange'],
        conditions: json['conditions'] != null
            ? List<int>.of(json['conditions'] as List<int>)
            : [],
        timeframe: json['timeframe'],
        lastUpdated: json['last_updated'],
        participantTimestamp: json['participant_timestamp'],
        sipTimestamp: json['sip_timestamp'],
      );
}

/// Contains data for the underlying stock in an options contract.
typedef UniversalSnapshotUnderlyingAsset = ({
  String? ticker,
  double? price,
  double? value,
  double? changeToBreakEven,
  String? timeframe,
  int? lastUpdated,
});

extension universalSnapshotUnderlyingAsset on UniversalSnapshotUnderlyingAsset {
  static UniversalSnapshotUnderlyingAsset fromJson(Map<String, dynamic> json) =>
      (
        ticker: json['ticker'],
        price: json['price'],
        value: json['value'],
        changeToBreakEven: json['change_to_break_even'],
        timeframe: json['timeframe'],
        lastUpdated: json['last_updated'],
      );
}

/// Contains details for an options contract.
typedef UniversalSnapshotDetails = ({
  String? contractType,
  String? exerciseStyle,
  String? expirationDate,
  double? sharesPerContract,
  double? strikePrice,
});

extension universalSnapshotDetails on UniversalSnapshotDetails {
  static UniversalSnapshotDetails fromJson(Map<String, dynamic> json) => (
        contractType: json['contract_type'],
        exerciseStyle: json['exercise_style'],
        expirationDate: json['expiration_date'],
        sharesPerContract: json['shares_per_contract'],
        strikePrice: json['strike_price'],
      );
}

/// Contains snapshot data for an asset.
typedef UniversalSnapshot = ({
  String? ticker,
  String? type,
  UniversalSnapshotSession? session,
  UniversalSnapshotLastQuote? lastQuote,
  UniversalSnapshotLastTrade? lastTrade,
  Greeks? greeks,
  UniversalSnapshotUnderlyingAsset? underlyingAsset,
  UniversalSnapshotDetails? details,
  double? breakEvenPrice,
  double? impliedVolatility,
  double? openInterest,
  String? marketStatus,
  String? name,
  String? error,
  String? message,
});

extension universalSnapshot on UniversalSnapshot {
  static UniversalSnapshot fromJson(Map<String, dynamic> json) => (
        ticker: json['ticker'],
        type: json['type'],
        session: json['session'] == null
            ? null
            : universalSnapshotSession.fromJson(
                json['session'] as Map<String, dynamic>,
              ),
        lastQuote: json['last_quote'] == null
            ? null
            : universalSnapshotLastQuote.fromJson(
                json['last_quote'] as Map<String, dynamic>,
              ),
        lastTrade: json['last_trade'] == null
            ? null
            : universalSnapshotLastTrade.fromJson(
                json['last_trade'] as Map<String, dynamic>,
              ),
        greeks: json['greeks'] == null
            ? null
            : greeks.fromJson(
                json['greeks'] as Map<String, dynamic>,
              ),
        underlyingAsset: json['underlying_asset'] == null
            ? null
            : universalSnapshotUnderlyingAsset.fromJson(
                json['underlying_asset'] as Map<String, dynamic>,
              ),
        details: json['details'] == null
            ? null
            : universalSnapshotDetails.fromJson(
                json['details'] as Map<String, dynamic>,
              ),
        breakEvenPrice: json['break_even_price'],
        impliedVolatility: json['implied_volatility'],
        openInterest: json['open_interest'],
        marketStatus: json['market_status'],
        name: json['name'],
        error: json['error'],
        message: json['message'],
      );
}
