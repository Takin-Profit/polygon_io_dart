// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Quote contains quote data for a specified ticker symbol.
typedef Quote = ({
  int? askExchange,
  double? askPrice,
  double? askSize,
  int? bidExchange,
  double? bidPrice,
  double? bidSize,
  List<int>? conditions,
  List<int>? indicators,
  int? participantTimestamp,
  int? sequenceNumber,
  int? sipTimestamp,
  int? tape,
  int? trfTimestamp,
});

extension quotes on Quote {
  static Quote fromMap(Map<String, dynamic> d) => (
        askExchange: d['ask_exchange'],
        askPrice: d['ask_price'],
        askSize: d['ask_size'],
        bidExchange: d['bid_exchange'],
        bidPrice: d['bid_price'],
        bidSize: d['bid_size'],
        conditions: d['conditions']?.cast<int>(),
        indicators: d['indicators']?.cast<int>(),
        participantTimestamp: d['participant_timestamp'],
        sequenceNumber: d['sequence_number'],
        sipTimestamp: d['sip_timestamp'],
        tape: d['tape'],
        trfTimestamp: d['trf_timestamp']
      );
}

/// LastQuote contains data for the most recent NBBO (Quote) tick for a given stock.
typedef LastQuote = ({
  String? ticker,
  int? trfTimestamp,
  int? sequenceNumber,
  int? sipTimestamp,
  int? participantTimestamp,
  double? askPrice,
  int? askSize,
  int? askExchange,
  List<int>? conditions,
  List<int>? indicators,
  double? bidPrice,
  int? bidSize,
  int? bidExchange,
  int? tape,
});

extension lastQuote on LastQuote {
  static LastQuote fromMap(Map<String, dynamic> d) => (
        ticker: d['T'],
        trfTimestamp: d['f'],
        sequenceNumber: d['q'],
        sipTimestamp: d['t'],
        participantTimestamp: d['y'],
        askPrice: d['P'],
        askSize: d['S'],
        askExchange: d['X'],
        conditions: d['c']?.cast<int>(),
        indicators: d['i']?.cast<int>(),
        bidPrice: d['p'],
        bidSize: d['s'],
        bidExchange: d['x'],
        tape: d['z']
      );
}

/// Contains data for a forex quote.
typedef ForexQuote = ({
  double? ask,
  double? bid,
  int? exchange,
  int? timestamp
});

extension forexQuote on ForexQuote {
  static ForexQuote fromMap(Map<String, dynamic> d) => (
        ask: d['ask'],
        bid: d['bid'],
        exchange: d['exchange'],
        timestamp: d['timestamp']
      );
}

/// ForexLastQuote contains data for the last quote tick for a forex currency pair.
typedef LastForexQuote = ({
  ForexQuote? last,
  String? symbol,
});

extension lastForexQuote on LastForexQuote {
  static LastForexQuote fromMap(Map<String, dynamic> d) => (
        last: d['last'] == null
            ? null
            : forexQuote.fromMap(
                d['last'] as Map<String, dynamic>,
              ),
        symbol: d['symbol']
      );
}

/// RealTimeCurrencyConversion contains data for currency conversions using the latest market conversion rates.
typedef RealTimeCurrencyConversion = ({
  double? converted,
  String? from,
  double? initialAmount,
  ForexQuote? last,
  String? to,
});

extension realTimeCurrencyConversion on RealTimeCurrencyConversion {
  static RealTimeCurrencyConversion fromMap(Map<String, dynamic> d) => (
        converted: d['converted'],
        from: d['from'],
        initialAmount: d['initialAmount'],
        last: d['last'] == null
            ? null
            : forexQuote.fromMap(
                d['last'] as Map<String, dynamic>,
              ),
        to: d['to']
      );
}
