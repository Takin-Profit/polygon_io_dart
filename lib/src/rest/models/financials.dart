// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

typedef _Data = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});
_Data _fromMap(Map<String, dynamic> d) => (
      formula: d['formula'],
      label: d['label'],
      order: d['order'],
      unit: d['unit'],
      value: d['value'],
      xpath: d['xpath']
    );

/// An individual financial data point.
typedef DataPoint = _Data;

extension Data_Point on DataPoint {
  static DataPoint fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains exchange gains losses data for a cash flow statement.
typedef ExchangeGainsLosses = _Data;

extension Exchange_Gains_Losses on ExchangeGainsLosses {
  static ExchangeGainsLosses fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef NetCashFlow = _Data;

extension Net_Cash_Flow on NetCashFlow {
  static NetCashFlow fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath']
      );
}

typedef NetCashFlowFromFinancingActivities = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension NetCashFlow_FromFinancing_Activities
    on NetCashFlowFromFinancingActivities {
  static NetCashFlowFromFinancingActivities fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath']
      );
}

typedef CashFlowStatement = ({
  ExchangeGainsLosses? exchangeGainsLosses,
  NetCashFlow? netCashFlow,
  NetCashFlowFromFinancingActivities? netCashFlowFromFinancingActivities,
});

extension CashFlow_Statement on CashFlowStatement {
  static CashFlowStatement fromMap(Map<String, dynamic> d) => (
        exchangeGainsLosses: d['exchange_gains_losses'] != null
            ? Exchange_Gains_Losses.fromMap(
                d['exchange_gains_losses'] as Map<String, dynamic>,
              )
            : null,
        netCashFlow: d['net_cash_flow'] != null
            ? Net_Cash_Flow.fromMap(
                d['net_cash_flow'] as Map<String, dynamic>,
              )
            : null,
        netCashFlowFromFinancingActivities:
            d['net_cash_flow_from_financing_activities'] != null
                ? NetCashFlow_FromFinancing_Activities.fromMap(
                    d['net_cash_flow_from_financing_activities']
                        as Map<String, dynamic>,
                  )
                : null
      );
}

