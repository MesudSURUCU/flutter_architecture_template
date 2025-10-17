import 'package:architecture_template/product/widget/button/normal_button.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

/// A custom button widget that displays a normal button
class DialogNormalButton extends StatelessWidget {
  /// Creates a [DialogNormalButton] widget.
  const DialogNormalButton({required this.onComplete, super.key});

  /// The callback function to be executed when the button is pressed.
  final ValueChanged<bool> onComplete;
  @override
  Widget build(BuildContext context) {
    return NormalButton(
      onPressed: () async {
        final response = await SuccessDialog.show(
          context: context,
          title: 'Success',
        );
        onComplete.call(response);
      },
      title: 'Dialog Normal Button',
    );
  }
}
