// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

enum Sort {
  ASC(value: "asc"),
  DESC(value: "desc");

  const Sort({required this.value});
  final String value;
}

enum Order {
  ASC(value: "asc"),
  DESC(value: "desc");

  const Order({required this.value});
  final String value;
}

enum Locale {
  US(value: "us"),
  GLOBAL(value: "global");

  const Locale({required this.value});
  final String value;
}

enum Market {
  STOCKS(value: "stocks"),
  CRYPTO(value: "crypto"),
  FX(value: "fx"),
  OTC(value: "otc"),
  INDICES(value: "indices");

  const Market({required this.value});
  final String value;
}

enum AssetClass {
  STOCKS(value: "stocks"),
  OPTIONS(value: "options"),
  CRYPTO(value: "crypto"),
  FX(value: "fx"),
  INDICES(value: "indices");

  const AssetClass({required this.value});
  final String value;
}

enum DividendType {
  CD(value: "CD"),
  SC(value: "SC"),
  LT(value: "LT"),
  ST(value: "ST");

  const DividendType({required this.value});
  final String value;
}

enum Frequency {
  ONE_TIME(value: 0),
  ANUALLY(value: 1),
  BIANUALLY(value: 2),
  QUARTERLY(value: 4),
  MONTHLY(value: 12);

  const Frequency({required this.value});
  final int value;
}

enum DataType {
  DATA_TRADE(value: "trade"),
  DATA_BBO(value: "bbo"),
  DATA_NBBO(value: "nbbo");

  const DataType({required this.value});
  final String value;
}

enum SIP {
  CTA(value: "CTA"),
  UTP(value: "UTP"),
  OPRA(value: "OPRA");

  const SIP({required this.value});
  final String value;
}

enum ExchangeType {
  EXCHANGE(value: "exchange"),
  TRF(value: "TRF"),
  SIP(value: "SIP");

  const ExchangeType({required this.value});
  final String value;
}

enum Direction {
  GAINERS(value: "gainers"),
  LOSERS(value: "losers");

  const Direction({required this.value});
  final String value;
}

enum SnapshotMarketType {
  STOCKS(value: "stocks"),
  FOREX(value: "forex"),
  CRYPTO(value: "crypto"),
  INDICES(value: "indices");

  const SnapshotMarketType({required this.value});
  final String value;
}

enum Timeframe {
  ANNUAL(value: "annual"),
  QUARTERLY(value: "quarterly");

  const Timeframe({required this.value});
  final String value;
}

enum Precision {
  ZERO(value: 0),
  ONE(value: 1),
  TWO(value: 2),
  THREE(value: 3),
  FOUR(value: 4);

  const Precision({required this.value});
  final int value;
}

enum SeriesType {
  OPEN(value: "open"),
  CLOSE(value: "close"),
  HIGH(value: "high"),
  LOW(value: "low");

  const SeriesType({required this.value});
  final String value;
}

enum LaunchPadOptions {
  X_POLYGON_EDGE_ID(value: "X-Polygon-Edge-ID"),
  X_POLYGON_IP_ADDRESS(value: "X-Polygon-Edge-IP-Address"),
  X_POLYGON_EDGE_USER_AGENT(value: "X-Polygon-Edge-User-Agent");

  const LaunchPadOptions({required this.value});
  final String value;
}
