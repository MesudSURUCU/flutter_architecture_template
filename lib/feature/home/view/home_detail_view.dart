import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage<bool?>()

/// The `HomeDetailView` class is a StatelessWidget that represents the detail
///  view of a home item
final class HomeDetailView extends StatelessWidget {
  /// Constructor for the `HomeDetailView` class
  const HomeDetailView({required this.id, super.key});

  /// The unique identifier for the home item
  final String id;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Detail View'),
      ),
    );
  }
}
