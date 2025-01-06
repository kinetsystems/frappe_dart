import 'dart:convert';

class CustomBlocks {
  CustomBlocks({this.items});

  factory CustomBlocks.fromMap(Map<String, dynamic> data) => CustomBlocks(
        items: data['items'] as List<dynamic>?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CustomBlocks].
  factory CustomBlocks.fromJson(String data) {
    return CustomBlocks.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<dynamic>? items;

  Map<String, dynamic> toMap() => {
        'items': items,
      };

  /// `dart:convert`
  ///
  /// Converts [CustomBlocks] to a JSON string.
  String toJson() => json.encode(toMap());
}
