import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'dev_env.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.dev.env',
)

/// Development environment configuration (DevEnv)
final class DevEnv implements AppConfiguration {
  /// Base URL for development environment
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  /// API Key for development environment
  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv._apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  String get baseUrl => _baseUrl;
}
