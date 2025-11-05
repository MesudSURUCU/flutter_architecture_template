import 'package:architecture_template/product/init/application_initialize.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/init/state_initialize.dart';
import 'package:architecture_template/product/init/theme/custom_dark_theme.dart';
import 'package:architecture_template/product/init/theme/custom_light_theme.dart';
import 'package:architecture_template/product/navigation/app_router.dart';
import 'package:architecture_template/product/state/view_model/product_view_model.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/widgets.dart';

void main() async {
  await ApplicationInitialize().make();
  runApp(
    DevicePreview(
      builder: (context) => StateInitialize(
        child: ProductLocalization(child: const _MyApp()),
      ),
    ),
  );
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
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      builder: CustomResponsive.build,
      theme: CustomLightTheme().themeData, // Use light theme by default
      // Use dark theme when system is in dark mode
      darkTheme: CustomDarkTheme().themeData,
      themeMode: context.watch<ProductViewModel>().state.themeMode, // Use light theme by default
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales, // Define supported locales
      // Set localization delegates
      locale: context.locale, //Set the locale based on EasyLocalization context
    );
  }
}
