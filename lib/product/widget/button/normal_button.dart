import 'package:architecture_template/product/utility/constants/project_radius.dart';
import 'package:flutter/material.dart';

/// A custom button widget that displays a normal button with
/// a title and an action. radius 20
final class NormalButton extends StatelessWidget {
  /// Creates a [NormalButton] widget.
  const NormalButton({required this.onPressed, required this.title, super.key});

  /// The title of the button.
  final String title;

  /// The callback function to be executed when the button is pressed.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: ProjectRadius.medium.value,
      onTap: onPressed,
      child: Text(title),
    );
  }
}
