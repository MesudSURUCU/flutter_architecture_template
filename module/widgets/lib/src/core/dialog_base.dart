import 'package:flutter/material.dart';

/// A base class for dialogs.
/// Internal use only.
final class DialogBase {
  const DialogBase._();

  /// Show a general dialog with
  /// [builder] to build the dialog content.
  /// [context] is the build context to show the dialog in.
  /// barrierDismissible is false
  /// useSafeArea is false

  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: builder,
    );
  }
}
