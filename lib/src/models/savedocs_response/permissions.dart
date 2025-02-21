import 'dart:convert';

class Permissions  {
  const Permissions({
    this.hasIfOwnerEnabled,
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
        hasIfOwnerEnabled: data['has_if_owner_enabled'] as bool?,
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
  final bool? hasIfOwnerEnabled;
  final int? select;
  final int? read;
  final int? write;
  final int? create;
  final int? delete;
  final int? submit;
  final int? cancel;
  final int? amend;
  final int? print;
  final int? email;
  final int? report;
  final int? import;
  final int? export;
  final int? share;

  Map<String, dynamic> toMap() => {
        'has_if_owner_enabled': hasIfOwnerEnabled,
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
