import 'dart:convert';

import 'package:frappe_dart/src/models/get_doctype_response/non_standard_fieldnames.dart';
import 'package:frappe_dart/src/models/get_doctype_response/transaction.dart';

class Dashboard {
  Dashboard({
    this.transactions,
    this.nonStandardFieldnames,
    this.fieldname,
  });

  factory Dashboard.fromMap(Map<String, dynamic> data) => Dashboard(
        transactions: (data['transactions'] as List<dynamic>?)
            ?.map((e) => Transaction.fromMap(e as Map<String, dynamic>))
            .toList(),
        nonStandardFieldnames: data['non_standard_fieldnames'] == null
            ? null
            : NonStandardFieldnames.fromMap(
                data['non_standard_fieldnames'] as Map<String, dynamic>,
              ),
        fieldname: data['fieldname'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Dashboard].
  factory Dashboard.fromJson(String data) {
    return Dashboard.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<Transaction>? transactions;
  NonStandardFieldnames? nonStandardFieldnames;
  String? fieldname;

  Map<String, dynamic> toMap() => {
        'transactions': transactions?.map((e) => e.toMap()).toList(),
        'non_standard_fieldnames': nonStandardFieldnames?.toMap(),
        'fieldname': fieldname,
      };

  /// `dart:convert`
  ///
  /// Converts [Dashboard] to a JSON string.
  String toJson() => json.encode(toMap());
}
