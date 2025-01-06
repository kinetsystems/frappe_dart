import 'dart:convert';

import 'package:frappe_dart/src/models/desktop_page_response/shortcut_item.dart';

class Shortcuts {
  Shortcuts({this.items});

  factory Shortcuts.fromMap(Map<String, dynamic> data) => Shortcuts(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => ShortcutItem.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Shortcuts].
  factory Shortcuts.fromJson(String data) {
    return Shortcuts.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<ShortcutItem>? items;

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Converts [Shortcuts] to a JSON string.
  String toJson() => json.encode(toMap());
}
