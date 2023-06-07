// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

typedef SipMapping = ({
  String? CTA,
  String? OPRA,
  String? UTP,
});

extension Sip_Mapping on SipMapping {
  static fromMap(Map<String, dynamic> map) {
    return (
      CTA: map['CTA'],
      OPRA: map['OPRA'],
      UTP: map['UTP'],
    );
  }
}

typedef UpdateRule = ({
  bool? updatesHighLow,
  bool? updatesOpenClose,
  bool? updatesVolume,
});

extension Update_Rule on UpdateRule {
  static UpdateRule fromMap(Map<String, dynamic> map) {
    return (
      updatesHighLow: map['updates_high_low'] as bool,
      updatesOpenClose: map['updates_open_close'] as bool,
      updatesVolume: map['updates_volume'] as bool,
    );
  }
}

typedef UpdateRules = ({UpdateRule? consolidated, UpdateRule? marketCenter});

extension Update_Rules on UpdateRules {
  static UpdateRules fromMap(Map<String, dynamic> map) {
    return (
      consolidated: map['consolidated'] == null
          ? null
          : Update_Rule.fromMap(map['consolidated'] as Map<String, dynamic>),
      marketCenter: map['market_center'] == null
          ? null
          : Update_Rule.fromMap(map['market_center'] as Map<String, dynamic>),
    );
  }
}

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

extension Conditions on Condition {
  Condition fromMap(Map<String, dynamic> map) {
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
          : Sip_Mapping.fromMap(map['sip_mapping'] as Map<String, dynamic>),
      type: map['type'],
      updateRules: map['update_rules'] == null
          ? null
          : Update_Rules.fromMap(map['update_rules'] as Map<String, dynamic>),
    );
  }
}
