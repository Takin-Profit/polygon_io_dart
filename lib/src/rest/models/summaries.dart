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

/// Ticker contains data for a specified ticker symbol.
typedef Ticker = ({
  bool? active,
  String? cik,
  String? compositeFigi,
  String? currencyName,
  String? currencySymbol,
  String? baseCurrencySymbol,
  String? baseCurrencyName,
  String? delistedUtc,
  String? lastUpdatedUtc,
  String? locale,
  String? market,
  String? name,
  String? primaryExchange,
  String? shareClassFigi,
  String? ticker,
  String? type,
  String? sourceFeed
});

extension ticker on Ticker {
  static Ticker fromJson(Map<String, dynamic> json) => (
        active: json['active'],
        cik: json['cik'],
        compositeFigi: json['composite_figi'],
        currencyName: json['currency_name'],
        currencySymbol: json['currency_symbol'],
        baseCurrencySymbol: json['base_currency_symbol'],
        baseCurrencyName: json['base_currency_name'],
        delistedUtc: json['delisted_utc'],
        lastUpdatedUtc: json['last_updated_utc'],
        locale: json['locale'],
        market: json['market'],
        name: json['name'],
        primaryExchange: json['primary_exchange'],
        shareClassFigi: json['share_class_figi'],
        ticker: json['ticker'],
        type: json['type'],
        sourceFeed: json['source_feed'],
      );
}

/// TickerDetails contains data for a specified ticker symbol.
typedef TickerDetails = ({
  bool? active,
  CompanyAddress? address,
  Branding? branding,
  String? cik,
  String? compositeFigi,
  String? currencyName,
  String? currencySymbol,
  String? baseCurrencyName,
  String? baseCurrencySymbol,
  String? delistedUtc,
  String? description,
  String? tickerRoot,
  String? tickerSuffix,
  String? homepageUrl,
  String? listDate,
  String? locale,
  String? market,
  double? marketCap,
  String? name,
  String? phoneNumber,
  String? primaryExchange,
  String? shareClassFigi,
  int? shareClassSharesOutstanding,
  String? sicCode,
  String? sicDescription,
  String? ticker,
  int? totalEmployees,
  String? type,
  int? weightedSharesOutstanding,
});

extension tickerDetails on TickerDetails {
  fromJson(Map<String, dynamic> json) => (
        active: json['active'],
        address: json['address'] != null
            ? companyAddress.fromJson(
                json['address'] as Map<String, dynamic>,
              )
            : null,
        branding: json['branding'] != null
            ? brandings.fromJson(
                json['branding'] as Map<String, dynamic>,
              )
            : null,
        cik: json['cik'],
        compositeFigi: json['composite_figi'],
        currencyName: json['currency_name'],
        currencySymbol: json['currency_symbol'],
        baseCurrencyName: json['base_currency_name'],
        baseCurrencySymbol: json['base_currency_symbol'],
        delistedUtc: json['delisted_utc'],
        description: json['description'],
        tickerRoot: json['ticker_root'],
        tickerSuffix: json['ticker_suffix'],
        homepageUrl: json['homepage_url'],
        listDate: json['list_date'],
        locale: json['locale'],
        market: json['market'],
        marketCap: json['market_cap'],
        name: json['name'],
        phoneNumber: json['phone_number'],
        primaryExchange: json['primary_exchange'],
        shareClassFigi: json['share_class_figi'],
        shareClassSharesOutstanding: json['share_class_shares_outstanding'],
        sicCode: json['sic_code'],
        sicDescription: json['sic_description'],
        ticker: json['ticker'],
        totalEmployees: json['total_employees'],
        type: json['type'],
        weightedSharesOutstanding: json['weighted_shares_outstanding'],
      );
}

/// TickerDetails contains data for news articles relating to a stock ticker symbol.
typedef TickerNews = ({
  String? ampUrl,
  String? articleUrl,
  String? author,
  String? description,
  String? id,
  String? imageUrl,
  List<String>? keywords,
  String? publishedUtc,
  Publisher? publisher,
  List<String>? tickers,
  String? title,
});

extension tickerNews on TickerNews {
  static TickerNews fromJson(Map<String, dynamic> json) => (
        ampUrl: json['amp_url'],
        articleUrl: json['article_url'],
        author: json['author'],
        description: json['description'],
        id: json['id'],
        imageUrl: json['image_url'],
        keywords: json['keywords'] != null
            ? List<String>.from(
                json['keywords'] as List,
              )
            : null,
        publishedUtc: json['published_utc'],
        publisher: json['publisher'] != null
            ? publisher.fromJson(
                json['publisher'] as Map<String, dynamic>,
              )
            : null,
        tickers: json['tickers'] != null
            ? List<String>.from(
                json['tickers'] as List,
              )
            : null,
        title: json['title'],
      );
}

/// TickerTypes contains data for ticker types.
typedef TickerTypes = ({
  String? assetClass,
  String? code,
  String? description,
  String? locale,
});

extension tickerType on TickerTypes {
  static TickerTypes fromJson(Map<String, dynamic> json) => (
        assetClass: json['asset_class'],
        code: json['code'],
        description: json['description'],
        locale: json['locale'],
      );
}

typedef TickerChange = ({
  String? ticker,
});

extension tickerChange on TickerChange {
  static TickerChange fromJson(Map<String, dynamic> json) =>
      (ticker: json['ticker'],);
}

typedef TickerChangeEvent = ({
  String? type,
  String? date,
  TickerChange? tickerChange,
});

extension tickerChangeEvent on TickerChangeEvent {
  static TickerChangeEvent fromJson(Map<String, dynamic> json) => (
        type: json['type'],
        date: json['date'],
        tickerChange: json['ticker_change'] != null
            ? tickerChange.fromJson(
                json['ticker_change'] as Map<String, dynamic>,
              )
            : null,
      );
}

typedef TickerChangeResults = ({
  String? name,
  String? figi,
  String? cik,
  List<TickerChangeEvent>? events,
});

extension tickerChangeResults on TickerChangeResults {
  static TickerChangeResults fromJson(Map<String, dynamic> json) => (
        name: json['name'],
        figi: json['figi'],
        cik: json['cik'],
        events: json['events'] != null
            ? (json['events'] as List)
                .map(
                  (e) => tickerChangeEvent.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList()
            : null,
      );
}

/// TickerTypes contains data for ticker types.
