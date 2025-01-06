import 'dart:convert';

import 'package:frappe_dart/src/models/desktop_page_response/onboarding_item.dart';

class Onboardings {
  Onboardings({this.items});

  factory Onboardings.fromMap(Map<String, dynamic> data) => Onboardings(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => OnboardingItem.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Onboardings].
  factory Onboardings.fromJson(String data) {
    return Onboardings.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<OnboardingItem>? items;

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Converts [Onboardings] to a JSON string.
  String toJson() => json.encode(toMap());
}
