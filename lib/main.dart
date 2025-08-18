import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/init/application_initialize.dart';
import 'package:architecture_template/product/init/product_localization.dart';
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      home: const HomeView(),
    );
  }
}
