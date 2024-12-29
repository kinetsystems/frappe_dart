import 'dart:convert';

class DesktopPageResponse {
  Message? message;

  DesktopPageResponse({this.message});

  factory DesktopPageResponse.fromMap(Map<String, dynamic> data) {
    return DesktopPageResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DesktopPageResponse].
  factory DesktopPageResponse.fromJson(String data) {
    return DesktopPageResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DesktopPageResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}

class Message {
  Charts? charts;
  Shortcuts? shortcuts;
  Cards? cards;
  Onboardings? onboardings;
  QuickLists? quickLists;
  NumberCards? numberCards;
  CustomBlocks? customBlocks;

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
                data['custom_blocks'] as Map<String, dynamic>),
      );

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
  /// Parses the string and returns the resulting Json object as [Message].
  factory Message.fromJson(String data) {
    return Message.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Message] to a JSON string.
  String toJson() => json.encode(toMap());
}

class Charts {
  List<Item>? items;

  Charts({this.items});

  factory Charts.fromMap(Map<String, dynamic> data) => Charts(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => Item.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Charts].
  factory Charts.fromJson(String data) {
    return Charts.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Charts] to a JSON string.
  String toJson() => json.encode(toMap());
}

class Shortcuts {
  List<Item>? items;

  Shortcuts({this.items});

  factory Shortcuts.fromMap(Map<String, dynamic> data) => Shortcuts(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => Item.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Shortcuts].
  factory Shortcuts.fromJson(String data) {
    return Shortcuts.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Shortcuts] to a JSON string.
  String toJson() => json.encode(toMap());
}

class Item {
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? chartName;
  String? label;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;
  List<Link>? links;

  Item({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.chartName,
    this.label,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
    this.links,
  });

  factory Item.fromMap(Map<String, dynamic> data) => Item(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        chartName: data['chart_name'] as String?,
        label: data['label'] as String?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
        links: (data['links'] as List<dynamic>?)
            ?.map((e) => Link.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'owner': owner,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'docstatus': docstatus,
        'idx': idx,
        'chart_name': chartName,
        'label': label,
        'parent': parent,
        'parentfield': parentfield,
        'parenttype': parenttype,
        'doctype': doctype,
        'links': links?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
  factory Item.fromJson(String data) {
    return Item.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
  String toJson() => json.encode(toMap());
}

class Cards {
  List<Item>? items;

  Cards({this.items});

  factory Cards.fromMap(Map<String, dynamic> data) => Cards(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => Item.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Cards].
  factory Cards.fromJson(String data) {
    return Cards.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Cards] to a JSON string.
  String toJson() => json.encode(toMap());
}

class Onboardings {
  List<Item>? items;

  Onboardings({this.items});

  factory Onboardings.fromMap(Map<String, dynamic> data) => Onboardings(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => Item.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Onboardings].
  factory Onboardings.fromJson(String data) {
    return Onboardings.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Onboardings] to a JSON string.
  String toJson() => json.encode(toMap());
}

class QuickLists {
  List<dynamic>? items;

  QuickLists({this.items});

  factory QuickLists.fromMap(Map<String, dynamic> data) => QuickLists(
        items: data['items'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'items': items,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [QuickLists].
  factory QuickLists.fromJson(String data) {
    return QuickLists.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [QuickLists] to a JSON string.
  String toJson() => json.encode(toMap());
}

class NumberCards {
  List<Item>? items;

  NumberCards({this.items});

  factory NumberCards.fromMap(Map<String, dynamic> data) => NumberCards(
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => Item.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'items': items?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NumberCards].
  factory NumberCards.fromJson(String data) {
    return NumberCards.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NumberCards] to a JSON string.
  String toJson() => json.encode(toMap());
}

class CustomBlocks {
  List<dynamic>? items;

  CustomBlocks({this.items});

  factory CustomBlocks.fromMap(Map<String, dynamic> data) => CustomBlocks(
        items: data['items'] as List<dynamic>?,
      );

  Map<String, dynamic> toMap() => {
        'items': items,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CustomBlocks].
  factory CustomBlocks.fromJson(String data) {
    return CustomBlocks.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CustomBlocks] to a JSON string.
  String toJson() => json.encode(toMap());
}

class Link {
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? type;
  String? label;
  dynamic icon;
  String? description;
  int? hidden;
  String? linkType;
  String? linkTo;
  dynamic reportRefDoctype;
  String? dependencies;
  dynamic onlyFor;
  int? onboard;
  int? isQueryReport;
  int? linkCount;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;

  Link({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.type,
    this.label,
    this.icon,
    this.description,
    this.hidden,
    this.linkType,
    this.linkTo,
    this.reportRefDoctype,
    this.dependencies,
    this.onlyFor,
    this.onboard,
    this.isQueryReport,
    this.linkCount,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
  });

  factory Link.fromMap(Map<String, dynamic> data) => Link(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        type: data['type'] as String?,
        label: data['label'] as String?,
        icon: data['icon'] as dynamic,
        description: data['description'] as String?,
        hidden: data['hidden'] as int?,
        linkType: data['link_type'] as String?,
        linkTo: data['link_to'] as String?,
        reportRefDoctype: data['report_ref_doctype'] as dynamic,
        dependencies: data['dependencies'] as String?,
        onlyFor: data['only_for'] as dynamic,
        onboard: data['onboard'] as int?,
        isQueryReport: data['is_query_report'] as int?,
        linkCount: data['link_count'] as int?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'owner': owner,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'docstatus': docstatus,
        'idx': idx,
        'type': type,
        'label': label,
        'icon': icon,
        'description': description,
        'hidden': hidden,
        'link_type': linkType,
        'link_to': linkTo,
        'report_ref_doctype': reportRefDoctype,
        'dependencies': dependencies,
        'only_for': onlyFor,
        'onboard': onboard,
        'is_query_report': isQueryReport,
        'link_count': linkCount,
        'parent': parent,
        'parentfield': parentfield,
        'parenttype': parenttype,
        'doctype': doctype,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Link].
  factory Link.fromJson(String data) {
    return Link.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Link] to a JSON string.
  String toJson() => json.encode(toMap());
}
