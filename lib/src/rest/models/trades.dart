// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Trade contains trade data for a specified ticker symbol.
typedef Trade = ({
  List<int>? conditions,
  int? correction,
  int? exchange,
  String? id,
  int? participantTimestamp,
  double? price,
  int? sequenceNumber,
  int? sipTimestamp,
  double? size,
  int? tape,
  int? trfId,
  int? trfTimestamp,
});

extension trade on Trade {
  static Trade fromJson(Map<String, dynamic> json) => (
        conditions: json['conditions'] != null
            ? List<int>.of(
                json['conditions'] as List<int>,
              )
            : null,
        correction: json['correction'],
        exchange: json['exchange'],
        id: json['id'],
        participantTimestamp: json['participantTimestamp'],
        price: json['price'],
        sequenceNumber: json['sequenceNumber'],
        sipTimestamp: json['sipTimestamp'],
        size: json['size'],
        tape: json['tape'],
        trfId: json['trfId'],
        trfTimestamp: json['trfTimestamp'],
      );
}

/// Contains data for the most recent trade for a given ticker symbol.
typedef LastTrade = ({
  String? ticker,
  int? trfTimestamp,
  double? sequenceNumber,
  int? sipTimestamp,
  int? participantTimestamp,
  List<int>? conditions,
  int? correction,
  String? id,
  double? price,
  int? trfId,
  double? size,
  int? exchange,
  int? tape,
});

extension lastTrade on LastTrade {
  static LastTrade fromJson(Map<String, dynamic> json) => (
        ticker: json['T'],
        trfTimestamp: json['f'],
        sequenceNumber: json['q'],
        sipTimestamp: json['t'],
        participantTimestamp: json['y'],
        conditions: json['c'] != null
            ? List<int>.from(
                json['c'] as List,
              )
            : null,
        correction: json['e'],
        id: json['i'],
        price: json['p'],
        trfId: json['r'],
        size: json['s'],
        exchange: json['x'],
        tape: json['z'],
      );
}

/// Contains data for a crypto trade.
typedef CryptoTrade = ({
  List<int>? conditions,
  int? exchange,
  double? price,
  double? size,
  int? timestamp,
});

extension cryptoTrade on CryptoTrade {
  static CryptoTrade fromJson(Map<String, dynamic> json) => (
        conditions: json['conditions'] != null
            ? List<int>.of(
                json['conditions'] as List<int>,
              )
            : null,
        exchange: json['exchange'],
        price: json['price'],
        size: json['size'],
        timestamp: json['timestamp'],
      );
}
