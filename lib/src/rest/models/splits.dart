// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Split contains data for a historical stock split,
/// including the ticker symbol, the execution date,
/// and the factors of the split ratio.
typedef Split = ({
  String? executionDate,
  int? splitFrom,
  int? splitTo,
  String? ticker,
});

extension split on Split {
  static Split of({
    String? executionDate,
    int? splitFrom,
    int? splitTo,
    String? ticker,
  }) =>
      (
        executionDate: executionDate,
        splitFrom: splitFrom,
        splitTo: splitTo,
        ticker: ticker,
      );
  static Split fromJson(Map<String, dynamic> json) => (
        executionDate: json['execution_date'],
        splitFrom: json['split_from'],
        splitTo: json['split_to'],
        ticker: json['ticker'],
      );
}
