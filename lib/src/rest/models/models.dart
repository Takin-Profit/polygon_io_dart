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
import 'markets.dart';
import 'quotes.dart';
import 'snapshot.dart';
import 'splits.dart';
import 'summaries.dart';
import 'tickers.dart';
import 'trades.dart';

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
export 'markets.dart'
    show
        MarketCurrencies,
        MarketExchanges,
        MarketIndices,
        MarketHoliday,
        MarketStatus;
export 'quotes.dart'
    show
        Quote,
        LastQuote,
        ForexQuote,
        LastForexQuote,
        RealTimeCurrencyConversion;
export 'request.dart';
export 'snapshot.dart'
    show
        MinuteSnapshot,
        IndicesSession,
        IndicesSnapshot,
        TickerSnapshot,
        DayOptionContractSnapshot,
        OptionDetails,
        LastQuoteOptionContractSnapshot,
        LastTradeOptionContractSnapshot,
        Greeks,
        UnderlyingAsset,
        OptionContractSnapshot,
        OrderBookQuote,
        SnapshotTickerFullBook,
        UniversalSnapshotSession,
        UniversalSnapshotLastQuote,
        UniversalSnapshotLastTrade,
        UniversalSnapshotUnderlyingAsset,
        UniversalSnapshotDetails,
        UniversalSnapshot;
export 'splits.dart' show Split;
export 'summaries.dart' show Session, Options, SummaryResult;
export 'tickers.dart'
    show
        CompanyAddress,
        Branding,
        Publisher,
        Ticker,
        TickerDetails,
        TickerNews,
        TickerTypes,
        TickerChange,
        TickerChangeEvent,
        TickerChangeResults;
export 'trades.dart' show Trade, LastTrade, CryptoTrade;

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
typedef _MarketCurrencies = MarketCurrencies;
typedef _MarketExchanges = MarketExchanges;
typedef _MarketIndices = MarketIndices;
typedef _MarketHoliday = MarketHoliday;
typedef _MarketStatus = MarketStatus;
typedef _Quote = Quote;
typedef _LastQuote = LastQuote;
typedef _ForexQuote = ForexQuote;
typedef _LastForexQuote = LastForexQuote;
typedef _RealTimeCurrencyConversion = RealTimeCurrencyConversion;
typedef _MinuteSnapshot = MinuteSnapshot;
typedef _IndicesSession = IndicesSession;
typedef _IndicesSnapshot = IndicesSnapshot;
typedef _TickerSnapshot = TickerSnapshot;
typedef _DayOptionContractSnapshot = DayOptionContractSnapshot;
typedef _OptionDetails = OptionDetails;
typedef _LastQuoteOptionContractSnapshot = LastQuoteOptionContractSnapshot;
typedef _LastTradeOptionContractSnapshot = LastTradeOptionContractSnapshot;
typedef _Greeks = Greeks;
typedef _UnderlyingAsset = UnderlyingAsset;
typedef _OptionContractSnapshot = OptionContractSnapshot;
typedef _OrderBookQuote = OrderBookQuote;
typedef _SnapshotTickerFullBook = SnapshotTickerFullBook;
typedef _UniversalSnapshotSession = UniversalSnapshotSession;
typedef _UniversalSnapshotLastQuote = UniversalSnapshotLastQuote;
typedef _UniversalSnapshotLastTrade = UniversalSnapshotLastTrade;
typedef _UniversalSnapshotUnderlyingAsset = UniversalSnapshotUnderlyingAsset;
typedef _UniversalSnapshotDetails = UniversalSnapshotDetails;
typedef _UniversalSnapshot = UniversalSnapshot;
typedef _Split = Split;
typedef _Session = Session;
typedef _Options = Options;
typedef _SummaryResult = SummaryResult;
typedef _CompanyAddress = CompanyAddress;
typedef _Branding = Branding;
typedef _Publisher = Publisher;
typedef _TickerDetails = TickerDetails;
typedef _TickerNews = TickerNews;
typedef _TickerTypes = TickerTypes;
typedef _TickerChange = TickerChange;
typedef _TickerChangeEvent = TickerChangeEvent;
typedef _TickerChangeResults = TickerChangeResults;
typedef _Ticker = Ticker;
typedef _Trade = Trade;
typedef _LastTrade = LastTrade;
typedef _CryptoTrade = CryptoTrade;

