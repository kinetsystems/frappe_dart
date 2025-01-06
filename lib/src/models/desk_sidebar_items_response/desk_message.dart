import 'dart:convert';

import 'package:frappe_dart/src/models/desk_sidebar_items_response/desk_page.dart';

class DeskMessage {
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

  factory DeskMessage.fromJson(String data) {
    return DeskMessage.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final List<DeskPage>? pages;
  final bool? hasAccess;
  final bool? hasCreateAccess;

  Map<String, dynamic> toMap() => {
        'pages': pages?.map((e) => e.toMap()).toList(),
        'has_access': hasAccess,
        'has_create_access': hasCreateAccess,
      };

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
