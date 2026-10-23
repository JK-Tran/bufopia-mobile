import 'dart:async';

import 'package:bufopia/features/word_chain/data/mapper/game_state_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/mapper/reward_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/models/game_state_data.dart';
import 'package:bufopia/features/word_chain/data/models/reward_data.dart';
import 'package:bufopia/shared/services/socket/base_socket_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/realtime_routing_service.dart';
import 'package:bufopia/shared/services/socket/socket_url_builder.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';

/// Service quản lý giao tiếp WebSocket chuyên biệt cho chế độ
/// Nối từ (Word Chain).
abstract class WordChainSocketService {
  Stream<SocketEvent> get eventStream;
  SocketConnectionState get connectionState;
  Stream<SocketConnectionState> get connectionStateStream;
  bool get isConnected;

  String? get currentRoomCode;
  ChainStateEvent? get lastChainState;
  bool isConnectedToRoom(String roomCode);

  Future<void> connectMatchmake({
    required String uid,
    required String name,
    String? token,
    String? avatar,
    bool relaxed = false,
    String lang = 'en',
  });

  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? token,
    String? avatar,
    bool relaxed = false,
    String lang = 'en',
  });

  void sendWord({required String word, required int turnId});
  void sendChat(String text);
  void sendAway({required String sessionId, required String awayId});
  void sendSurrender();
  void sendRematch({required String sessionId});
  void sendCancel();

  Future<void> disconnect();
  Future<void> dispose();
}

