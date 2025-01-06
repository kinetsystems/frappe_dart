import 'dart:convert';

class Permissions {

  Permissions({
    this.select,
    this.read,
    this.write,
    this.create,
    this.delete,
    this.submit,
    this.cancel,
    this.amend,
    this.print,
    this.email,
    this.report,
    this.import,
    this.export,
    this.share,
  });

  factory Permissions.fromMap(Map<String, dynamic> data) => Permissions(
        select: data['select'] as int?,
        read: data['read'] as int?,
        write: data['write'] as int?,
        create: data['create'] as int?,
        delete: data['delete'] as int?,
        submit: data['submit'] as int?,
        cancel: data['cancel'] as int?,
        amend: data['amend'] as int?,
        print: data['print'] as int?,
        email: data['email'] as int?,
        report: data['report'] as int?,
        import: data['import'] as int?,
        export: data['export'] as int?,
        share: data['share'] as int?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Permissions].
  factory Permissions.fromJson(String data) {
    return Permissions.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  int? select;
  int? read;
  int? write;
  int? create;
  int? delete;
  int? submit;
  int? cancel;
  int? amend;
  int? print;
  int? email;
  int? report;
  int? import;
  int? export;
  int? share;

  Map<String, dynamic> toMap() => {
        'select': select,
        'read': read,
        'write': write,
        'create': create,
        'delete': delete,
        'submit': submit,
        'cancel': cancel,
        'amend': amend,
        'print': print,
        'email': email,
        'report': report,
        'import': import,
        'export': export,
        'share': share,
      };

  /// `dart:convert`
  ///
  /// Converts [Permissions] to a JSON string.
  String toJson() => json.encode(toMap());
}
