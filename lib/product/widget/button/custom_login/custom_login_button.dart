import 'package:architecture_template/product/widget/button/normal_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

part 'custom_login_button_mixin.dart';

/// A custom login button widget that shows a loading indicator when pressed.
final class CustomLoginButton extends StatefulWidget {
  /// Creates a [CustomLoginButton] widget.
  const CustomLoginButton({required this.onOperation, super.key});

  /// The asynchronous operation to be performed when the button is pressed.
  final AsyncValueGetter<bool> onOperation;
  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton> with MountedMixin, _CustomLoginButtonMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isLoadingNotifier,
      builder: (BuildContext context, bool value, Widget? child) {
        if (value) return const SizedBox();
        return NormalButton(
          onPressed: _performLogin,
          title: 'Login',
        );
      },
    );
  }
}
