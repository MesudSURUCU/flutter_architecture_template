import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

/// A dialog that indicates a successful operation.
class SuccessDialog extends StatelessWidget {
  /// Creates a [SuccessDialog].
  const SuccessDialog({required this.title, super.key});

  /// The title of the dialog.
  final String title;

  /// Show the success dialog.
  /// Returns a [Future] that resolves to `true` when the dialog is dismissed.
  static Future<bool> show({
    required BuildContext context,
    required String title,
  }) async {
    await DialogBase.show<bool>(
      context: context,
      builder: (context) => SuccessDialog(title: title),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
