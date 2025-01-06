import 'dart:convert';

class Role {

  Role({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.role,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
  });

  factory Role.fromMap(Map<String, dynamic> data) => Role(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        role: data['role'] as String?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Role].
  factory Role.fromJson(String data) {
    return Role.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? role;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;

  Map<String, dynamic> toMap() => {
        'name': name,
        'owner': owner,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'docstatus': docstatus,
        'idx': idx,
        'role': role,
        'parent': parent,
        'parentfield': parentfield,
        'parenttype': parenttype,
        'doctype': doctype,
      };

  /// `dart:convert`
  ///
  /// Converts [Role] to a JSON string.
  String toJson() => json.encode(toMap());
}
