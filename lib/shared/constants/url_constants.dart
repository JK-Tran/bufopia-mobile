import 'package:bufopia/shared/constants/env_constants.dart';
import 'package:bufopia/shared/model/shared_enum.dart';

class UrlConstants {
  const UrlConstants._();

  static String get apiVersion => '/api';

  static String get appApiBaseUrl {
    switch (EnvConstants.flavor) {
      case Flavor.develop:
        return 'https://word-duel-worker.lvthanh-work.workers.dev$apiVersion';
      case Flavor.qa:
        return 'https://word-duel-worker.lvthanh-work.workers.dev$apiVersion';
      case Flavor.staging:
        return 'https://word-duel-worker.lvthanh-work.workers.dev$apiVersion';
      case Flavor.production:
        return 'https://word-duel-worker.lvthanh-work.workers.dev$apiVersion';
      // case Flavor.production:
      //   return 'http://172.16.0.119:8787$apiVersion';
    }
  }

  /// Web application base URL
  static String get webAppBaseUrl {
    switch (EnvConstants.flavor) {
      case Flavor.develop:
        return 'https://word-duel-worker.lvthanh-work.workers.dev$apiVersion';
      case Flavor.qa:
        return 'https://word-duel-worker.lvthanh-work.workers.dev$apiVersion';
      case Flavor.staging:
        return 'https://word-duel-worker.lvthanh-work.workers.dev$apiVersion';
      case Flavor.production:
        return 'https://word-duel-worker.lvthanh-work.workers.dev$apiVersion';
      // case Flavor.production:
      //   return 'http://172.16.0.119:8787$apiVersion';
    }
  }

  /// WebSocket base URL
  static String get webSocketBaseUrl {
    switch (EnvConstants.flavor) {
      case Flavor.develop:
      case Flavor.qa:
      case Flavor.staging:
      case Flavor.production:
        return 'wss://word-duel-worker.lvthanh-work.workers.dev/ws';
    }
  }
}
