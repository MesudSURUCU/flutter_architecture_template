import 'package:flutter/material.dart';

/// A custom button widget that extends [TextButton] with bold text style.
/// is elevation 20
final class BoldTextButton extends TextButton {
  /// Creates a [BoldTextButton] widget.
  BoldTextButton({
    required super.onPressed,
    required super.child,
    super.key,
  }) : super(
          style: TextButton.styleFrom(
            elevation: 20,
          ),
        );
}
