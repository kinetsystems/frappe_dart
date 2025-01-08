import 'dart:convert';

/// A model class representing a Desk Page in the system.
class DeskPage {
  /// Creates a [DeskPage] instance.
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

  /// Creates a [DeskPage] instance from a JSON string.
  factory DeskPage.fromJson(String data) {
    return DeskPage.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// Creates a [DeskPage] instance from a map of key-value pairs.
  factory DeskPage.fromMap(Map<String, dynamic> data) => DeskPage(
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
      );

  /// The unique name of the desk page.
  final String? name;

  /// The title of the desk page.
  final String? title;

  /// The user associated with the desk page.
  final String? forUser;

  /// The parent page of this desk page.
  final String? parentPage;

  /// The content of the desk page.
  final String? content;

  /// Whether the desk page is public (1) or not (0).
  final int? public;

  /// The module associated with the desk page.
  final String? module;

  /// The icon of the desk page.
  final String? icon;

  /// The indicator color for the desk page.
  final String? indicatorColor;

  /// Whether the desk page is hidden (1) or not (0).
  final int? isHidden;

  /// The label of the desk page.
  final String? label;

  /// Converts the [DeskPage] instance to a map of key-value pairs.
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

  /// Converts the [DeskPage] instance to a JSON string.
  String toJson() => json.encode(toMap());

  /// Creates a copy of the [DeskPage] instance with the specified properties updated.
  DeskPage copyWith({
    String? name,
    String? title,
    String? forUser,
    String? parentPage,
    String? content,
    int? public,
    String? module,
    String? icon,
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
      isHidden: isHidden ?? this.isHidden,
      label: label ?? this.label,
    );
  }
}
