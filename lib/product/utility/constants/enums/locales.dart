import 'package:flutter/material.dart';

/// This Dart code defines an enum called `Locales` with two values:
/// `tr` and `en`. Each enum value is associated with a `Locale` object.
/// The `tr` value is associated with a `Locale` object representing
/// Turkish ('tr', 'TR'), and the `en` value is associated with
/// a `Locale` object representing English ('en', 'US').

enum Locales {
  /// Turkish locale
  tr(Locale('tr', 'TR')),

  /// English locale
  en(Locale('en', 'US'));

  /// Private constructor to associate a Locale object with each enum value
  const Locales(this.locale);

  /// Locale object associated with this enum value
  final Locale locale;
}