typedef ComprehensiveIncomeLoss = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension Comprehensive_IncomeLoss on ComprehensiveIncomeLoss {
  static ComprehensiveIncomeLoss fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef ComprehensiveIncomeLossAttributableToParent = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension ComprehensiveIncomeLoss_AttributableToParent
    on ComprehensiveIncomeLossAttributableToParent {
  static ComprehensiveIncomeLossAttributableToParent fromMap(
          Map<String, dynamic> d) =>
      (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef OtherComprehensiveIncomeLoss = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension Other_Comprehensive_IncomeLoss on OtherComprehensiveIncomeLoss {
  static OtherComprehensiveIncomeLoss fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef ComprehensiveIncome = ({
  ComprehensiveIncomeLoss? comprehensiveIncomeLoss,
  ComprehensiveIncomeLossAttributableToParent? comprehensiveIncomeLossAttributableToParent,
  OtherComprehensiveIncomeLoss? otherComprehensiveIncomeLoss
});

extension Comprehensive_Income on ComprehensiveIncome {
  static ComprehensiveIncome fromMap(Map<String, dynamic> d) => (
        comprehensiveIncomeLoss: d['comprehensive_income_loss'] != null
            ? Comprehensive_IncomeLoss.fromMap(
                d['comprehensive_income_loss'] as Map<String, dynamic>,
              )
            : null,
        comprehensiveIncomeLossAttributableToParent:
            d['comprehensive_income_loss_attributable_to_parent'] != null
                ? ComprehensiveIncomeLoss_AttributableToParent.fromMap(
                    d['comprehensive_income_loss_attributable_to_parent']
                        as Map<String, dynamic>,
                  )
                : null,
        otherComprehensiveIncomeLoss: d['other_comprehensive_income_loss'] !=
                null
            ? Other_Comprehensive_IncomeLoss.fromMap(
                d['other_comprehensive_income_loss'] as Map<String, dynamic>,
              )
            : null
      );
}

typedef BasicEarningsPerShare = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension BasicEarnings_PerShare on BasicEarningsPerShare {
  static BasicEarningsPerShare fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef CostOfRevenue = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension CostOf_Revenue on CostOfRevenue {
  static CostOfRevenue fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef GrossProfit = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension Gross_Profit on GrossProfit {
  static GrossProfit fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef OperatingExpenses = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension Operating_Expenses on OperatingExpenses {
  static OperatingExpenses fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef Revenues = ({
  String? formula,
  String? label,
  int? order,
  String? unit,
  double? value,
  String? xpath,
});

extension Revenue on Revenues {
  static Revenues fromMap(Map<String, dynamic> d) => (
        formula: d['formula'],
        label: d['label'],
        order: d['order'],
        unit: d['unit'],
        value: d['value'],
        xpath: d['xpath'],
      );
}

typedef IncomeStatement = ({
  BasicEarningsPerShare? basicEarningsPerShare,
  CostOfRevenue? costOfRevenue,
  GrossProfit? grossProfit,
  OperatingExpenses? operatingExpenses,
  Revenues? revenues,
});

extension Income_Statement on IncomeStatement {
  static IncomeStatement fromMap(Map<String, dynamic> d) => (
        basicEarningsPerShare: d['basic_earnings_per_share'] != null
            ? BasicEarnings_PerShare.fromMap(
                d['basic_earnings_per_share'] as Map<String, dynamic>,
              )
            : null,
        costOfRevenue: d['cost_of_revenue'] != null
            ? CostOf_Revenue.fromMap(
                d['cost_of_revenue'] as Map<String, dynamic>,
              )
            : null,
        grossProfit: d['gross_profit'] != null
            ? Gross_Profit.fromMap(
                d['gross_profit'] as Map<String, dynamic>,
              )
            : null,
        operatingExpenses: d['operating_expenses'] != null
            ? Operating_Expenses.fromMap(
                d['operating_expenses'] as Map<String, dynamic>,
              )
            : null,
        revenues: d['revenues'] != null
            ? Revenue.fromMap(
                d['revenues'] as Map<String, dynamic>,
              )
            : null,
      );
}

typedef Financials = ({
  Map<String, DataPoint>? balanceSheet,
  CashFlowStatement? cashFlowStatement,
  ComprehensiveIncome? comprehensiveIncome,
  IncomeStatement? incomeStatement,
});

extension Financial on Financials {
  static Financials fromMap(Map<String, dynamic> d) => (
        balanceSheet: d['balance_sheet'] != null
            ? (d['balance_sheet'] as Map<String, dynamic>).map(
                (key, value) => MapEntry(
                  key,
                  Data_Point.fromMap(
                    value as Map<String, dynamic>,
                  ),
                ),
              )
            : null,
        cashFlowStatement: d['cash_flow_statement'] != null
            ? CashFlow_Statement.fromMap(
                d['cash_flow_statement'] as Map<String, dynamic>,
              )
            : null,
        comprehensiveIncome: d['comprehensive_income'] != null
            ? Comprehensive_Income.fromMap(
                d['comprehensive_income'] as Map<String, dynamic>,
              )
            : null,
        incomeStatement: d['income_statement'] != null
            ? Income_Statement.fromMap(
                d['income_statement'] as Map<String, dynamic>,
              )
            : null
      );
}

typedef StockFinancial = ({
  String? cik,
  String? companyName,
  String? endDate,
  String? filingDate,
  Financials? financials,
  String? fiscalPeriod,
  String? fiscalYear,
  String? sourceFilingFileUrl,
  String? sourceFilingUrl,
  String? startDate,
});

extension Stock_Financial on StockFinancial {
  static StockFinancial fromMap(Map<String, dynamic> d) => (
        cik: d['cik'],
        companyName: d['company_name'],
        endDate: d['end_date'],
        filingDate: d['filing_date'],
        financials: d['financials'] != null
            ? Financial.fromMap(
                d['financials'] as Map<String, dynamic>,
              )
            : null,
        fiscalPeriod: d['fiscal_period'],
        fiscalYear: d['fiscal_year'],
        sourceFilingFileUrl: d['source_filing_file_url'],
        sourceFilingUrl: d['source_filing_url'],
        startDate: d['start_date'],
      );
}
