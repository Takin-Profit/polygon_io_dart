// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Underlying contains data for an underlying or deliverable associated with an option contract.
typedef Underlying = ({
  double? amount,
  String? type,
  String? underlying,
});

extension underlying on Underlying {
  static Underlying fromMap(Map<String, dynamic> map) {
    return (
      amount: map['amount']?.toDouble(),
      type: map['type'],
      underlying: map['underlying'],
    );
  }
}

/// OptionsContract contains data for a specified ticker symbol.
typedef OptionsContract = ({
  List<Underlying>? additionalUnderlyings,
  String? cfi,
  String? contractType,
  String? correction,
  String? exerciseStyle,
  String? expirationDate,
  String? primaryExchange,
  double? sharesPerContract,
  double? strikePrice,
  String? ticker,
  String? underlyingTicker,
});

extension optionsContract on OptionsContract {
  static OptionsContract fromMap(Map<String, dynamic> map) {
    return (
      additionalUnderlyings: map['additional_underlyings'] != null
          ? (map['additional_underlyings'] as List<Map<String, dynamic>>)
              .map((e) => underlying.fromMap(e))
              .toList()
          : null,
      cfi: map['cfi'],
      contractType: map['contract_type'],
      correction: map['correction'],
      exerciseStyle: map['exercise_style'],
      expirationDate: map['expiration_date'],
      primaryExchange: map['primary_exchange'],
      sharesPerContract: map['shares_per_contract']?.toDouble(),
      strikePrice: map['strike_price']?.toDouble(),
      ticker: map['ticker'],
      underlyingTicker: map['underlying_ticker'],
    );
  }
}
