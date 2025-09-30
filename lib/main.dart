import 'package:architecture_template/product/init/application_initialize.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/init/theme/custom_dark_theme.dart';
import 'package:architecture_template/product/init/theme/custom_light_theme.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const _MyApp()));
}

/// The `MyApp` class is a StatelessWidget in Dart that builds a
/// MaterialApp with specified locale and home view.
class _MyApp extends StatelessWidget {
  /// The `build` method is a required method in a StatelessWidget.
  const _MyApp();
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: CustomLlightTheme().themeData, // Use light theme by default
      // Use dark theme when system is in dark mode
      darkTheme: CustomDarkTheme().themeData,
      themeMode: ThemeMode.light, // Use light theme by default
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales, // Define supported locales
      // Set localization delegates
      locale: context.locale, //Set the locale based on EasyLocalization context
    );
  }
}
