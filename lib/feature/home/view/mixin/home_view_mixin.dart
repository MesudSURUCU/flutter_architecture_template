import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/service/login_service.dart';
import 'package:architecture_template/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template/product/state/container/product_state_items.dart';
import 'package:flutter/material.dart';

/// This Dart code defines a mixin named `HomeViewMixin` that is applied to the
/// state of a `HomeView` widget.
///  Inside the mixin, there is an overridden `initState` method that calls the
/// `super.initState()` method to ensure the state is properly initialized,
///  and then it calls the  `Example()` function.

mixin HomeViewMixin on State<HomeView> {
  late final LoginService loginService;
  late final ProductNetworkErrorManager productNetworkErrorManager;
  @override
  void initState() {
    super.initState();
    loginService = LoginService(ProductStateItems.productNetworkManager);
    productNetworkErrorManager = ProductNetworkErrorManager(context);
    ProductStateItems.productNetworkManager.listenErrorState(
      onErrorStatus: productNetworkErrorManager.handleError,
    );
  }
}
