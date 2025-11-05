import 'package:architecture_template/product/service/manager/product_network_manager.dart';
import 'package:architecture_template/product/state/view_model/product_view_model.dart';
import 'package:get_it/get_it.dart';

/// Product container for dependency injection
final class ProductContainer {
  const ProductContainer._();
  static final _getIt = GetIt.I;

  /// Product core required items
  static void setup() {
    _getIt
      ..registerSingleton<ProductNetworkManager>(
        ProductNetworkManager.base(),
      )
      ..registerLazySingleton<ProductViewModel>(
        ProductViewModel.new,
      );
  }

  /// read your dependency item for [ProductContainer]
  static T read<T extends Object>() => _getIt<T>();
}
