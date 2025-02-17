import 'dart:convert';

class SearchLinkRequest {

  SearchLinkRequest({
    this.txt,
    required this.doctype,
    this.referenceDoctype,
    this.pageLength,
    this.query,
  });

  factory SearchLinkRequest.fromMap(Map<String, dynamic> data) {
    return SearchLinkRequest(
      txt: data['txt'] as String?,
      doctype: data['doctype'] as String,
      referenceDoctype: data['reference_doctype'] as String?,
      pageLength: data['page_length'] as int?,
      query: data['query'] as String?,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SearchLinkRequest].
  factory SearchLinkRequest.fromJson(String data) {
    return SearchLinkRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? txt;
  String doctype;
  String? referenceDoctype;
  int? pageLength;
  String? query;

  Map<String, dynamic> toMap() => {
        'txt': txt ?? '',
        'doctype': doctype,
        if (referenceDoctype != null) 'reference_doctype': referenceDoctype,
        if (pageLength != null) 'page_length': pageLength.toString(),
        if (query != null) 'query': query,
      };

  /// `dart:convert`
  ///
  /// Converts [SearchLinkRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
