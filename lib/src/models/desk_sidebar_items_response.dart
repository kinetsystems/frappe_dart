import 'dart:convert';

class DeskSidebarItemsResponse {
  DeskSidebarItemsResponse({this.message});

  final DeskMessage? message;

  factory DeskSidebarItemsResponse.fromMap(Map<String, dynamic> data) {
    return DeskSidebarItemsResponse(
      message: data['message'] == null
          ? null
          : DeskMessage.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  factory DeskSidebarItemsResponse.fromJson(String data) {
    return DeskSidebarItemsResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toMap());

  DeskSidebarItemsResponse copyWith({
    DeskMessage? message,
  }) {
    return DeskSidebarItemsResponse(
      message: message ?? this.message,
    );
  }
}

class DeskMessage {
  final List<DeskPage>? pages;
  final bool? hasAccess;
  final bool? hasCreateAccess;

  DeskMessage({
    this.pages,
    this.hasAccess,
    this.hasCreateAccess,
  });

  factory DeskMessage.fromMap(Map<String, dynamic> data) => DeskMessage(
        pages: (data['pages'] as List<dynamic>?)
            ?.map((e) => DeskPage.fromMap(e as Map<String, dynamic>))
            .toList(),
        hasAccess: data['has_access'] as bool?,
        hasCreateAccess: data['has_create_access'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'pages': pages?.map((e) => e.toMap()).toList(),
        'has_access': hasAccess,
        'has_create_access': hasCreateAccess,
      };

  factory DeskMessage.fromJson(String data) {
    return DeskMessage.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toMap());

  DeskMessage copyWith({
    List<DeskPage>? pages,
    bool? hasAccess,
    bool? hasCreateAccess,
  }) {
    return DeskMessage(
      pages: pages ?? this.pages,
      hasAccess: hasAccess ?? this.hasAccess,
      hasCreateAccess: hasCreateAccess ?? this.hasCreateAccess,
    );
  }
}

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

  factory DeskPage.fromMap(Map<String, dynamic> data) => DeskPage(
        name: data['name'] as String?,
        title: data['title'] as String?,
        forUser: data['for_user'] as String?,
        parentPage: data['parent_page'] as String?,
        content: data['content'] as String?,
        public: data['public'] as int?,
        module: data['module'] as String?,
        icon: data['icon'] as String?,
        indicatorColor: data['indicator_color'] as dynamic,
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
  final dynamic indicatorColor;
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

  factory DeskPage.fromJson(String data) {
    return DeskPage.fromMap(json.decode(data) as Map<String, dynamic>);
  }

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
    dynamic indicatorColor,
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
