import 'package:flutter/material.dart';

/// A custom padding class that extends [EdgeInsets]
/// with predefined padding values.
final class ProjectPadding extends EdgeInsets {
  /// Default padding with all sides set to 16.
  const ProjectPadding.allMedium() : super.all(16);

  ///  Low padding with all sides set to 8.
  const ProjectPadding.allLow() : super.all(8);

  /// High padding with all sides set to 32.
  const ProjectPadding.allHigh() : super.all(32);
}
