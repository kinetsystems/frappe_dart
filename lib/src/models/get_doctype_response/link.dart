import 'dart:convert';

class Link {
  Link({
    this.doctype,
    this.name,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.owner,
    this.docstatus,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.idx,
    this.group,
    this.linkDoctype,
    this.linkFieldname,
    this.hidden,
    this.isChildTable,
    this.custom,
    this.added,
    this.fields,
    this.permissions,
    this.actions,
    this.links,
    this.states,
  });

  factory Link.fromMap(Map<String, dynamic> data) => Link(
        doctype: data['doctype'] as String?,
        name: data['name'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        owner: data['owner'] as String?,
        docstatus: data['docstatus'] as int?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        idx: data['idx'] as int?,
        group: data['group'] as String?,
        linkDoctype: data['link_doctype'] as String?,
        linkFieldname: data['link_fieldname'] as String?,
        hidden: data['hidden'] as int?,
        isChildTable: data['is_child_table'] as int?,
        custom: data['custom'] as int?,
        added: data['added'] as bool?,
        fields: data['fields'] as List<dynamic>?,
        permissions: data['permissions'] as List<dynamic>?,
        actions: data['actions'] as List<dynamic>?,
        links: data['links'] as List<dynamic>?,
        states: data['states'] as List<dynamic>?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Link].
  factory Link.fromJson(String data) {
    return Link.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? doctype;
  String? name;
  String? creation;
  String? modified;
  String? modifiedBy;
  String? owner;
  int? docstatus;
  String? parent;
  String? parentfield;
  String? parenttype;
  int? idx;
  String? group;
  String? linkDoctype;
  String? linkFieldname;
  int? hidden;
  int? isChildTable;
  int? custom;
  bool? added;
  List<dynamic>? fields;
  List<dynamic>? permissions;
  List<dynamic>? actions;
  List<dynamic>? links;
  List<dynamic>? states;

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
        'name': name,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'owner': owner,
        'docstatus': docstatus,
        'parent': parent,
        'parentfield': parentfield,
        'parenttype': parenttype,
        'idx': idx,
        'group': group,
        'link_doctype': linkDoctype,
        'link_fieldname': linkFieldname,
        'hidden': hidden,
        'is_child_table': isChildTable,
        'custom': custom,
        'added': added,
        'fields': fields,
        'permissions': permissions,
        'actions': actions,
        'links': links,
        'states': states,
      };

  /// `dart:convert`
  ///
  /// Converts [Link] to a JSON string.
  String toJson() => json.encode(toMap());
}
