import 'dart:convert';

import 'package:frappe_dart/src/models/desktop_page_response/chart_item.dart';

class Charts {
  Charts({this.items});

  factory Charts.fromMap(Map<String, dynamic> data) => Charts(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => ChartItem.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Charts].
  factory Charts.fromJson(String data) {
    return Charts.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<ChartItem>? items;

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Converts [Charts] to a JSON string.
  String toJson() => json.encode(toMap());
}
