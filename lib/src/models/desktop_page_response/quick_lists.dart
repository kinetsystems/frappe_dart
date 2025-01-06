import 'dart:convert';

class QuickLists {
  QuickLists({this.items});

  factory QuickLists.fromMap(Map<String, dynamic> data) => QuickLists(
        items: data['items'] as List<dynamic>?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [QuickLists].
  factory QuickLists.fromJson(String data) {
    return QuickLists.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<dynamic>? items;

  Map<String, dynamic> toMap() => {
        'items': items,
      };

  /// `dart:convert`
  ///
  /// Converts [QuickLists] to a JSON string.
  String toJson() => json.encode(toMap());
}
