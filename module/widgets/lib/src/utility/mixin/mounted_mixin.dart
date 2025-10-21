import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A mixin that provides safe operation execution when the widget is mounted.
mixin MountedMixin<T extends StatefulWidget> on State<T> {
  /// Executes the [callback] only if the widget is currently mounted.
  Future<void> safeOperatin(AsyncCallback callback) async {
    if (!mounted) return;
    await callback.call();
  }
}
