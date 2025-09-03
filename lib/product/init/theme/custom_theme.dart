import 'package:flutter/material.dart';

/// Custom theme interface that defines the structure for theme data
abstract class CustomTheme {
  /// Returns the primary color of the theme
  ThemeData get themeData;

  /// Returns the floating action button theme data
  FloatingActionButtonThemeData get floatingActionButtonThemeData;
}
