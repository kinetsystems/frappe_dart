import 'dart:convert';

class ReportViewRequest {
  ReportViewRequest({
    required this.filters,
    required this.fields,
    required this.limit,
    required this.doctype,
  });
  final Map<String, dynamic> filters;
  final List<String> fields;
  final int limit;
  final String doctype;

  Map<String, String> toMap() {
    return {
      'filters': jsonEncode(filters),
      'fields': jsonEncode(fields),
      'limit': limit.toString(),
      'doctype': doctype,
    };
  }
}
