import 'package:architecture_template/product/service/manager/index.dart';
import 'package:architecture_template/product/state/container/product_state_container.dart';

final class ProductStateItems {
  const ProductStateItems._();
  static ProductNetworkManager get productNetworkManager => ProductContainer.read<ProductNetworkManager>();
}
