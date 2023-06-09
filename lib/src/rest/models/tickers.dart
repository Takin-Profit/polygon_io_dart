// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Contains address data for a ticker detail.
typedef CompanyAddress = ({
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? country,
  String? postalCode,
});

extension companyAddress on CompanyAddress {
  static CompanyAddress fromJson(Map<String, dynamic> json) => (
        address1: json['address1'],
        address2: json['address2'],
        city: json['city'],
        state: json['state'],
        country: json['country'],
        postalCode: json['postal_code'],
      );
}

/// Contains branding data for a ticker detail.
typedef Branding = ({
  String? iconUrl,
  String? logoUrl,
  String? accentColor,
  String? lightColor,
  String? darkColor,
});

extension brandings on Branding {
  static Branding fromJson(Map<String, dynamic> json) => (
        iconUrl: json['icon_url'],
        logoUrl: json['logo_url'],
        accentColor: json['accent_color'],
        lightColor: json['light_color'],
        darkColor: json['dark_color'],
      );
}

/// Contains publisher data for ticker news.
typedef Publisher = ({
  String? faviconUrl,
  String? homepageUrl,
  String? logoUrl,
  String? name,
});

extension publisher on Publisher {
  static Publisher fromJson(Map<String, dynamic> json) => (
        faviconUrl: json['favicon_url'],
        homepageUrl: json['homepage_url'],
        logoUrl: json['logo_url'],
        name: json['name'],
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
  static TickerDetails fromJson(Map<String, dynamic> json) => (
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
