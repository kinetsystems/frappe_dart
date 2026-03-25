import 'dart:convert';

/// Request model for setting field value(s) via frappe.client.set_value
class SetValueRequest {
  SetValueRequest({
    required this.doctype,
    required this.name,
    required this.fieldname,
    this.value,
  });

  factory SetValueRequest.fromMap(Map<String, dynamic> data) => SetValueRequest(
        doctype: data['doctype'] as String,
        name: data['name'] as String,
        fieldname: data['fieldname'],
        value: data['value'],
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SetValueRequest].
  factory SetValueRequest.fromJson(String data) {
    return SetValueRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// The doctype of the document
  String doctype;

  /// The name (id) of the document
  String name;

  /// Field name as string or Map of fieldname: value for multiple fields
  dynamic fieldname;

  /// Value to set (only for single field, otherwise null)
  dynamic value;

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'doctype': doctype,
      'name': name,
    };

    if (fieldname is String) {
      map['fieldname'] = fieldname as String;
      if (value != null) {
        map['value'] = value;
      }
    } else if (fieldname is Map) {
      map['fieldname'] = json.encode(fieldname);
    }

    return map;
  }

  /// `dart:convert`
  ///
  /// Converts [SetValueRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
