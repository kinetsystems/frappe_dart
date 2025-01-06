import 'dart:convert';

import 'package:frappe_dart/src/models/desktop_page_response/cards.dart';
import 'package:frappe_dart/src/models/desktop_page_response/charts.dart';
import 'package:frappe_dart/src/models/desktop_page_response/custom_blocks.dart';
import 'package:frappe_dart/src/models/desktop_page_response/number_cards.dart';
import 'package:frappe_dart/src/models/desktop_page_response/onboardings.dart';
import 'package:frappe_dart/src/models/desktop_page_response/quick_lists.dart';
import 'package:frappe_dart/src/models/desktop_page_response/shortcuts.dart';

class Message {
  Message({
    this.charts,
    this.shortcuts,
    this.cards,
    this.onboardings,
    this.quickLists,
    this.numberCards,
    this.customBlocks,
  });

  factory Message.fromMap(Map<String, dynamic> data) => Message(
        charts: data['charts'] == null
            ? null
            : Charts.fromMap(data['charts'] as Map<String, dynamic>),
        shortcuts: data['shortcuts'] == null
            ? null
            : Shortcuts.fromMap(data['shortcuts'] as Map<String, dynamic>),
        cards: data['cards'] == null
            ? null
            : Cards.fromMap(data['cards'] as Map<String, dynamic>),
        onboardings: data['onboardings'] == null
            ? null
            : Onboardings.fromMap(data['onboardings'] as Map<String, dynamic>),
        quickLists: data['quick_lists'] == null
            ? null
            : QuickLists.fromMap(data['quick_lists'] as Map<String, dynamic>),
        numberCards: data['number_cards'] == null
            ? null
            : NumberCards.fromMap(data['number_cards'] as Map<String, dynamic>),
        customBlocks: data['custom_blocks'] == null
            ? null
            : CustomBlocks.fromMap(
                data['custom_blocks'] as Map<String, dynamic>,
              ),
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Message].
  factory Message.fromJson(String data) {
    return Message.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  Charts? charts;
  Shortcuts? shortcuts;
  Cards? cards;
  Onboardings? onboardings;
  QuickLists? quickLists;
  NumberCards? numberCards;
  CustomBlocks? customBlocks;

  Map<String, dynamic> toMap() => {
        'charts': charts?.toMap(),
        'shortcuts': shortcuts?.toMap(),
        'cards': cards?.toMap(),
        'onboardings': onboardings?.toMap(),
        'quick_lists': quickLists?.toMap(),
        'number_cards': numberCards?.toMap(),
        'custom_blocks': customBlocks?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Converts [Message] to a JSON string.
  String toJson() => json.encode(toMap());
}
