import 'dart:convert';

import 'package:frappe_dart/src/models/desk_sidebar_items_response/desk_message.dart';

class DeskSidebarItemsResponse {
  DeskSidebarItemsResponse({this.message});
  factory DeskSidebarItemsResponse.fromMap(Map<String, dynamic> data) {
    return DeskSidebarItemsResponse(
      message: data['message'] == null
          ? null
          : DeskMessage.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  factory DeskSidebarItemsResponse.fromJson(String data) {
    return DeskSidebarItemsResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }

  final DeskMessage? message;

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  String toJson() => json.encode(toMap());

  DeskSidebarItemsResponse copyWith({
    DeskMessage? message,
  }) {
    return DeskSidebarItemsResponse(
      message: message ?? this.message,
    );
  }
}



