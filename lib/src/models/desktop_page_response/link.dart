import 'dart:convert';

class Link {
  Link({
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
    this.incompleteDependencies,
  });

  factory Link.fromMap(Map<String, dynamic> data) => Link(
    name: data['name'] as String?,
    owner: data['owner'] as String?,
    creation: data['creation'] as String?,
    modified: data['modified'] as String?,
    modifiedBy: data['modified_by'] as String?,
    docstatus: data['docstatus'] as int?,
    idx: data['idx'] as int?,
    type: data['type'] as String?,
    label: data['label'] as String?,
    icon: data['icon'] as dynamic,
    description: data['description'] as String?,
    hidden: data['hidden'] as int?,
    linkType: data['link_type'] as String?,
    linkTo: data['link_to'] as String?,
    reportRefDoctype: data['report_ref_doctype'] as dynamic,
    dependencies: data['dependencies'] as String?,
    onlyFor: data['only_for'] as dynamic,
    onboard: data['onboard'] as int?,
    isQueryReport: data['is_query_report'] as int?,
    linkCount: data['link_count'] as int?,
    parent: data['parent'] as String?,
    parentfield: data['parentfield'] as String?,
    parenttype: data['parenttype'] as String?,
    doctype: data['doctype'] as String?,
    incompleteDependencies: data['incomplete_dependencies'] == null
        ? []
        : data['incomplete_dependencies'] == ''
        ? []
        : (data['incomplete_dependencies'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
  );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Link].
  factory Link.fromJson(String data) {
    return Link.fromMap(json.decode(data) as Map<String, dynamic>);
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
  dynamic icon;
  String? description;
  int? hidden;
  String? linkType;
  String? linkTo;
  dynamic reportRefDoctype;
  String? dependencies;
  dynamic onlyFor;
  int? onboard;
  int? isQueryReport;
  int? linkCount;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;
  List<String>? incompleteDependencies;

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
    'incomplete_dependencies': incompleteDependencies,
  };

  /// `dart:convert`
  ///
  /// Converts [Link] to a JSON string.
  String toJson() => json.encode(toMap());
}
