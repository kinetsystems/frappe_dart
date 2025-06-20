import 'dart:convert';

import 'package:frappe_dart/src/models/desktop_page_response/link.dart';

class CardItem {
  CardItem({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.type,
    this.label,
    this.icon,
    this.description,
    this.hidden,
    this.linkType,
    this.linkTo,
    this.reportRefDoctype,
    this.dependencies,
    this.onlyFor,
    this.onboard,
    this.isQueryReport,
    this.linkCount,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
    this.links,
  });

  factory CardItem.fromMap(Map<String, dynamic> data) => CardItem(
    name: data['name'] as String?,
    owner: data['owner'] as String?,
    creation: data['creation'] as String?,
    modified: data['modified'] as String?,
    modifiedBy: data['modified_by'] as String?,
    docstatus: data['docstatus'] as int?,
    idx: data['idx'] as int?,
    type: data['type'] as String?,
    label: data['label'] as String?,
    icon: data['icon'] as String?,
    description: data['description'] as String?,
    hidden: data['hidden'] == null
        ? 0
        : data['hidden'] is num
        ? data['hidden'] as int
        : data['hidden'] as bool
        ? 1
        : 0,
    linkType: data['link_type'] as String?,
    linkTo: data['link_to'] as String?,
    reportRefDoctype: data['report_ref_doctype'] as String?,
    dependencies: data['dependencies'] as String?,
    onlyFor: data['only_for'] as String?,
    onboard: data['onboard'] as int?,
    isQueryReport: data['is_query_report'] as int?,
    linkCount: data['link_count'] as int?,
    parent: data['parent'] as String?,
    parentfield: data['parentfield'] as String?,
    parenttype: data['parenttype'] as String?,
    doctype: data['doctype'] as String?,
    links: (data['links'] as List<dynamic>?)
        ?.map((e) => Link.fromMap(e as Map<String, dynamic>))
        .toList(),
  );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CardItem].
  factory CardItem.fromJson(String data) {
    return CardItem.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? type;
  String? label;
  String? icon;
  String? description;
  int? hidden;
  String? linkType;
  String? linkTo;
  String? reportRefDoctype;
  String? dependencies;
  String? onlyFor;
  int? onboard;
  int? isQueryReport;
  int? linkCount;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;
  List<Link>? links;

  Map<String, dynamic> toMap() => {
    'name': name,
    'owner': owner,
    'creation': creation,
    'modified': modified,
    'modified_by': modifiedBy,
    'docstatus': docstatus,
    'idx': idx,
    'type': type,
    'label': label,
    'icon': icon,
    'description': description,
    'hidden': hidden,
    'link_type': linkType,
    'link_to': linkTo,
    'report_ref_doctype': reportRefDoctype,
    'dependencies': dependencies,
    'only_for': onlyFor,
    'onboard': onboard,
    'is_query_report': isQueryReport,
    'link_count': linkCount,
    'parent': parent,
    'parentfield': parentfield,
    'parenttype': parenttype,
    'doctype': doctype,
    'links': links?.map((e) => e.toMap()).toList(),
  };

  /// `dart:convert`
  ///
  /// Converts [CardItem] to a JSON string.
  String toJson() => json.encode(toMap());
}
