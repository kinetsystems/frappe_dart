import 'dart:convert';

class OnboardingItem {
  OnboardingItem({
    this.label,
    this.title,
    this.subtitle,
    this.success,
    this.docsUrl,
  });

  factory OnboardingItem.fromMap(Map<String, dynamic> data) => OnboardingItem(
        label: data['label'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        success: data['success'] as String?,
        docsUrl: data['docs_url'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OnboardingItem].
  factory OnboardingItem.fromJson(String data) {
    return OnboardingItem.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? label;
  String? title;
  String? subtitle;
  String? success;
  String? docsUrl;

  Map<String, dynamic> toMap() => {
        'label': label,
        'title': title,
        'subtitle': subtitle,
        'success': success,
        'docs_url': docsUrl,
      };

  /// `dart:convert`
  ///
  /// Converts [OnboardingItem] to a JSON string.
  String toJson() => json.encode(toMap());
}
