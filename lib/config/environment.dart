enum AppEnvironment { dev, staging, prod }

class EnvironmentConfig {
  static const String _environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: 'dev',
  );

  static AppEnvironment get current {
    switch (_environment.toLowerCase()) {
      case 'staging':
        return AppEnvironment.staging;

      case 'prod':
        return AppEnvironment.prod;

      case 'dev':
      default:
        return AppEnvironment.dev;
    }
  }

  static bool get isDev => current == AppEnvironment.dev;

  static bool get isStaging => current == AppEnvironment.staging;

  static bool get isProd => current == AppEnvironment.prod;
}
