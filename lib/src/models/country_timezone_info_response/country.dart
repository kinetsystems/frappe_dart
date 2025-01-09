import 'dart:convert';

class Country {
  Country({
    this.code,
    this.currency,
    this.currencyFraction,
    this.currencyFractionUnits,
    this.currencySymbol,
    this.numberFormat,
    this.timezones,
    this.isd,
  });

  factory Country.fromMap(Map<String, dynamic> data) => Country(
        code: data['code'] as String?,
        currency: data['currency'] as String?,
        currencyFraction: data['currency_fraction'] as String?,
        currencyFractionUnits: data['currency_fraction_units'] as int?,
        currencySymbol: data['currency_symbol'] as String?,
        numberFormat: data['number_format'] as String?,
        timezones: data['timezones'] as List<String>?,
        isd: data['isd'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Country].
  factory Country.fromJson(String data) {
    return Country.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? code;
  String? currency;
  String? currencyFraction;
  int? currencyFractionUnits;
  String? currencySymbol;
  String? numberFormat;
  List<String>? timezones;
  String? isd;

  Map<String, dynamic> toMap() => {
        'code': code,
        'currency': currency,
        'currency_fraction': currencyFraction,
        'currency_fraction_units': currencyFractionUnits,
        'currency_symbol': currencySymbol,
        'number_format': numberFormat,
        'timezones': timezones,
        'isd': isd,
      };

  /// `dart:convert`
  ///
  /// Converts [Country] to a JSON string.
  String toJson() => json.encode(toMap());
}
