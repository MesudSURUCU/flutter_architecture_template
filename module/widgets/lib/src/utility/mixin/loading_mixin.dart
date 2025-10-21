import 'package:flutter/material.dart';

/// A mixin that provides loading state management for stateful widgets.
mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  /// Returns the current loading state.
  bool get isLoading => _isLoadingNotifier.value;

  /// Returns the loading state notifier.
  ValueNotifier<bool> get isLoadingNotifier => _isLoadingNotifier;

  /// Toggles the loading state. If [isLoading] is provided, sets the loading
  void changeLoading({bool? isLoading}) {
    if (isLoading != null) _isLoadingNotifier.value = isLoading;
    _isLoadingNotifier.value = !_isLoadingNotifier.value;
  }
}
