import 'package:architecture_template/product/service/manager/product_network_path.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

final class LoginService {
  LoginService(INetworkManager<EmptyModel> networkManager) : _networkManager = networkManager;

  final INetworkManager<EmptyModel> _networkManager;

  Future<List<User>> users() async {
    final response = await _networkManager.send<User, List<User>>(
      ProductNetworkPath.posts.value,
      parseModel: User(),
      method: RequestType.GET,
    );

    return response.data ?? [];
  }
}
