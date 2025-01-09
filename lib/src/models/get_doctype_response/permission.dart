import 'dart:convert';

class Permission {
  Permission({
    this.doctype,
    this.name,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.owner,
    this.docstatus,
    this.idx,
    this.parent,
    this.role,
    this.ifOwner,
    this.permlevel,
    this.select,
    this.read,
    this.write,
    this.create,
    this.delete,
    this.submit,
    this.cancel,
    this.amend,
    this.report,
    this.export,
    this.import,
    this.share,
    this.print,
    this.email,
    this.fields,
    this.permissions,
    this.actions,
    this.links,
    this.states,
  });

  factory Permission.fromMap(Map<String, dynamic> data) => Permission(
        doctype: data['doctype'] as String?,
        name: data['name'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        owner: data['owner'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        parent: data['parent'] as String?,
        role: data['role'] as String?,
        ifOwner: data['if_owner'] as int?,
        permlevel: data['permlevel'] as int?,
        select: data['select'] as int?,
        read: data['read'] as int?,
        write: data['write'] as int?,
        create: data['create'] as int?,
        delete: data['delete'] as int?,
        submit: data['submit'] as int?,
        cancel: data['cancel'] as int?,
        amend: data['amend'] as int?,
        report: data['report'] as int?,
        export: data['export'] as int?,
        import: data['import'] as int?,
        share: data['share'] as int?,
        print: data['print'] as int?,
        email: data['email'] as int?,
        fields: data['fields'] as List<dynamic>?,
        permissions: data['permissions'] as List<dynamic>?,
        actions: data['actions'] as List<dynamic>?,
        links: data['links'] as List<dynamic>?,
        states: data['states'] as List<dynamic>?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Permission].
  factory Permission.fromJson(String data) {
    return Permission.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? doctype;
  String? name;
  String? creation;
  String? modified;
  String? modifiedBy;
  String? owner;
  int? docstatus;
  int? idx;
  String? parent;
  String? role;
  int? ifOwner;
  int? permlevel;
  int? select;
  int? read;
  int? write;
  int? create;
  int? delete;
  int? submit;
  int? cancel;
  int? amend;
  int? report;
  int? export;
  int? import;
  int? share;
  int? print;
  int? email;
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
        'idx': idx,
        'parent': parent,
        'role': role,
        'if_owner': ifOwner,
        'permlevel': permlevel,
        'select': select,
        'read': read,
        'write': write,
        'create': create,
        'delete': delete,
        'submit': submit,
        'cancel': cancel,
        'amend': amend,
        'report': report,
        'export': export,
        'import': import,
        'share': share,
        'print': print,
        'email': email,
        'fields': fields,
        'permissions': permissions,
        'actions': actions,
        'links': links,
        'states': states,
      };

  /// `dart:convert`
  ///
  /// Converts [Permission] to a JSON string.
  String toJson() => json.encode(toMap());
}
