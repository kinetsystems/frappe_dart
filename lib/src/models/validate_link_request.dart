import 'dart:convert';

class ValidateLinkRequest {
  ValidateLinkRequest(
      {required this.doctype, required this.docname, this.fields});

  factory ValidateLinkRequest.fromMap(Map<String, dynamic> data) {
    return ValidateLinkRequest(
      doctype: data['doctype'] as String,
      docname: data['docname'] as String,
      fields: data['fields'] != null
          ? json.decode(data['fields'] as String) as List<String>
          : null,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ValidateLinkRequest].
  factory ValidateLinkRequest.fromJson(String data) {
    return ValidateLinkRequest.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }
  String doctype;
  String docname;
  List<String>? fields;

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
        'docname': docname,
        if (fields != null) 'fields': json.encode(fields),
      };

  /// `dart:convert`
  ///
  /// Converts [ValidateLinkRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
