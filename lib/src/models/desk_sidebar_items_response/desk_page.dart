import 'dart:convert';

class DeskPage {
  DeskPage({
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
  });
  factory DeskPage.fromJson(String data) {
    return DeskPage.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  factory DeskPage.fromMap(Map<String, dynamic> data) => DeskPage(
        name: data['name'] as String?,
        title: data['title'] as String?,
        forUser: data['for_user'] as String?,
        parentPage: data['parent_page'] as String?,
        content: data['content'] as String?,
        public: data['public'] as int?,
        module: data['module'] as String?,
        icon: data['icon'] as String?,
        indicatorColor: data['indicator_color'] as String,
        isHidden: data['is_hidden'] as int?,
        label: data['label'] as String?,
      );

  final String? name;
  final String? title;
  final String? forUser;
  final String? parentPage;
  final String? content;
  final int? public;
  final String? module;
  final String? icon;
  final String? indicatorColor;
  final int? isHidden;
  final String? label;

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
      };

  String toJson() => json.encode(toMap());

  DeskPage copyWith({
    String? name,
    String? title,
    String? forUser,
    String? parentPage,
    String? content,
    int? public,
    String? module,
    String? icon,
    String? indicatorColor,
    int? isHidden,
    String? label,
  }) {
    return DeskPage(
      name: name ?? this.name,
      title: title ?? this.title,
      forUser: forUser ?? this.forUser,
      parentPage: parentPage ?? this.parentPage,
      content: content ?? this.content,
      public: public ?? this.public,
      module: module ?? this.module,
      icon: icon ?? this.icon,
      indicatorColor: indicatorColor ?? this.indicatorColor,
      isHidden: isHidden ?? this.isHidden,
      label: label ?? this.label,
    );
  }
}
