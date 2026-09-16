import 'package:flutter_cicd_demo/config/environment.dart';

class AppConfig {
  static String get apiBaseUrl {
    switch (EnvironmentConfig.current) {
      case AppEnvironment.dev:
        return 'https://dev-api.example.com';

      case AppEnvironment.staging:
        return 'https://staging-api.example.com';

      case AppEnvironment.prod:
        return 'https://api.example.com';
    }
  }
}