@LazySingleton(as: WordChainSocketService)
class WordChainSocketServiceImpl extends BaseSocketService
    implements WordChainSocketService {
  WordChainSocketServiceImpl(
    super.deviceAuthService,
    super.authDataSource,
    super.firebaseAuthService,
    this._gameStateMapper,
    this._rewardMapper,
    this._routingService,
  );

  final GameStateDataMapper _gameStateMapper;
  final RewardDataMapper _rewardMapper;
  final RealtimeRoutingService _routingService;

  String? _currentRoomCode;
  ChainStateEvent? _lastChainState;
  Map<String, dynamic>? _lastMatchmakeArgs;
  Map<String, dynamic>? _lastRoomArgs;

  @override
  String get logTag => 'WordChainSocketService';

  @override
  String? get currentRoomCode => _currentRoomCode;

  @override
  ChainStateEvent? get lastChainState => _lastChainState;

  @override
  bool isConnectedToRoom(String roomCode) {
    if (!isConnected || _currentRoomCode == null) return false;
    final normalized = roomCode.trim().toUpperCase().replaceFirst(
      RegExp('^ROOM_'),
      '',
    );
    return _currentRoomCode == normalized;
  }

  @override
  Future<void> connectMatchmake({
    required String uid,
    required String name,
    String? token,
    String? avatar,
    bool relaxed = false,
    String lang = 'en',
  }) async {
    _currentRoomCode = null;
    _lastChainState = null;
    _lastMatchmakeArgs = {
      'uid': uid,
      'name': name,
      'token': token,
      'avatar': avatar,
      'relaxed': relaxed,
      'lang': lang,
    };
    _lastRoomArgs = null;

    final config = await _routingService.getConfig();
    final isGo = _routingService.isGoChainMatchmaking(config: config);

    if (isGo) {
      Log.d(
        'Routing word chain matchmaking to Go Server (First-Frame Auth)',
        name: logTag,
      );
      final effectiveToken = await resolveToken(token);
      final deviceSecret = await deviceAuthService.getDeviceSecret();
      final url = SocketUrlBuilder.goChainMatchmakeWsUrl();

      await connectUrl(
        url,
        firstFrameAuth: FirstFrameAuth(
          uid: uid,
          token: effectiveToken,
          deviceSecret: deviceSecret,
        ),
      );
      return;
    }

    // ── Fallback: Cloudflare Worker (Ticket Auth) ───────────────────
    Log.d(
      'Routing word chain matchmaking to Cloudflare Worker (Ticket Auth)',
      name: logTag,
    );
    var effectiveToken = await resolveToken(token);
    String? ticket;
    try {
      ticket = await authDataSource.getSocketTicket(
        uid: uid,
        path: '/ws/chain-matchmake',
        token: effectiveToken,
      );
    } on Object catch (e) {
      Log.e('Failed to get chain matchmake socket ticket: $e', name: logTag);
    }

    if (ticket == null || ticket.isEmpty) {
      Log.d(
        'Retrying getSocketTicket with force-refreshed token...',
        name: logTag,
      );
      try {
        effectiveToken = await resolveToken(null, forceRefresh: true);
        ticket = await authDataSource.getSocketTicket(
          uid: uid,
          path: '/ws/chain-matchmake',
          token: effectiveToken,
        );
      } on Object catch (e) {
        Log.e('Retry getSocketTicket failed: $e', name: logTag);
      }
    }

    if (ticket == null || ticket.isEmpty) {
      Log.e('Unable to obtain socket ticket for chain matchmake', name: logTag);
      emitEvent(
        const SocketErrorEvent(
          message: 'Không thể khởi tạo vé kết nối máy chủ. Vui lòng thử lại.',
        ),
      );
      updateState(SocketConnectionState.disconnected);
      return;
    }

    final url = SocketUrlBuilder.chainMatchmakeWsUrl(
      uid: uid,
      name: name,
      ticket: ticket,
      relaxed: relaxed,
      lang: lang,
      avatar: avatar,
    );
    await connectUrl(url);
  }

  @override
  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? token,
    String? avatar,
    bool relaxed = false,
    String lang = 'en',
  }) async {
    final normalizedCode = roomCode.trim().toUpperCase().replaceFirst(
      RegExp('^ROOM_'),
      '',
    );

    if (isConnectedToRoom(normalizedCode)) {
      Log.d(
        'Already connected to room $normalizedCode, reusing connection.',
        name: logTag,
      );
      if (_lastChainState != null) {
        emitEvent(_lastChainState!);
      }
      return;
    }

    _currentRoomCode = normalizedCode;
    _lastChainState = null;
    _lastRoomArgs = {
      'roomCode': normalizedCode,
      'uid': uid,
      'name': name,
      'token': token,
      'avatar': avatar,
      'relaxed': relaxed,
      'lang': lang,
    };
    _lastMatchmakeArgs = null;

    final config = await _routingService.getConfig();
    final isGo = _routingService.isGoChainRoom(normalizedCode, config: config);

    if (isGo) {
      Log.d(
        'Routing chain room $normalizedCode to Go Server (First-Frame Auth)',
        name: logTag,
      );
      final effectiveToken = await resolveToken(token);
      final deviceSecret = await deviceAuthService.getDeviceSecret();
      final url = SocketUrlBuilder.goChainRoomWsUrl(normalizedCode);

      await connectUrl(
        url,
        firstFrameAuth: FirstFrameAuth(
          uid: uid,
          token: effectiveToken,
          deviceSecret: deviceSecret,
        ),
      );
      return;
    }

    // ── Fallback: Cloudflare Worker (Ticket Auth) ───────────────────
    Log.d(
      'Routing chain room $normalizedCode to Cloudflare Worker (Ticket Auth)',
      name: logTag,
    );
    var effectiveToken = await resolveToken(token);
    String? ticket;
    try {
      ticket = await authDataSource.getSocketTicket(
        uid: uid,
        path: '/ws/chain/$normalizedCode',
        token: effectiveToken,
      );
    } on Object catch (e) {
      Log.e('Failed to get chain room socket ticket: $e', name: logTag);
    }

    if (ticket == null || ticket.isEmpty) {
      Log.d(
        'Retrying getSocketTicket with force-refreshed token '
        'for chain room $normalizedCode...',
        name: logTag,
      );
      try {
        effectiveToken = await resolveToken(null, forceRefresh: true);
        ticket = await authDataSource.getSocketTicket(
          uid: uid,
          path: '/ws/chain/$normalizedCode',
          token: effectiveToken,
        );
      } on Object catch (e) {
        Log.e('Retry getSocketTicket failed for chain room: $e', name: logTag);
      }
    }

    if (ticket == null || ticket.isEmpty) {
      Log.e(
        'Unable to obtain socket ticket for chain room $normalizedCode',
        name: logTag,
      );
      emitEvent(
        const SocketErrorEvent(
          message: 'Không thể khởi tạo vé kết nối phòng đấu. Vui lòng thử lại.',
        ),
      );
      updateState(SocketConnectionState.disconnected);
      return;
    }

    final url = SocketUrlBuilder.chainRoomWsUrl(
      roomCode: normalizedCode,
      uid: uid,
      name: name,
      ticket: ticket,
      relaxed: relaxed,
      lang: lang,
      avatar: avatar,
    );
    await connectUrl(url);
  }

  @override
  void onWelcome(Map<String, dynamic> json) {
    if (_lastMatchmakeArgs != null) {
      final name = _lastMatchmakeArgs!['name'] as String? ?? 'Player';
      final avatar = _lastMatchmakeArgs!['avatar'] as String? ?? '';
      final relaxed = _lastMatchmakeArgs!['relaxed'] as bool? ?? false;
      Log.d('Sending join frame to Go chain matchmaker queue', name: logTag);
      sendRaw({
        'type': 'join',
        'name': name,
        'avatar': avatar,
        'relaxed': relaxed,
      });
    }
  }

  @override
  Future<void> reconnect() async {
    if (_lastRoomArgs != null) {
      final args = _lastRoomArgs!;
      await connectRoom(
        roomCode: args['roomCode'] as String,
        uid: args['uid'] as String,
        name: args['name'] as String,
        token: args['token'] as String?,
        avatar: args['avatar'] as String?,
        relaxed: args['relaxed'] as bool? ?? false,
        lang: args['lang'] as String? ?? 'en',
      );
      return;
    }
    if (_lastMatchmakeArgs != null) {
      final args = _lastMatchmakeArgs!;
      await connectMatchmake(
        uid: args['uid'] as String,
        name: args['name'] as String,
        token: args['token'] as String?,
        avatar: args['avatar'] as String?,
        relaxed: args['relaxed'] as bool? ?? false,
        lang: args['lang'] as String? ?? 'en',
      );
      return;
    }
    await super.reconnect();
  }

  @override
  Future<void> disconnect() async {
    _currentRoomCode = null;
    _lastChainState = null;
    _lastMatchmakeArgs = null;
    _lastRoomArgs = null;
    await super.disconnect();
  }

  @override
  void sendWord({required String word, required int turnId}) {
    sendRaw({
      'type': 'word',
      'word': word,
      'turnId': turnId,
    });
  }

  @override
  void sendChat(String text) {
    sendRaw({
      'type': 'chat',
      'text': text,
    });
  }

  @override
  void sendAway({required String sessionId, required String awayId}) {
    sendRaw({
      'type': 'away',
      'sessionId': sessionId,
      'awayId': awayId,
    });
  }

  @override
  void sendSurrender() {
    sendRaw({'type': 'surrender'});
  }

  @override
  void sendRematch({required String sessionId}) {
    sendRaw({
      'type': 'rematch',
      'sessionId': sessionId,
    });
  }

  @override
  void sendCancel() {
    sendRaw({'type': 'cancel'});
  }

  @override
  FutureOr<void> handleGameEvent(String type, Map<String, dynamic> json) async {
    switch (type) {
      case 'queued':
        emitEvent(MatchmakeQueuedEvent.fromJson(json));
      case 'matched':
      case 'match_found':
        isNormalServerClose = true;
        final roomCode = json['roomCode']?.toString() ?? '';
        final opponent = json['opponent'] as Map<String, dynamic>?;
        final rivalName = opponent?['name']?.toString() ??
            json['rivalName']?.toString() ??
            'Đối thủ';
        final rivalAvatar = opponent?['avatar']?.toString() ??
            json['rivalAvatar']?.toString() ??
            '';
        emitEvent(
          MatchmakeMatchedEvent(
            matchId: json['matchId']?.toString() ?? '',
            roomCode: roomCode,
            playerIndex: json['playerIndex'] as int? ?? 0,
            rivalName: rivalName,
            rivalAvatar: rivalAvatar,
            topicId: json['topicId']?.toString() ?? 'word-chain',
          ),
        );
      case 'connected':
        sendRaw({'type': 'ready'});
        final rawState = json['state'] as Map<String, dynamic>?;
        if (rawState != null) {
          final gameStateData = GameStateData.fromJson(rawState);
          final gameState = _gameStateMapper.mapToEntity(gameStateData);
          final event = ChainStateEvent(
            playerIndex: json['playerIndex'] as int? ?? 0,
            roomCode: json['roomCode']?.toString() ?? '',
            state: gameState,
            rivalName: json['rivalName'] as String?,
            rivalAvatar: json['rivalAvatar'] as String?,
            serverNow: json['serverNow'] as int?,
            sessionId:
                json['sessionId'] as String? ??
                rawState['sessionId'] as String?,
          );
          _lastChainState = event;
          emitEvent(event);
        }
      case 'match_start':
      case 'chain_state':
      case 'word_accepted':
        final rawState = json['state'] as Map<String, dynamic>? ?? {};
        if (rawState.isNotEmpty) {
          final gameStateData = GameStateData.fromJson(rawState);
          final gameState = _gameStateMapper.mapToEntity(gameStateData);
          final event = ChainStateEvent(
            playerIndex: json['playerIndex'] as int? ?? 0,
            roomCode: json['roomCode']?.toString() ?? _currentRoomCode ?? '',
            state: gameState,
            rivalName: json['rivalName'] as String?,
            rivalAvatar: json['rivalAvatar'] as String?,
            serverNow: json['serverNow'] as int?,
            sessionId:
                json['sessionId'] as String? ??
                rawState['sessionId'] as String?,
          );
          _lastChainState = event;
          emitEvent(event);
        } else {
          emitEvent(const ChainWordCheckedEvent());
        }
      case 'word_checking':
        emitEvent(ChainWordCheckingEvent.fromJson(json));
      case 'word_checked':
        emitEvent(const ChainWordCheckedEvent());
      case 'word_rejected':
        emitEvent(ChainWordRejectedEvent.fromJson(json));
      case 'dictionary_unavailable':
        emitEvent(const ChainDictionaryUnavailableEvent());
      case 'away_warning':
        emitEvent(ChainAwayWarningEvent.fromJson(json));
      case 'chat_message':
        emitEvent(ChainChatMessageEvent.fromJson(json));
      case 'session_reward':
        final rawReward = json['reward'] as Map<String, dynamic>? ?? {};
        final rewardData = RewardData.fromJson(rawReward);
        final reward = _rewardMapper.mapToEntity(rewardData);
        emitEvent(
          ChainSessionRewardEvent(
            sessionId: json['sessionId'] as String? ?? '',
            reward: reward,
          ),
        );
      case 'rematch_waiting':
        emitEvent(RoomRematchWaitingEvent.fromJson(json));
      case 'player_left':
      case 'player_disconnected':
      case 'timeout':
        emitEvent(RoomPlayerLeftEvent.fromJson(json));
      default:
        emitEvent(SocketRawMessageEvent(json));
    }
  }
}
