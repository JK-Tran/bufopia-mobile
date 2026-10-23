import 'dart:async';

import 'package:bufopia/shared/services/socket/base_socket_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/socket_url_builder.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';

/// Dịch vụ WebSocket nền duy trì Presence và nhận/gửi lời mời thách đấu
/// trực tiếp qua Go Realtime Server (wss://dictionary-api.bufopia.com/api/v1/realtime/ws)
abstract class SocialLobbySocketService {
  Stream<SocketEvent> get eventStream;
  SocketConnectionState get connectionState;
  Stream<SocketConnectionState> get connectionStateStream;
  bool get isConnected;

  Future<void> connectPresence({
    required String uid,
    String? token,
    String? name,
    String? avatar,
  });

  void sendChallenge({
    required String targetUid,
    required String gameMode,
    required String name,
    String? avatar,
  });

  void acceptChallenge({required String challengeId});

  Future<void> disconnect();
  Future<void> dispose();
}

@LazySingleton(as: SocialLobbySocketService)
class SocialLobbySocketServiceImpl extends BaseSocketService
    implements SocialLobbySocketService {
  SocialLobbySocketServiceImpl(
    super.deviceAuthService,
    super.authDataSource,
    super.firebaseAuthService,
  );

  Map<String, dynamic>? _lastPresenceArgs;

  @override
  String get logTag => 'SocialLobbySocketService';

  @override
  Future<void> connectPresence({
    required String uid,
    String? token,
    String? name,
    String? avatar,
  }) async {
    _lastPresenceArgs = {
      'uid': uid,
      'token': token,
      'name': name,
      'avatar': avatar,
    };

    final effectiveToken = await resolveToken(token);
    final deviceSecret = await deviceAuthService.getDeviceSecret();
    final url = SocketUrlBuilder.goSocialLobbyWsUrl();

    Log.d(
      'Connecting to Social Lobby & Presence on Go Server (First-Frame Auth)',
      name: logTag,
    );

    await connectUrl(
      url,
      firstFrameAuth: FirstFrameAuth(
        uid: uid,
        token: effectiveToken,
        deviceSecret: deviceSecret,
      ),
    );
  }

  @override
  void sendChallenge({
    required String targetUid,
    required String gameMode,
    required String name,
    String? avatar,
  }) {
    sendRaw({
      'type': 'challenge',
      'targetUid': targetUid,
      'gameMode': gameMode,
      'challengerInfo': {
        'name': name,
        'avatar': avatar ?? '',
      },
    });
  }

  @override
  void acceptChallenge({required String challengeId}) {
    sendRaw({
      'type': 'challenge_accept',
      'challengeId': challengeId,
    });
  }

  @override
  Future<void> reconnect() async {
    if (_lastPresenceArgs != null) {
      final args = _lastPresenceArgs!;
      await connectPresence(
        uid: args['uid'] as String,
        token: args['token'] as String?,
        name: args['name'] as String?,
        avatar: args['avatar'] as String?,
      );
      return;
    }
    await super.reconnect();
  }

  @override
  Future<void> disconnect() async {
    _lastPresenceArgs = null;
    await super.disconnect();
  }

  @override
  FutureOr<void> handleGameEvent(String type, Map<String, dynamic> json) {
    switch (type) {
      case 'challenge_received':
        emitEvent(SocialChallengeReceivedEvent.fromJson(json));
      case 'battle_start':
        emitEvent(SocialBattleStartEvent.fromJson(json));
      case 'waiting_matches':
        emitEvent(WaitingMatchesEvent.fromJson(json));
      default:
        emitEvent(SocketRawMessageEvent(json));
    }
  }
}
