// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'aggs.dart';
import 'conditions.dart';
import 'contracts.dart';
import 'dividends.dart';
import 'exchanges.dart';
import 'financials.dart';
import 'indicators.dart';

export 'aggs.dart'
    show Agg, GroupedDailyAgg, DailyOpenCloseAgg, PreviousCloseAgg;
export 'common.dart';
export 'conditions.dart'
    show SipMapping, Consolidated, MarketCenter, UpdateRules, Condition;
export 'contracts.dart' show Underlying, OptionsContract;
export 'dividends.dart' show Dividend;
export 'exchanges.dart' show Exchange;
export 'financials.dart'
    show
        DataPoint,
        ExchangeGainsLosses,
        NetCashFlow,
        NetCashFlowFromFinancingActivities,
        CashFlowStatement,
        ComprehensiveIncomeLoss,
        ComprehensiveIncomeLossAttributableToParent,
        OtherComprehensiveIncomeLoss,
        ComprehensiveIncome,
        BasicEarningsPerShare,
        CostOfRevenue,
        GrossProfit,
        OperatingExpenses,
        Revenues,
        IncomeStatement,
        Financials,
        StockFinancial;
export 'indicators.dart'
    show
        IndicatorValue,
        MACDIndicatorValue,
        IndicatorUnderlying,
        SingleIndicatorResults,
        SMAIndicatorResults,
        EMAIndicatorResults,
        RSIIndicatorResults,
        MACDIndicatorResults;

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
typedef _Dividend = Dividend;
typedef _Exchange = Exchange;
typedef _DataPoint = DataPoint;
typedef _ExchangeGainsLosses = ExchangeGainsLosses;
typedef _NetCashFlow = NetCashFlow;
typedef _NetCashFlowFromFinancingActivities
    = NetCashFlowFromFinancingActivities;
typedef _CashFlowStatement = CashFlowStatement;
typedef _ComprehensiveIncomeLoss = ComprehensiveIncomeLoss;
typedef _ComprehensiveIncomeLossAttributableToParent
    = ComprehensiveIncomeLossAttributableToParent;
typedef _OtherComprehensiveIncomeLoss = OtherComprehensiveIncomeLoss;
typedef _ComprehensiveIncome = ComprehensiveIncome;
typedef _BasicEarningsPerShare = BasicEarningsPerShare;
typedef _CostOfRevenue = CostOfRevenue;
typedef _GrossProfit = GrossProfit;
typedef _OperatingExpenses = OperatingExpenses;
typedef _Revenues = Revenues;
typedef _IncomeStatement = IncomeStatement;
typedef _Financials = Financials;
typedef _StockFinancial = StockFinancial;
typedef _IndicatorValue = IndicatorValue;
typedef _MACDIndicatorValue = MACDIndicatorValue;
typedef _IndicatorUnderlying = IndicatorUnderlying;
typedef _SingleIndicatorResults = SingleIndicatorResults;
typedef _SMAIndicatorResults = SMAIndicatorResults;
typedef _EMAIndicatorResults = EMAIndicatorResults;
typedef _RSIIndicatorResults = RSIIndicatorResults;
typedef _MACDIndicatorResults = MACDIndicatorResults;

/// Contains methods for parsing each typedef from json.
sealed class parse {
  static _MACDIndicatorResults MACDIndicatorResults(
    Map<String, dynamic> json,
  ) =>
      macdIndicatorResults.fromMap(json);
  static _RSIIndicatorResults RSIIndicatorResults(Map<String, dynamic> json) =>
      rsiIndicatorResults.fromMap(json);
  static _EMAIndicatorResults EMAIndicatorResults(Map<String, dynamic> json) =>
      emaIndicatorResults.fromMap(json);
  static _SMAIndicatorResults SMAIndicatorResults(Map<String, dynamic> json) =>
      smaIndicatorResults.fromMap(json);
  static _SingleIndicatorResults SingleIndicatorResults(
    Map<String, dynamic> json,
  ) =>
      singleIndicatorResult.fromMap(json);
  static _IndicatorUnderlying IndicatorUnderlying(Map<String, dynamic> json) =>
      indicatorUnderlying.fromMap(json);
  static _MACDIndicatorValue MACDIndicatorValue(Map<String, dynamic> json) =>
      macdIndicatorValue.fromMap(json);
  static _IndicatorValue IndicatorValue(Map<String, dynamic> json) =>
      indicatorValue.fromMap(json);
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
  static _Dividend Dividend(Map<String, dynamic> json) =>
      dividends.fromMap(json);
  static _Exchange Exchange(Map<String, dynamic> json) =>
      exchange.fromMap(json);
  static _DataPoint DataPoint(Map<String, dynamic> json) =>
      dataPoint.fromMap(json);
  static _ExchangeGainsLosses ExchangeGainsLosses(Map<String, dynamic> json) =>
      exchangeGainsLosses.fromMap(json);
  static _NetCashFlow NetCashFlow(Map<String, dynamic> json) =>
      netCashFlow.fromMap(json);
  static _NetCashFlowFromFinancingActivities NetCashFlowFromFinancingActivities(
    Map<String, dynamic> json,
  ) =>
      netCashFlowFromFinancingActivities.fromMap(json);
  static _CashFlowStatement CashFlowStatement(Map<String, dynamic> json) =>
      cashFlowStatement.fromMap(json);
  static _ComprehensiveIncomeLoss ComprehensiveIncomeLoss(
    Map<String, dynamic> json,
  ) =>
      comprehensiveIncomeLoss.fromMap(json);
  static _ComprehensiveIncomeLossAttributableToParent
      ComprehensiveIncomeLossAttributableToParent(Map<String, dynamic> json) =>
          comprehensiveIncomeLossAttributableToParent.fromMap(json);
  static _OtherComprehensiveIncomeLoss OtherComprehensiveIncomeLoss(
    Map<String, dynamic> json,
  ) =>
      otherComprehensiveIncomeLoss.fromMap(json);
  static _ComprehensiveIncome ComprehensiveIncome(Map<String, dynamic> json) =>
      comprehensiveIncome.fromMap(json);
  static _BasicEarningsPerShare BasicEarningsPerShare(
    Map<String, dynamic> json,
  ) =>
      basicEarningsPerShare.fromMap(json);
  static _CostOfRevenue CostOfRevenue(Map<String, dynamic> json) =>
      costOfRevenue.fromMap(json);
  static _GrossProfit GrossProfit(Map<String, dynamic> json) =>
      grossProfit.fromMap(json);
  static _OperatingExpenses OperatingExpenses(Map<String, dynamic> json) =>
      operatingExpenses.fromMap(json);
  static _Revenues Revenues(Map<String, dynamic> json) => revenue.fromMap(json);
  static _IncomeStatement IncomeStatement(Map<String, dynamic> json) =>
      incomeStatement.fromMap(json);
  static _Financials Financials(Map<String, dynamic> json) =>
      financial.fromMap(json);
  static _StockFinancial StockFinancial(Map<String, dynamic> json) =>
      stockFinancial.fromMap(json);
}
