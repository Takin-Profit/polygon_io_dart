// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Exchange contains data for a condition that Polygon.io uses.
typedef Exchange = ({
  String? acronym,
  String? assetClass,
  int? id,
  String? locale,
  String? mic,
  String? name,
  String? operatingMic,
  String? participantId,
  String? type,
  String? url,
});

extension Exchanges on Exchange {
  static Exchange fromMap(Map<String, dynamic> map) {
    return (
      acronym: map['acronym'],
      assetClass: map['asset_class'],
      id: map['id'],
      locale: map['locale'],
      mic: map['mic'],
      name: map['name'],
      operatingMic: map['operating_mic'],
      participantId: map['participant_id'],
      type: map['type'],
      url: map['url'],
    );
  }
}
