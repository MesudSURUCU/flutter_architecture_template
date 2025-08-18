import 'package:architecture_template/product/init/config/app_configuration.dart';
import 'package:architecture_template/product/init/config/dev_env.dart';
import 'package:architecture_template/product/init/config/prod_env.dart';
import 'package:flutter/foundation.dart';

/// Application environment configuration
/// This class provides access to the application's configuration settings
/// such as the base URL and API key, which are defined in the environment files
final class AppEnvironment {
  /// Initializes the application environment with the provided configuration
  AppEnvironment.setup({required AppConfiguration configuration}) {
    _configuration = configuration;
  }

  /// General application environment setup
  AppEnvironment.general() {
    _configuration = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _configuration;
}

/// Enum representing the items in the application environment
enum AppEnvironmentItems {
  /// Network base URL
  baseUrl,

  /// Google Maps API key
  apiKey;

  /// Get app environment item value
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._configuration.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._configuration.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironmentItems is not initialized: $e');
    }
  }
}
