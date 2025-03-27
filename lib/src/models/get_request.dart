import 'dart:convert';

class GetRequest {
  GetRequest({
    required this.doctype,
    this.name,
    this.parent,
  });

  factory GetRequest.fromMap(Map<String, dynamic> data) => GetRequest(
        doctype: data['doctype'] as String,
        name: data['name'] as String?,
        parent: data['parent'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetRequest].
  factory GetRequest.fromJson(String data) {
    return GetRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String doctype;
  String? name;
  String? parent;

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
        if (name != null) 'name': name,
        if (parent != null) 'parent': parent,
      };

  /// `dart:convert`
  ///
  /// Converts [GetRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
