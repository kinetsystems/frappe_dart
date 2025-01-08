import 'dart:convert';

/// Represents a request for a desktop page configuration.
class DesktopPageRequest {
  /// Creates an instance of [DesktopPageRequest].
  DesktopPageRequest({
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

  /// Creates a [DesktopPageRequest] from a [Map] of key-value pairs.
  factory DesktopPageRequest.fromMap(Map<String, dynamic> data) {
    return DesktopPageRequest(
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

  /// Parses a JSON string and returns a [DesktopPageRequest] instance.
  factory DesktopPageRequest.fromJson(String data) {
    return DesktopPageRequest.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }

  /// The name of the page.
  String? name;

  /// The title of the page.
  String? title;

  /// The user the page is for.
  String? forUser;

  /// The parent page of this page.
  String? parentPage;

  /// The content of the page.
  String? content;

  /// Whether the page is public (1 for true, 0 for false).
  int? public;

  /// The module the page belongs to.
  String? module;

  /// The icon associated with the page.
  String? icon;

  /// The indicator color for the page.
  String? indicatorColor;

  /// Whether the page is hidden (1 for true, 0 for false).
  int? isHidden;

  /// The label of the page.
  String? label;

  /// Whether the page is editable.
  bool? isEditable;

  /// Whether the page is selected.
  bool? selected;

  /// Converts this instance to a [Map] of key-value pairs.
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

  /// Converts this instance to a JSON string.
  String toJson() => json.encode(toMap());
}
