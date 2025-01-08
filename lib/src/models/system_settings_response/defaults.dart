import 'dart:convert';

class Defaults {
  Defaults({
    this.appName,
    this.timeZone,
    this.dateFormat,
    this.timeFormat,
    this.numberFormat,
    this.firstDayOfTheWeek,
    this.floatPrecision,
    this.currencyPrecision,
    this.roundingMethod,
    this.sessionExpiry,
    this.twoFactorMethod,
    this.otpIssuerName,
    this.minimumPasswordScore,
    this.defaultApp,
  });

  factory Defaults.fromMap(Map<String, dynamic> data) => Defaults(
        appName: data['app_name'] as String?,
        timeZone: data['time_zone'] as String?,
        dateFormat: data['date_format'] as String?,
        timeFormat: data['time_format'] as String?,
        numberFormat: data['number_format'] as String?,
        firstDayOfTheWeek: data['first_day_of_the_week'] as String?,
        floatPrecision: data['float_precision'] as String?,
        currencyPrecision: data['currency_precision'] as String?,
        roundingMethod: data['rounding_method'] as String?,
        sessionExpiry: data['session_expiry'] as String?,
        twoFactorMethod: data['two_factor_method'] as String?,
        otpIssuerName: data['otp_issuer_name'] as String?,
        minimumPasswordScore: data['minimum_password_score'] as String?,
        defaultApp: data['default_app'] as dynamic,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Defaults].
  factory Defaults.fromJson(String data) {
    return Defaults.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? appName;
  String? timeZone;
  String? dateFormat;
  String? timeFormat;
  String? numberFormat;
  String? firstDayOfTheWeek;
  String? floatPrecision;
  String? currencyPrecision;
  String? roundingMethod;
  String? sessionExpiry;
  String? twoFactorMethod;
  String? otpIssuerName;
  String? minimumPasswordScore;
  dynamic defaultApp;

  Map<String, dynamic> toMap() => {
        'app_name': appName,
        'time_zone': timeZone,
        'date_format': dateFormat,
        'time_format': timeFormat,
        'number_format': numberFormat,
        'first_day_of_the_week': firstDayOfTheWeek,
        'float_precision': floatPrecision,
        'currency_precision': currencyPrecision,
        'rounding_method': roundingMethod,
        'session_expiry': sessionExpiry,
        'two_factor_method': twoFactorMethod,
        'otp_issuer_name': otpIssuerName,
        'minimum_password_score': minimumPasswordScore,
        'default_app': defaultApp,
      };

  /// `dart:convert`
  ///
  /// Converts [Defaults] to a JSON string.
  String toJson() => json.encode(toMap());
}
