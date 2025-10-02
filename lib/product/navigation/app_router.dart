import 'package:architecture_template/feature/home/view/home_detail_view.dart';
import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceInRouteName)

/// The `AppRouter` class is responsible for managing the application's routing.
final class AppRouter extends _$AppRouter {
  static const _replaceInRouteName = 'View,Route';
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: HomeDetailRoute.page,
        ),
      ];
}