/// Contains methods for parsing each typedef from json.
sealed class parse {
  static _CryptoTrade CryptoTrade(Map<String, String> json) =>
      cryptoTrade.fromJson(json);
  static _LastTrade LastTrade(Map<String, String> json) =>
      lastTrade.fromJson(json);
  static _Trade Trade(Map<String, dynamic> json) => trade.fromJson(json);
  static _TickerChangeResults TickerChangeResults(Map<String, dynamic> json) =>
      tickerChangeResults.fromJson(json);
  static _TickerChangeEvent TickerChangeEvent(Map<String, dynamic> json) =>
      tickerChangeEvent.fromJson(json);
  static _TickerChange TickerChange(Map<String, dynamic> json) =>
      tickerChange.fromJson(json);
  static _TickerTypes TickerTypes(Map<String, dynamic> json) =>
      tickerType.fromJson(json);
  static _TickerNews TickerNews(Map<String, dynamic> json) =>
      tickerNews.fromJson(json);
  static _TickerDetails TickerDetails(Map<String, dynamic> json) =>
      tickerDetails.fromJson(json);
  static _Publisher Publisher(Map<String, dynamic> json) =>
      publisher.fromJson(json);
  static _CompanyAddress CompanyAddress(
    Map<String, dynamic> json,
  ) =>
      companyAddress.fromJson(json);
  static _Branding Branding(Map<String, dynamic> json) =>
      brandings.fromJson(json);
  static _Ticker Ticker(
    Map<String, dynamic> json,
  ) =>
      ticker.fromJson(json);
  static _SummaryResult SummaryResult(
    Map<String, dynamic> json,
  ) =>
      summaryResults.fromJson(json);
  static _Options Options(
    Map<String, dynamic> json,
  ) =>
      options.fromJson(json);
  static _Session Session(
    Map<String, dynamic> json,
  ) =>
      session.fromJson(json);
  static _Split Split(
    Map<String, dynamic> json,
  ) =>
      split.fromJson(json);
  static _UniversalSnapshot UniversalSnapshot(
    Map<String, dynamic> json,
  ) =>
      universalSnapshot.fromJson(json);
  static _UniversalSnapshotDetails UniversalSnapshotDetails(
    Map<String, dynamic> json,
  ) =>
      universalSnapshotDetails.fromJson(json);
  static _UniversalSnapshotUnderlyingAsset UniversalSnapshotUnderlyingAsset(
    Map<String, dynamic> json,
  ) =>
      universalSnapshotUnderlyingAsset.fromJson(json);
  static _UniversalSnapshotLastTrade UniversalSnapshotLastTrade(
    Map<String, String> json,
  ) =>
      universalSnapshotLastTrade.fromJson(json);
  static _UniversalSnapshotLastQuote UniversalSnapshotLastQuote(
    Map<String, String> json,
  ) =>
      universalSnapshotLastQuote.fromJson(json);
  static _UniversalSnapshotSession UniversalSnapshotSession(
    Map<String, String> json,
  ) =>
      universalSnapshotSession.fromJson(json);
  static _SnapshotTickerFullBook SnapshotTickerFullBook(
    Map<String, dynamic> json,
  ) =>
      snapShotTickerFullBook.fromJson(json);
  static _OrderBookQuote OrderBookQuote(Map<String, dynamic> json) =>
      orderBookQuote.fromJson(json);
  static _OptionContractSnapshot OptionContractSnapshot(
    Map<String, dynamic> json,
  ) =>
      optionContractSnapshot.fromJson(json);
  static _UnderlyingAsset UnderlyingAsset(Map<String, dynamic> json) =>
      underlyingAsset.fromJson(json);
  static _Greeks Greeks(Map<String, dynamic> json) => greeks.fromJson(json);
  static _LastTradeOptionContractSnapshot LastTradeOptionContractSnapshot(
    Map<String, dynamic> json,
  ) =>
      lastTradeOptionContractSnapshot.fromJson(json);
  static _LastQuoteOptionContractSnapshot LastQuoteOptionContractSnapshot(
    Map<String, dynamic> json,
  ) =>
      lastQuoteOptionContractSnapshot.fromJson(json);
  static _OptionDetails OptionDetails(Map<String, dynamic> json) =>
      optionDetails.fromJson(json);
  static _DayOptionContractSnapshot DayOptionContractSnapshot(
    Map<String, dynamic> json,
  ) =>
      dayOptionContractSnapshot.fromJson(json);
  static _TickerSnapshot TickerSnapshot(Map<String, dynamic> json) =>
      tickerSnapshot.fromJson(json);
  static _IndicesSnapshot IndicesSnapshot(Map<String, dynamic> json) =>
      indicesSnapshot.fromJson(json);
  static _IndicesSession IndicesSession(Map<String, dynamic> json) =>
      indicesSession.fromJson(json);
  static _MinuteSnapshot MinuteSnapshot(Map<String, dynamic> json) =>
      minuteSnapshot.fromJson(json);
  static _RealTimeCurrencyConversion RealTimeCurrencyConversion(
    Map<String, dynamic> json,
  ) =>
      realTimeCurrencyConversion.fromMap(json);
  static _LastForexQuote LastForexQuote(Map<String, dynamic> json) =>
      lastForexQuote.fromMap(json);
  static _ForexQuote ForexQuote(Map<String, dynamic> json) =>
      forexQuote.fromMap(json);
  static _LastQuote LastQuote(Map<String, dynamic> json) =>
      lastQuote.fromMap(json);
  static _Quote Quote(Map<String, dynamic> json) => quotes.fromMap(json);
  static _MarketStatus MarketStatus(Map<String, dynamic> json) =>
      marketStatus.fromMap(json);
  static _MarketHoliday MarketHoliday(Map<String, dynamic> json) =>
      marketHoliday.fromMap(json);
  static _MarketIndices MarketIndices(Map<String, dynamic> json) =>
      marketIndices.fromMap(json);
  static _MarketExchanges MarketExchanges(Map<String, dynamic> json) =>
      marketExchanges.fromMap(json);
  static _MarketCurrencies MarketCurrencies(Map<String, dynamic> json) =>
      marketCurrencies.fromMap(json);
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
