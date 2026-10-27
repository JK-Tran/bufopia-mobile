import 'dart:async';

import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';

/// Cấu hình routing động cho hạ tầng Realtime (Dynamic Routing)
class RealtimeConfig {
  const RealtimeConfig({
    this.protocolVersion = 1,
    this.matchmaking = 'go',
    this.quizRooms = 'go',
    this.chainRooms = 'go',
    this.guessMatchmake = 'go',
    this.guessRooms = 'go',
  });

  factory RealtimeConfig.fromJson(Map<String, dynamic> json) {
    return RealtimeConfig(
      protocolVersion: json['protocolVersion'] as int? ?? 1,
      matchmaking: json['matchmaking'] as String? ?? 'go',
      quizRooms: json['quizRooms'] as String? ?? 'go',
      chainRooms: json['chainRooms'] as String? ?? 'go',
      guessMatchmake: json['guessMatchmake'] as String? ?? 'go',
      guessRooms: json['guessRooms'] as String? ?? 'go',
    );
  }

  final int protocolVersion;
  final String matchmaking;
  final String quizRooms;
  final String chainRooms;
  final String guessMatchmake;
  final String guessRooms;

  Map<String, dynamic> toJson() => {
    'protocolVersion': protocolVersion,
    'matchmaking': matchmaking,
    'quizRooms': quizRooms,
    'chainRooms': chainRooms,
    'guessMatchmake': guessMatchmake,
    'guessRooms': guessRooms,
  };
}

/// Dịch vụ định tuyến Realtime:
/// - Lấy cấu hình máy chủ GET /api/realtime/config
/// - Xác định phòng/chế độ kết nối tới Go Realtime Server hay Cloudflare Worker
abstract class RealtimeRoutingService {
  Future<RealtimeConfig> getConfig({bool forceRefresh = false});
  bool isGoMatchmaking({RealtimeConfig? config});
  bool isGoQuizRoom(String roomCode, {RealtimeConfig? config});
  bool isGoChainRoom(String roomCode, {RealtimeConfig? config});
  bool isGoChainMatchmaking({RealtimeConfig? config});
  bool isGoGuessMatchmaking({RealtimeConfig? config});
  bool isGoGuessRoom(String roomCode, {RealtimeConfig? config});
}

@LazySingleton(as: RealtimeRoutingService)
class RealtimeRoutingServiceImpl implements RealtimeRoutingService {
  RealtimeRoutingServiceImpl(this._client);

  final NoneAuthAppServerApiClient _client;
  static const String _logTag = 'RealtimeRoutingService';

  RealtimeConfig _cachedConfig = const RealtimeConfig();
  DateTime? _lastFetchTime;
  static const Duration _cacheDuration = Duration(minutes: 5);

  @override
  Future<RealtimeConfig> getConfig({bool forceRefresh = false}) async {
    final now = DateTime.now();
    if (!forceRefresh &&
        _lastFetchTime != null &&
        now.difference(_lastFetchTime!) < _cacheDuration) {
      return _cachedConfig;
    }

    try {
      final response = await _client.request(
        method: RestMethod.get,
        successResponseMapperType: SuccessResponseMapperType.jsonObject,
        path: '/realtime/config',
        decoder: (data) {
          if (data is Map<String, dynamic>) {
            return RealtimeConfig.fromJson(data);
          } else if (data is Map) {
            return RealtimeConfig.fromJson(
              Map<String, dynamic>.from(data),
            );
          }
          return const RealtimeConfig();
        },
      );

      if (response is RealtimeConfig) {
        _cachedConfig = response;
        _lastFetchTime = now;
        Log.d(
          'Updated realtime config: ${_cachedConfig.toJson()}',
          name: _logTag,
        );
      }
    } on Object catch (e) {
      Log.d(
        'Failed to fetch realtime config, fallback to default: $e',
        name: _logTag,
      );
    }

    return _cachedConfig;
  }

  @override
  bool isGoMatchmaking({RealtimeConfig? config}) {
    final cfg = config ?? _cachedConfig;
    return cfg.matchmaking.toLowerCase() == 'go';
  }

  @override
  bool isGoQuizRoom(String roomCode, {RealtimeConfig? config}) {
    final normalized = roomCode.trim().toUpperCase();
    if (normalized.startsWith('GQZ-')) {
      return true;
    }
    // Phòng 6 chữ số cũ luôn thuộc Cloudflare Worker
    if (RegExp(r'^\d{6}$').hasMatch(normalized)) {
      return false;
    }
    final cfg = config ?? _cachedConfig;
    return cfg.quizRooms.toLowerCase() == 'go';
  }

  @override
  bool isGoChainRoom(String roomCode, {RealtimeConfig? config}) {
    final normalized = roomCode.trim().toUpperCase();
    if (normalized.startsWith('GOC-')) {
      return true;
    }
    // Phòng 6 chữ số cũ luôn thuộc Cloudflare Worker
    if (RegExp(r'^\d{6}$').hasMatch(normalized)) {
      return false;
    }
    final cfg = config ?? _cachedConfig;
    return cfg.chainRooms.toLowerCase() == 'go';
  }

  @override
  bool isGoChainMatchmaking({RealtimeConfig? config}) {
    final cfg = config ?? _cachedConfig;
    return cfg.chainRooms.toLowerCase() == 'go' ||
        cfg.matchmaking.toLowerCase() == 'go';
  }

  @override
  bool isGoGuessMatchmaking({RealtimeConfig? config}) {
    final cfg = config ?? _cachedConfig;
    return cfg.guessMatchmake.toLowerCase() == 'go' ||
        cfg.matchmaking.toLowerCase() == 'go';
  }

  @override
  bool isGoGuessRoom(String roomCode, {RealtimeConfig? config}) {
    final normalized = roomCode.trim().toUpperCase();
    if (normalized.startsWith('GGS-') || normalized.startsWith('GGU-')) {
      return true;
    }
    // Phòng 6 chữ số cũ luôn thuộc Cloudflare Worker
    if (RegExp(r'^\d{6}$').hasMatch(normalized)) {
      return false;
    }
    final cfg = config ?? _cachedConfig;
    return cfg.guessRooms.toLowerCase() == 'go' ||
        cfg.matchmaking.toLowerCase() == 'go';
  }
}
