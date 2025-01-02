import 'dart:convert';

class Onload {
  List<String>? allModules;

  Onload({this.allModules});

  factory Onload.fromMap(Map<String, dynamic> data) => Onload(
        allModules: data['all_modules'] as List<String>?,
      );

  Map<String, dynamic> toMap() => {
        'all_modules': allModules,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Onload].
  factory Onload.fromJson(String data) {
    return Onload.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Onload] to a JSON string.
  String toJson() => json.encode(toMap());
}
