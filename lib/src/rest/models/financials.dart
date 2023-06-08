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

extension dataPoint on DataPoint {
  static DataPoint fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains exchange gains losses data for a cash flow statement.
typedef ExchangeGainsLosses = _Data;

extension exchangeGainsLosses on ExchangeGainsLosses {
  static ExchangeGainsLosses fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains net cash flow data for a cash flow statement.
typedef NetCashFlow = _Data;

extension netCashFlow on NetCashFlow {
  static NetCashFlow fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains net cash flow from financing activities data for a cash flow statement.
typedef NetCashFlowFromFinancingActivities = _Data;

extension netCashFlowFromFinancingActivities
    on NetCashFlowFromFinancingActivities {
  static NetCashFlowFromFinancingActivities fromMap(Map<String, dynamic> d) =>
      _fromMap(d);
}

/// Contains cash flow statement data.
typedef CashFlowStatement = ({
  ExchangeGainsLosses? exchangeGainsLosses,
  NetCashFlow? netCashFlow,
  NetCashFlowFromFinancingActivities? netCashFlowFromFinancingActivities,
});

extension cashFlowStatement on CashFlowStatement {
  static CashFlowStatement fromMap(Map<String, dynamic> d) => (
        exchangeGainsLosses: d['exchange_gains_losses'] != null
            ? exchangeGainsLosses.fromMap(
                d['exchange_gains_losses'] as Map<String, dynamic>,
              )
            : null,
        netCashFlow: d['net_cash_flow'] != null
            ? netCashFlow.fromMap(
                d['net_cash_flow'] as Map<String, dynamic>,
              )
            : null,
        netCashFlowFromFinancingActivities:
            d['net_cash_flow_from_financing_activities'] != null
                ? netCashFlowFromFinancingActivities.fromMap(
                    d['net_cash_flow_from_financing_activities']
                        as Map<String, dynamic>,
                  )
                : null
      );
}

/// Contains comprehensive income loss data for comprehensive income.
typedef ComprehensiveIncomeLoss = _Data;

extension comprehensiveIncomeLoss on ComprehensiveIncomeLoss {
  static ComprehensiveIncomeLoss fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains comprehensive income loss attributable to parent data for comprehensive income.
typedef ComprehensiveIncomeLossAttributableToParent = _Data;

extension comprehensiveIncomeLossAttributableToParent
    on ComprehensiveIncomeLossAttributableToParent {
  static ComprehensiveIncomeLossAttributableToParent fromMap(
    Map<String, dynamic> d,
  ) =>
      _fromMap(d);
}

/// Contains other comprehensive income loss data for comprehensive income.
typedef OtherComprehensiveIncomeLoss = _Data;

extension otherComprehensiveIncomeLoss on OtherComprehensiveIncomeLoss {
  static OtherComprehensiveIncomeLoss fromMap(Map<String, dynamic> d) =>
      _fromMap(d);
}

/// Contains comprehensive income data.
typedef ComprehensiveIncome = ({
  ComprehensiveIncomeLoss? comprehensiveIncomeLoss,
  ComprehensiveIncomeLossAttributableToParent? comprehensiveIncomeLossAttributableToParent,
  OtherComprehensiveIncomeLoss? otherComprehensiveIncomeLoss
});

extension comprehensiveIncome on ComprehensiveIncome {
  static ComprehensiveIncome fromMap(Map<String, dynamic> d) => (
        comprehensiveIncomeLoss: d['comprehensive_income_loss'] != null
            ? comprehensiveIncomeLoss.fromMap(
                d['comprehensive_income_loss'] as Map<String, dynamic>,
              )
            : null,
        comprehensiveIncomeLossAttributableToParent:
            d['comprehensive_income_loss_attributable_to_parent'] != null
                ? comprehensiveIncomeLossAttributableToParent.fromMap(
                    d['comprehensive_income_loss_attributable_to_parent']
                        as Map<String, dynamic>,
                  )
                : null,
        otherComprehensiveIncomeLoss: d['other_comprehensive_income_loss'] !=
                null
            ? otherComprehensiveIncomeLoss.fromMap(
                d['other_comprehensive_income_loss'] as Map<String, dynamic>,
              )
            : null
      );
}

/// Contains basic earning per share data for an income statement.
typedef BasicEarningsPerShare = _Data;

extension basicEarningsPerShare on BasicEarningsPerShare {
  static BasicEarningsPerShare fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains cost of revenue data for an income statement.
typedef CostOfRevenue = _Data;

extension costOfRevenue on CostOfRevenue {
  static CostOfRevenue fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains gross profit data for an income statement.
typedef GrossProfit = _Data;

extension grossProfit on GrossProfit {
  static GrossProfit fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains operating expenses data for an income statement.
typedef OperatingExpenses = _Data;

extension operatingExpenses on OperatingExpenses {
  static OperatingExpenses fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains revenues data for an income statement.
typedef Revenues = _Data;

extension revenue on Revenues {
  static Revenues fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains income statement data.
typedef IncomeStatement = ({
  BasicEarningsPerShare? basicEarningsPerShare,
  CostOfRevenue? costOfRevenue,
  GrossProfit? grossProfit,
  OperatingExpenses? operatingExpenses,
  Revenues? revenues,
});

extension incomeStatement on IncomeStatement {
  static IncomeStatement fromMap(Map<String, dynamic> d) => (
        basicEarningsPerShare: d['basic_earnings_per_share'] != null
            ? basicEarningsPerShare.fromMap(
                d['basic_earnings_per_share'] as Map<String, dynamic>,
              )
            : null,
        costOfRevenue: d['cost_of_revenue'] != null
            ? costOfRevenue.fromMap(
                d['cost_of_revenue'] as Map<String, dynamic>,
              )
            : null,
        grossProfit: d['gross_profit'] != null
            ? grossProfit.fromMap(
                d['gross_profit'] as Map<String, dynamic>,
              )
            : null,
        operatingExpenses: d['operating_expenses'] != null
            ? operatingExpenses.fromMap(
                d['operating_expenses'] as Map<String, dynamic>,
              )
            : null,
        revenues: d['revenues'] != null
            ? revenue.fromMap(
                d['revenues'] as Map<String, dynamic>,
              )
            : null,
      );
}

/// Contains financial data.
typedef Financials = ({
  Map<String, DataPoint>? balanceSheet,
  CashFlowStatement? cashFlowStatement,
  ComprehensiveIncome? comprehensiveIncome,
  IncomeStatement? incomeStatement,
});

extension financial on Financials {
  static Financials fromMap(Map<String, dynamic> d) => (
        balanceSheet: d['balance_sheet'] != null
            ? (d['balance_sheet'] as Map<String, dynamic>).map(
                (key, value) => MapEntry(
                  key,
                  dataPoint.fromMap(
                    value as Map<String, dynamic>,
                  ),
                ),
              )
            : null,
        cashFlowStatement: d['cash_flow_statement'] != null
            ? cashFlowStatement.fromMap(
                d['cash_flow_statement'] as Map<String, dynamic>,
              )
            : null,
        comprehensiveIncome: d['comprehensive_income'] != null
            ? comprehensiveIncome.fromMap(
                d['comprehensive_income'] as Map<String, dynamic>,
              )
            : null,
        incomeStatement: d['income_statement'] != null
            ? incomeStatement.fromMap(
                d['income_statement'] as Map<String, dynamic>,
              )
            : null
      );
}

/// StockFinancial contains historical financial data for a stock ticker.
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

extension stockFinancial on StockFinancial {
  static StockFinancial fromMap(Map<String, dynamic> d) => (
        cik: d['cik'],
        companyName: d['company_name'],
        endDate: d['end_date'],
        filingDate: d['filing_date'],
        financials: d['financials'] != null
            ? financial.fromMap(
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
