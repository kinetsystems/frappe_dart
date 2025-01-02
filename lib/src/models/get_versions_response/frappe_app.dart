import 'dart:convert';

class FrappeApp {
  String? title;
  String? description;
  String? branch;
  String? version;

  FrappeApp({this.title, this.description, this.branch, this.version});

  factory FrappeApp.fromMap(Map<String, dynamic> data) => FrappeApp(
        title: data['title'] as String?,
        description: data['description'] as String?,
        branch: data['branch'] as String?,
        version: data['version'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'description': description,
        'branch': branch,
        'version': version,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FrappeApp].
  factory FrappeApp.fromJson(String data) {
    return FrappeApp.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FrappeApp] to a JSON string.
  String toJson() => json.encode(toMap());
}
