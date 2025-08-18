import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

/// This Dart code defines a mixin named `HomeViewMixin` that is applied to the
/// state of a `HomeView` widget.
///  Inside the mixin, there is an overridden `initState` method that calls the
/// `super.initState()` method to ensure the state is properly initialized,
///  and then it calls the  `Example()` function.

mixin HomeViewMixin on State<HomeView> {
  @override
  void initState() {
    super.initState();
    Example();
  }
}
