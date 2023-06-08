// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'aggs.dart';
import 'conditions.dart';
import 'contracts.dart';

export 'aggs.dart'
    show Agg, GroupedDailyAgg, DailyOpenCloseAgg, PreviousCloseAgg;
export 'common.dart';
export 'conditions.dart'
    show SipMapping, Consolidated, MarketCenter, UpdateRules, Condition;
export 'contracts.dart' show Underlying, OptionsContract;

typedef _AGG = Agg;
typedef _GroupedDailyAgg = GroupedDailyAgg;
typedef _DailyOpenCloseAgg = DailyOpenCloseAgg;
typedef _PreviousCloseAgg = PreviousCloseAgg;
typedef _SipMapping = SipMapping;
typedef _Consolidated = Consolidated;
typedef _MarketCenter = MarketCenter;
typedef _UpdateRules = UpdateRules;
typedef _Condition = Condition;
typedef _Underlying = Underlying;
typedef _OptionsContract = OptionsContract;

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
  static _SipMapping SipMapping(Map<String, dynamic> json) =>
      sipMapping.fromMap(json);
  static _Consolidated Consolidated(Map<String, dynamic> json) =>
      consolidated.fromMap(json);
  static _MarketCenter MarketCenter(Map<String, dynamic> json) =>
      marketCenter.fromMap(json);
  static _UpdateRules UpdateRules(Map<String, dynamic> json) =>
      updateRules.fromMap(json);
  static _Condition Condition(Map<String, dynamic> json) =>
      condition.fromMap(json);
  static _Underlying Underlying(Map<String, dynamic> json) =>
      underlying.fromMap(json);
  static _OptionsContract OptionsContract(Map<String, dynamic> json) =>
      optionsContract.fromMap(json);
}
