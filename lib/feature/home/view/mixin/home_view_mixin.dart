import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/feature/home/view_model/home_view_model.dart';
import 'package:architecture_template/product/service/login_service.dart';
import 'package:architecture_template/product/service/manager/product_network_error_manager.dart';
import 'package:architecture_template/product/state/base/base_state.dart';
import 'package:architecture_template/product/state/container/product_state_items.dart';

/// This Dart code defines a mixin named `HomeViewMixin` that is applied to the
/// state of a `HomeView` widget.
///  Inside the mixin, there is an overridden `initState` method that calls the
/// `super.initState()` method to ensure the state is properly initialized,
///  and then it calls the  `Example()` function.

mixin HomeViewMixin on BaseState<HomeView> {
  late final ProductNetworkErrorManager _productNetworkErrorManager;
  late final HomeViewModel _homeViewModel;

  HomeViewModel get homeViewModel => _homeViewModel;
  @override
  void initState() {
    super.initState();
    _productNetworkErrorManager = ProductNetworkErrorManager(context);
    ProductStateItems.productNetworkManager.listenErrorState(
      onErrorStatus: _productNetworkErrorManager.handleError,
    );

    _homeViewModel = HomeViewModel(
      operationService: LoginService(productNetworkManager),
    );
  }
}
