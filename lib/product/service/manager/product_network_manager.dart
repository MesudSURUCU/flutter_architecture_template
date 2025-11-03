import 'dart:io';

import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

/// Manages network operations related to products.
final class ProductNetworkManager extends NetworkManager<EmptyModel> {
  /// Initializes a new instance of [ProductNetworkManager] with default options.
  ProductNetworkManager.base()
      : super(
          options: BaseOptions(
            baseUrl: AppEnvironmentItems.baseUrl.value,
          ),
        );

  /// Error handler for network requests.
  /// [onErrorStatus] is a callback function that receives the error status code.
  void listenErrorState({required ValueChanged<int> onErrorStatus}) {
    interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          onErrorStatus(error.response?.statusCode ?? HttpStatus.notFound);
          return handler.next(error);
        },
      ),
    );
  }
}
