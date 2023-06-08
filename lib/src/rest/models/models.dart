// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'aggs.dart';

export 'aggs.dart'
    show Agg, GroupedDailyAgg, DailyOpenCloseAgg, PreviousCloseAgg;

typedef _AGG = Agg;
typedef _GroupedDailyAgg = GroupedDailyAgg;
typedef _DailyOpenCloseAgg = DailyOpenCloseAgg;
typedef _PreviousCloseAgg = PreviousCloseAgg;

/// Contains methods for parsing each typedef from json.
sealed class parse {
  /// Parses [Agg] type from json.
  static _AGG Agg(Map<String, dynamic> json) => agg.fromMap(json);
  static _GroupedDailyAgg GroupedDailyAgg(Map<String, dynamic> json) =>
      groupedDailyAgg.fromMap(json);
  static _DailyOpenCloseAgg DailyOpenCloseAgg(Map<String, dynamic> json) =>
      dailyOpenCloseAgg.fromMap(json);
  static _PreviousCloseAgg PreviousCloseAgg(Map<String, dynamic> json) =>
      previousCloseAgg.fromMap(json);
}
