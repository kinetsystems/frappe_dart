import 'dart:convert';

import 'package:frappe_dart/src/models/desk_sidebar_items_response/desk_page.dart';

/// A model class representing a message in the desk sidebar.
///
/// This class contains information about desk pages, access permissions,
/// and creation permissions.
class DeskMessage {
  /// Creates an instance of [DeskMessage].
  ///
  /// [pages] is the list of desk pages.
  /// [hasAccess] indicates whether the user has access.
  /// [hasCreateAccess] indicates whether the user has creation access.
  DeskMessage({
    this.pages,
    this.hasAccess,
    this.hasCreateAccess,
  });

  /// Creates an instance of [DeskMessage] from a map.
  ///
  /// [data] is the map containing the desk message data.
  factory DeskMessage.fromMap(Map<String, dynamic> data) => DeskMessage(
        pages: (data['pages'] as List<dynamic>?)
            ?.map((e) => DeskPage.fromMap(e as Map<String, dynamic>))
            .toList(),
        hasAccess: data['has_access'] as bool?,
        hasCreateAccess: data['has_create_access'] as bool?,
      );

  /// Creates an instance of [DeskMessage] from a JSON string.
  ///
  /// [data] is the JSON string representing the desk message data.
  factory DeskMessage.fromJson(String data) {
    return DeskMessage.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// The list of desk pages.
  final List<DeskPage>? pages;

  /// Indicates whether the user has access.
  final bool? hasAccess;

  /// Indicates whether the user has creation access.
  final bool? hasCreateAccess;

  /// Converts this [DeskMessage] instance to a map.
  ///
  /// Returns a map representation of this instance.
  Map<String, dynamic> toMap() => {
        'pages': pages?.map((e) => e.toMap()).toList(),
        'has_access': hasAccess,
        'has_create_access': hasCreateAccess,
      };

  /// Converts this [DeskMessage] instance to a JSON string.
  ///
  /// Returns a JSON string representation of this instance.
  String toJson() => json.encode(toMap());

  /// Creates a copy of this [DeskMessage] instance with updated values.
  ///
  /// [pages] is the new list of desk pages.
  /// [hasAccess] is the new access permission.
  /// [hasCreateAccess] is the new creation permission.
  ///
  /// Returns a new instance of [DeskMessage] with the updated values.
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
