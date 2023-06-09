// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'tickers.dart';

/// Contains Session data for the summaries endpoint.
typedef Session = ({
  double? change,
  double? changePercent,
  double? earlyTradingChange,
  double? earlyTradingChangePercent,
  double? lateTradingChange,
  double? lateTradingChangePercent,
  double? close,
  double? high,
  double? low,
  double? open,
  double? previousClose,
  double? volume,
});

extension session on Session {
  static Session fromJson(Map<String, dynamic> json) => (
        change: json['change'],
        changePercent: json['change_percent'],
        earlyTradingChange: json['early_trading_change'],
        earlyTradingChangePercent: json['early_trading_change_percent'],
        lateTradingChange: json['late_trading_change'],
        lateTradingChangePercent: json['late_trading_change_percent'],
        close: json['close'],
        high: json['high'],
        low: json['low'],
        open: json['open'],
        previousClose: json['previous_close'],
        volume: json['volume'],
      );
}

/// Contains options data for the summaries endpoint.
typedef Options = ({
  String? contractType,
  String? exerciseStyle,
  String? expirationDate,
  double? sharesPerContract,
  double? strikePrice,
  double? underlyingTicker,
});

extension options on Options {
  static Options fromJson(Map<String, dynamic> json) => (
        contractType: json['contract_type'],
        exerciseStyle: json['exercise_style'],
        expirationDate: json['expiration_date'],
        sharesPerContract: json['shares_per_contract'],
        strikePrice: json['strike_price'],
        underlyingTicker: json['underlying_ticker'],
      );
}

/// Contains summary result data for a list of tickers.
typedef SummaryResult = ({
  double? price,
  String? name,
  String? ticker,
  Branding? branding,
  String? marketStatus,
  String? type,
  Session? session,
  Options? options,
  String? error,
  String? message,
});

extension summaryResults on SummaryResult {
  static SummaryResult fromJson(Map<String, dynamic> json) => (
        price: json['price'],
        name: json['name'],
        ticker: json['ticker'],
        branding: json['branding'] != null
            ? brandings.fromJson(
                json['branding'] as Map<String, dynamic>,
              )
            : null,
        marketStatus: json['market_status'],
        type: json['type'],
        session: json['session'] != null
            ? session.fromJson(
                json['session'] as Map<String, dynamic>,
              )
            : null,
        options: json['options'] != null
            ? options.fromJson(
                json['options'] as Map<String, dynamic>,
              )
            : null,
        error: json['error'],
        message: json['message'],
      );
}
