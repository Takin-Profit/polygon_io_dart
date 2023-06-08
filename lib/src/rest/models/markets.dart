// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Contains currency market status data.
typedef MarketCurrencies = ({
  String? crypto,
  String? fx,
});

extension Market_Currencies on MarketCurrencies {
  static MarketCurrencies fromMap(Map<String, dynamic> d) =>
      (crypto: d['crypto'], fx: d['fx']);
}

/// Contains exchange market status data.
typedef MarketExchanges = ({
  String? nasdaq,
  String? nyse,
  String? otc,
});

extension Market_Exchanges on MarketExchanges {
  static MarketExchanges fromMap(Map<String, dynamic> d) =>
      (nasdaq: d['nasdaq'], nyse: d['nyse'], otc: d['otc']);
}

/// Contains indices market status data.
typedef MarketIndices = ({
  String? s_and_p,
  String? societe_generale,
  String? msci,
  String? ftse_russell,
  String? mstar,
  String? mstarc,
  String? cccy,
  String? nasdaq,
  String? dow_jones,
});

extension Market_Indices on MarketIndices {
  static MarketIndices fromMap(Map<String, dynamic> d) => (
        s_and_p: d['s_and_p'],
        societe_generale: d['societe_generale'],
        msci: d['msci'],
        ftse_russell: d['ftse_russell'],
        mstar: d['mstar'],
        mstarc: d['mstarc'],
        cccy: d['cccy'],
        nasdaq: d['nasdaq'],
        dow_jones: d['dow_jones'],
      );
}

/// MarketHoliday contains data for upcoming market holidays and their open/close times.
typedef MarketHoliday = ({
  String? close,
  String? date,
  String? exchange,
  String? name,
  String? open,
  String? status
});

extension Market_Holiday on MarketHoliday {
  static MarketHoliday fromMap(Map<String, dynamic> d) => (
        close: d['close'],
        date: d['date'],
        exchange: d['exchange'],
        name: d['name'],
        open: d['open'],
        status: d['status']
      );
}

/// MarketStatus contains data for the current trading status of the exchanges and overall financial markets.
typedef MarketStatus = ({
  bool? afterHours,
  MarketCurrencies? currencies,
  bool? earlyHours,
  MarketExchanges? exchanges,
  MarketIndices? indicesGroups,
  String? market,
  String? serverTime
});

extension Market_Status on MarketStatus {
  static MarketStatus fromMap(Map<String, dynamic> d) => (
        afterHours: d['after_hours'],
        currencies: d['currencies'] != null
            ? Market_Currencies.fromMap(
                d['currencies'] as Map<String, dynamic>,
              )
            : null,
        earlyHours: d['early_hours'],
        exchanges: d['exchanges'] != null
            ? Market_Exchanges.fromMap(
                d['exchanges'] as Map<String, dynamic>,
              )
            : null,
        indicesGroups: d['indicesGroups'] != null
            ? Market_Indices.fromMap(
                d['indicesGroups'] as Map<String, dynamic>,
              )
            : null,
        market: d['market'],
        serverTime: d['server_time']
      );
}
