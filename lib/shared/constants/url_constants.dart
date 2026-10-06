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

  static String matchmakeWsUrl({
    required String uid,
    required String token,
    String topic = 'auto',
    String? name,
    String? avatar,
  }) {
    final query = <String, String>{
      'uid': uid,
      'token': token,
      'topic': topic,
      if (name != null && name.isNotEmpty) 'name': name,
      if (avatar != null && avatar.isNotEmpty) 'avatar': avatar,
    };
    final uri = Uri.parse('$webSocketBaseUrl/matchmake').replace(
      queryParameters: query,
    );
    return uri.toString();
  }

  static String roomWsUrl({
    required String roomCode,
    required String uid,
    required String token,
    String? name,
    String? avatar,
  }) {
    final query = <String, String>{
      'uid': uid,
      'token': token,
      if (name != null && name.isNotEmpty) 'name': name,
      if (avatar != null && avatar.isNotEmpty) 'avatar': avatar,
    };
    final uri = Uri.parse('$webSocketBaseUrl/room/$roomCode').replace(
      queryParameters: query,
    );
    return uri.toString();
  }
}
