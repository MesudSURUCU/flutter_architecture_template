import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable

/// A class that holds the data for the [Locale] enum.
final class ProductLocalization extends EasyLocalization {
  /// The [ProductLocalization] constructor.
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedItems,
          path: _translationPath,
          useOnlyLangCode: true,
        );

  static final List<Locale> _supportedItems = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _translationPath = 'asset/translations';

  /// The function `updateLanguage` updates the language/locale in the provided `BuildContext` to the
  /// specified `Locales` value. Args: context (BuildContext):
  /// The `context` parameter in the `updateLanguage` function is of type
  /// `BuildContext`. It is used to access information about the widget tree and
  /// to perform operations related to the UI. In this case,
  /// it is being used to set the locale for the app. value (Locales):
  ///  The `value` parameter in the `updateLanguage` function represents the new
  /// language locale that you want to set in the app.
  /// It is of type `Locales`, which likely contains
  /// information about the locale such as the language code and country code.
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) =>
      context.setLocale(value.locale);
}
