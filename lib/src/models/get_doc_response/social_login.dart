import 'dart:convert';

class SocialLogin {
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? provider;
  String? userid;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;

  SocialLogin({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.provider,
    this.userid,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
  });

  factory SocialLogin.fromMap(Map<String, dynamic> data) => SocialLogin(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        provider: data['provider'] as String?,
        userid: data['userid'] as String?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'owner': owner,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'docstatus': docstatus,
        'idx': idx,
        'provider': provider,
        'userid': userid,
        'parent': parent,
        'parentfield': parentfield,
        'parenttype': parenttype,
        'doctype': doctype,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SocialLogin].
  factory SocialLogin.fromJson(String data) {
    return SocialLogin.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SocialLogin] to a JSON string.
  String toJson() => json.encode(toMap());
}
