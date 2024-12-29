import 'dart:convert';

class DeskPageRequest {
  String? name;
  String? title;
  String? forUser;
  String? parentPage;
  String? content;
  int? public;
  String? module;
  String? icon;
  String? indicatorColor;
  int? isHidden;
  String? label;
  bool? isEditable;
  bool? selected;

  DeskPageRequest({
    this.name,
    this.title,
    this.forUser,
    this.parentPage,
    this.content,
    this.public,
    this.module,
    this.icon,
    this.indicatorColor,
    this.isHidden,
    this.label,
    this.isEditable,
    this.selected,
  });

  factory DeskPageRequest.fromMap(Map<String, dynamic> data) {
    return DeskPageRequest(
      name: data['name'] as String?,
      title: data['title'] as String?,
      forUser: data['for_user'] as String?,
      parentPage: data['parent_page'] as String?,
      content: data['content'] as String?,
      public: data['public'] as int?,
      module: data['module'] as String?,
      icon: data['icon'] as String?,
      indicatorColor: data['indicator_color'] as String?,
      isHidden: data['is_hidden'] as int?,
      label: data['label'] as String?,
      isEditable: data['is_editable'] as bool?,
      selected: data['selected'] as bool?,
    );
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'title': title,
        'for_user': forUser,
        'parent_page': parentPage,
        'content': content,
        'public': public,
        'module': module,
        'icon': icon,
        'indicator_color': indicatorColor,
        'is_hidden': isHidden,
        'label': label,
        'is_editable': isEditable,
        'selected': selected,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DeskPageRequest].
  factory DeskPageRequest.fromJson(String data) {
    return DeskPageRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DeskPageRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
