import 'dart:convert';

import 'package:frappe_dart/src/models/get_doctype_response/doc.dart';

class GetDoctypeResponse {
  GetDoctypeResponse({
    this.docs,
    this.userSettings,
  });

  factory GetDoctypeResponse.fromMap(Map<String, dynamic> data) {
    return GetDoctypeResponse(
      docs: (data['docs'] as List<dynamic>?)
          ?.map((e) => Doc.fromMap(e as Map<String, dynamic>))
          .toList(),
      userSettings: data['user_settings'] as String?,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetDoctypeResponse].
  factory GetDoctypeResponse.fromJson(String data) {
    return GetDoctypeResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }
  List<Doc>? docs;
  String? userSettings;

  Map<String, dynamic> toMap() => {
        'docs': docs?.map((e) => e.toMap()).toList(),
        'user_settings': userSettings,
      };

  /// `dart:convert`
  ///
  /// Converts [GetDoctypeResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
