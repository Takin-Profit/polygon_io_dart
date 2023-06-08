// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Contains address data for a ticker detail.
typedef CompanyAddress = ({
  String? address1,
  String? address2,
  String? city,
  String? state,
  String? country,
  String? postalCode,
});

extension companyAddress on CompanyAddress {
  static CompanyAddress fromJson(Map<String, dynamic> json) => (
        address1: json['address1'],
        address2: json['address2'],
        city: json['city'],
        state: json['state'],
        country: json['country'],
        postalCode: json['postal_code'],
      );
}

/// Contains branding data for a ticker detail.
typedef Branding = ({
  String? iconUrl,
  String? logoUrl,
  String? accentColor,
  String? lightColor,
  String? darkColor,
});

extension brandings on Branding {
  static Branding fromJson(Map<String, dynamic> json) => (
        iconUrl: json['icon_url'],
        logoUrl: json['logo_url'],
        accentColor: json['accent_color'],
        lightColor: json['light_color'],
        darkColor: json['dark_color'],
      );
}

/// Contains publisher data for ticker news.
typedef Publisher = ({
  String? faviconUrl,
  String? homepageUrl,
  String? logoUrl,
  String? name,
});

extension publisher on Publisher {
  static Publisher fromJson(Map<String, dynamic> json) => (
        faviconUrl: json['favicon_url'],
        homepageUrl: json['homepage_url'],
        logoUrl: json['logo_url'],
        name: json['name'],
      );
}
