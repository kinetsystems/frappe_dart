import 'dart:convert';

import 'package:frappe_dart/src/models/desktop_page_response/number_card_item.dart';

class NumberCards {
  NumberCards({this.items});

  factory NumberCards.fromMap(Map<String, dynamic> data) => NumberCards(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => NumberCardItem.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NumberCards].
  factory NumberCards.fromJson(String data) {
    return NumberCards.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<NumberCardItem>? items;

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Converts [NumberCards] to a JSON string.
  String toJson() => json.encode(toMap());
}
