import 'dart:convert';

import 'package:frappe_dart/src/models/get_doc_response/doc.dart';
import 'package:frappe_dart/src/models/get_doc_response/docinfo.dart';

class GetDocResponse {
  List<Doc>? docs;
  Docinfo? docinfo;

  GetDocResponse({this.docs, this.docinfo});

  factory GetDocResponse.fromMap(Map<String, dynamic> data) {
    return GetDocResponse(
      docs: (data['docs'] as List<dynamic>?)
          ?.map((e) => Doc.fromMap(e as Map<String, dynamic>))
          .toList(),
      docinfo: data['docinfo'] == null
          ? null
          : Docinfo.fromMap(data['docinfo'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'docs': docs?.map((e) => e.toMap()).toList(),
        'docinfo': docinfo?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetDocResponse].
  factory GetDocResponse.fromJson(String data) {
    return GetDocResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GetDocResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
