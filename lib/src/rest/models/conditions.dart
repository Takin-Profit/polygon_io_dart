// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Contains data for a mapping to a symbol for each SIP that has a given condition.
typedef SipMapping = ({
  String? CTA,
  String? OPRA,
  String? UTP,
});

extension sipMapping on SipMapping {
  static SipMapping fromMap(Map<String, dynamic> map) {
    return (
      CTA: map['CTA'],
      OPRA: map['OPRA'],
      UTP: map['UTP'],
    );
  }
}

typedef _UpdateRule = ({
  bool? updatesHighLow,
  bool? updatesOpenClose,
  bool? updatesVolume,
});

_UpdateRule _fromMap(Map<String, dynamic> map) {
  return (
    updatesHighLow: map['updates_high_low'] as bool,
    updatesOpenClose: map['updates_open_close'] as bool,
    updatesVolume: map['updates_volume'] as bool,
  );
}

/// Contains data for aggregation rules on a consolidated (all exchanges) basis.
typedef Consolidated = _UpdateRule;

extension consolidated on Consolidated {
  static Consolidated fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains data for aggregation rules on a per-market-center basis.
typedef MarketCenter = _UpdateRule;

extension marketCenter on MarketCenter {
  static MarketCenter fromMap(Map<String, dynamic> d) => _fromMap(d);
}

/// Contains data for a list of aggregation rules.
typedef UpdateRules = ({
  Consolidated? consolidated,
  MarketCenter? marketCenter
});

extension updateRules on UpdateRules {
  static UpdateRules fromMap(Map<String, dynamic> map) {
    return (
      consolidated: map['consolidated'] == null
          ? null
          : _fromMap(map['consolidated'] as Map<String, dynamic>),
      marketCenter: map['market_center'] == null
          ? null
          : _fromMap(map['market_center'] as Map<String, dynamic>),
    );
  }
}

/// condition contains data for a condition that Polygon.io uses.
typedef Condition = ({
  String? abbreviation,
  String? assetClass,
  List<String>? dataTypes,
  String? description,
  int? exchange,
  int? id,
  bool? legacy,
  String? name,
  SipMapping? sipMapping,
  String? type,
  UpdateRules? updateRules,
});

extension condition on Condition {
  static Condition fromMap(Map<String, dynamic> map) {
    return (
      abbreviation: map['abbreviation'],
      assetClass: map['asset_class'],
      dataTypes: map['data_types'] != null
          ? List<String>.of(map['data_types'] as List<String>)
          : null,
      description: map['description'],
      exchange: map['exchange'],
      id: map['id'],
      legacy: map['legacy'],
      name: map['name'],
      sipMapping: map['sip_mapping'] == null
          ? null
          : sipMapping.fromMap(map['sip_mapping'] as Map<String, dynamic>),
      type: map['type'],
      updateRules: map['update_rules'] == null
          ? null
          : updateRules.fromMap(map['update_rules'] as Map<String, dynamic>),
    );
  }
}
