// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Dividend contains data for a historical cash dividend, including the ticker symbol, declaration date, ex-dividend date, record date, pay date, frequency, and amount.
typedef Dividend = ({
  double? cashAmount,
  String? declarationDate,
  String? dividendType,
  String? exDividendDate,
  int? frequency,
  String? payDate,
  String? recordDate,
  String? ticker,
});

extension dividends on Dividend {
  static Dividend fromMap(Map<String, dynamic> map) {
    return (
      cashAmount: map['cash_amount']?.toDouble(),
      declarationDate: map['declaration_date'],
      dividendType: map['dividend_type'],
      exDividendDate: map['ex_dividend_date'],
      frequency: map['frequency'],
      payDate: map['pay_date'],
      recordDate: map['record_date'],
      ticker: map['ticker'],
    );
  }
}
