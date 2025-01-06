import 'dart:convert';

import 'package:frappe_dart/src/models/desktop_page_response/card_item.dart';

class Cards {
  Cards({this.items});

  factory Cards.fromMap(Map<String, dynamic> data) => Cards(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => CardItem.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Cards].
  factory Cards.fromJson(String data) {
    return Cards.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<CardItem>? items;

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Converts [Cards] to a JSON string.
  String toJson() => json.encode(toMap());
}
