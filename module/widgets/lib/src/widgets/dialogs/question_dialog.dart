import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

/// A class representing the answer to a question dialog.
final class QuestionAnswer {
  /// Creates a [QuestionAnswer] with the given response.
  const QuestionAnswer({required this.response});

  /// The response of the question dialog.
  final String response;
}

/// A dialog that indicates a successful operation.
class QuestionDialog extends StatefulWidget {
  /// Creates a [QuestionDialog].
  const QuestionDialog({required this.title, super.key});

  /// The title of the dialog.
  final String title;

  /// Show the success dialog.
  /// Returns a [Future] that resolves to `true` when the dialog is dismissed.
  static Future<QuestionAnswer?> show({
    required BuildContext context,
    required String title,
  }) async {
    return DialogBase.show<QuestionAnswer>(
      context: context,
      builder: (context) => QuestionDialog(title: title),
    );
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  String _response = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: TextField(
        onChanged: (value) => _response = value,
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (_response.isEmpty) Navigator.of(context).pop();
            Navigator.of(context).pop(QuestionAnswer(response: _response));
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
