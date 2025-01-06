import 'dart:convert';

class ShortcutItem {
  ShortcutItem({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.type,
    this.linkTo,
    this.url,
    this.docView,
    this.kanbanBoard,
    this.label,
    this.icon,
    this.restrictToDomain,
    this.statsFilter,
    this.color,
    this.format,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
  });

  factory ShortcutItem.fromMap(Map<String, dynamic> data) => ShortcutItem(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        type: data['type'] as String?,
        linkTo: data['link_to'] as String?,
        url: data['url'] as String?,
        docView: data['doc_view'] as String?,
        kanbanBoard: data['kanban_board'] as String?,
        label: data['label'] as String?,
        icon: data['icon'] as String?,
        restrictToDomain: data['restrict_to_domain'] as String?,
        statsFilter: data['stats_filter'] as String?,
        color: data['color'] as String?,
        format: data['format'] as String?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ShortcutItem].
  factory ShortcutItem.fromJson(String data) {
    return ShortcutItem.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? type;
  String? linkTo;
  String? url;
  String? docView;
  String? kanbanBoard;
  String? label;
  String? icon;
  String? restrictToDomain;
  String? statsFilter;
  String? color;
  String? format;
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
        'type': type,
        'link_to': linkTo,
        'url': url,
        'doc_view': docView,
        'kanban_board': kanbanBoard,
        'label': label,
        'icon': icon,
        'restrict_to_domain': restrictToDomain,
        'stats_filter': statsFilter,
        'color': color,
        'format': format,
        'parent': parent,
        'parentfield': parentfield,
        'parenttype': parenttype,
        'doctype': doctype,
      };

  /// `dart:convert`
  ///
  /// Converts [ShortcutItem] to a JSON string.
  String toJson() => json.encode(toMap());
}
