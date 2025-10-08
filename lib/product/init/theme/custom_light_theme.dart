import 'package:architecture_template/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_template/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom dark theme implementation
final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightColorScheme,
        fontFamily: GoogleFonts.roboto().fontFamily,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        elevatedButtonTheme: elevatedButtonThemeData,
      );

  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();

  /// Elevated button theme data
  final ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: CustomColorScheme.lightColorScheme.primary,
      foregroundColor: CustomColorScheme.lightColorScheme.onPrimary,
    ),
  );
}
