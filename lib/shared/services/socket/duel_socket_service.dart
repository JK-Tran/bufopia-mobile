import 'dart:async';

import 'package:bufopia/shared/services/socket/base_socket_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/realtime_routing_service.dart';
import 'package:bufopia/shared/services/socket/socket_url_builder.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';

/// Service quản lý WebSocket cho chế độ thi đấu Vocabulary Duel / Quick Battle
abstract class DuelSocketService {
  Stream<SocketEvent> get eventStream;
  SocketConnectionState get connectionState;
  Stream<SocketConnectionState> get connectionStateStream;
  bool get isConnected;

  Future<void> connectMatchmake({
    required String uid,
    String? token,
    String topic = 'auto',
    String? name,
    String? avatar,
  });

  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    String topic = 'auto',
    String? token,
    String? name,
    String? avatar,
  });

  void sendInitDeck({
    required String topicId,
    List<Map<String, dynamic>> deck = const [],
  });

  void sendReady({int matchRound = 1});
  void sendMatchAnswer({
    required int matchRound,
    required int roundIndex,
    required String optionId,
    String? selectedAnswer,
    bool? isCorrect,
    double? timeSpent,
    int? scoreDelta,
  });

  /// Gửi cancel để hủy tìm trận (chỉ dùng trong Matchmaker)
  void sendCancel();

  void sendRematch({int? matchRound});
  void sendLeave();
  void sendRaw(Map<String, dynamic> data);

  Future<void> disconnect();
  Future<void> dispose();
}

@LazySingleton(as: DuelSocketService)
class DuelSocketServiceImpl extends BaseSocketService
    implements DuelSocketService {
  DuelSocketServiceImpl(
    super.deviceAuthService,
    super.authDataSource,
    super.firebaseAuthService,
    this._routingService,
  );

  final RealtimeRoutingService _routingService;

  Map<String, dynamic>? _lastMatchmakeArgs;
  Map<String, dynamic>? _lastRoomArgs;

  @override
  String get logTag => 'DuelSocketService';

  @override
  Future<void> connectMatchmake({
    required String uid,
    String? token,
    String topic = 'auto',
    String? name,
    String? avatar,
  }) async {
    _lastMatchmakeArgs = {
      'uid': uid,
      'token': token,
      'topic': topic,
      'name': name,
      'avatar': avatar,
    };
    _lastRoomArgs = null;

    final config = await _routingService.getConfig();
    final isGo = _routingService.isGoMatchmaking(config: config);

    if (isGo) {
      Log.d(
        'Routing duel matchmaking to Go Realtime Server (First-Frame Auth)',
        name: logTag,
      );
      final effectiveToken = await resolveToken(token);
      final deviceSecret = await deviceAuthService.getDeviceSecret();
      final url = SocketUrlBuilder.goQuizMatchmakeWsUrl();

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

    // ── Fallback: Cloudflare Worker (Ticket-based) ──────────────────
    Log.d(
      'Routing duel matchmaking to Cloudflare Worker (Ticket Auth)',
      name: logTag,
    );
    var effectiveToken = await resolveToken(token);
    String? ticket;
    try {
      ticket = await authDataSource.getSocketTicket(
        uid: uid,
        path: '/ws/matchmake',
        token: effectiveToken,
      );
    } on Object catch (e) {
      Log.e('Failed to get matchmake socket ticket: $e', name: logTag);
    }

    if (ticket == null || ticket.isEmpty) {
      Log.d(
        'Retrying getSocketTicket with force-refreshed token '
        'for duel matchmake...',
        name: logTag,
      );
      try {
        effectiveToken = await resolveToken(null, forceRefresh: true);
        ticket = await authDataSource.getSocketTicket(
          uid: uid,
          path: '/ws/matchmake',
          token: effectiveToken,
        );
      } on Object catch (e) {
        Log.e(
          'Retry getSocketTicket failed for duel matchmake: $e',
          name: logTag,
        );
      }
    }

    if (ticket == null || ticket.isEmpty) {
      Log.e('Unable to obtain socket ticket for duel matchmake', name: logTag);
      emitEvent(
        const SocketErrorEvent(
          message: 'Không thể khởi tạo vé kết nối máy chủ. Vui lòng thử lại.',
        ),
      );
      updateState(SocketConnectionState.disconnected);
      return;
    }

    final url = SocketUrlBuilder.matchmakeWsUrl(
      uid: uid,
      ticket: ticket,
      topic: topic,
      name: name,
      avatar: avatar,
    );
    await connectUrl(url);
  }

  @override
  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    String topic = 'auto',
    String? token,
    String? name,
    String? avatar,
  }) async {
    _lastRoomArgs = {
      'roomCode': roomCode,
      'uid': uid,
      'token': token,
      'topic': topic,
      'name': name,
      'avatar': avatar,
    };
    _lastMatchmakeArgs = null;

    final config = await _routingService.getConfig();
    final isGo = _routingService.isGoQuizRoom(roomCode, config: config);

    if (isGo) {
      Log.d(
        'Routing quiz room $roomCode to Go Realtime Server (First-Frame Auth)',
        name: logTag,
      );
      final effectiveToken = await resolveToken(token);
      final deviceSecret = await deviceAuthService.getDeviceSecret();
      final url = SocketUrlBuilder.goQuizRoomWsUrl(roomCode);

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

    // ── Fallback: Cloudflare Worker (Ticket-based) ──────────────────
    Log.d(
      'Routing quiz room $roomCode to Cloudflare Worker (Ticket Auth)',
      name: logTag,
    );
    var effectiveToken = await resolveToken(token);
    String? ticket;
    try {
      ticket = await authDataSource.getSocketTicket(
        uid: uid,
        path: '/ws/room/$roomCode',
        token: effectiveToken,
      );
    } on Object catch (e) {
      Log.e('Failed to get room socket ticket: $e', name: logTag);
    }

    if (ticket == null || ticket.isEmpty) {
      Log.d(
        'Retrying getSocketTicket with force-refreshed token '
        'for duel room $roomCode...',
        name: logTag,
      );
      try {
        effectiveToken = await resolveToken(null, forceRefresh: true);
        ticket = await authDataSource.getSocketTicket(
          uid: uid,
          path: '/ws/room/$roomCode',
          token: effectiveToken,
        );
      } on Object catch (e) {
        Log.e('Retry getSocketTicket failed for duel room: $e', name: logTag);
      }
    }

    if (ticket == null || ticket.isEmpty) {
      Log.e(
        'Unable to obtain socket ticket for duel room $roomCode',
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

    final url = SocketUrlBuilder.roomWsUrl(
      roomCode: roomCode,
      uid: uid,
      ticket: ticket,
      topic: topic,
      name: name,
      avatar: avatar,
    );
    await connectUrl(url);
  }

  @override
  void onWelcome(Map<String, dynamic> json) {
    // Nếu đang trong hàng đợi tìm trận Go Server, gửi frame join sau Welcome
    if (_lastMatchmakeArgs != null) {
      final name = _lastMatchmakeArgs!['name'] as String? ?? 'Player';
      final avatar = _lastMatchmakeArgs!['avatar'] as String? ?? '';
      Log.d('Sending join frame to Go matchmaker queue', name: logTag);
      sendRaw({
        'type': 'join',
        'name': name,
        'avatar': avatar,
        'rating': 1200,
        'level': 5,
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
        token: args['token'] as String?,
        topic: args['topic'] as String? ?? 'auto',
        name: args['name'] as String?,
        avatar: args['avatar'] as String?,
      );
      return;
    }
    if (_lastMatchmakeArgs != null) {
      final args = _lastMatchmakeArgs!;
      await connectMatchmake(
        uid: args['uid'] as String,
        token: args['token'] as String?,
        topic: args['topic'] as String? ?? 'auto',
        name: args['name'] as String?,
        avatar: args['avatar'] as String?,
      );
      return;
    }
    await super.reconnect();
  }

  @override
  Future<void> disconnect() async {
    _lastMatchmakeArgs = null;
    _lastRoomArgs = null;
    await super.disconnect();
  }

  @override
  void sendInitDeck({
    required String topicId,
    List<Map<String, dynamic>> deck = const [],
  }) {
    sendRaw({
      'type': 'init_deck',
      'topicId': topicId,
      if (deck.isNotEmpty) 'deck': deck,
    });
  }

  @override
  void sendReady({int matchRound = 1}) {
    sendRaw({
      'type': 'ready',
      'matchRound': matchRound,
    });
  }

  @override
  void sendMatchAnswer({
    required int matchRound,
    required int roundIndex,
    required String optionId,
    String? selectedAnswer,
    bool? isCorrect,
    double? timeSpent,
    int? scoreDelta,
  }) {
    final payload = <String, dynamic>{
      'type': 'answer',
      'matchRound': matchRound,
      'roundIndex': roundIndex,
      'questionIndex': roundIndex,
      'optionId': optionId,
    };
    if (selectedAnswer != null) payload['selectedAnswer'] = selectedAnswer;
    if (isCorrect != null) payload['isCorrect'] = isCorrect;
    if (timeSpent != null) payload['timeSpent'] = timeSpent;
    if (scoreDelta != null) payload['scoreDelta'] = scoreDelta;
    sendRaw(payload);
  }

  @override
  void sendCancel() {
    sendRaw({'type': 'cancel'});
  }

  @override
  void sendRematch({int? matchRound}) {
    sendRaw({
      'type': 'rematch',
      'matchRound': matchRound ?? 1,
    });
  }

  @override
  void sendLeave() {
    sendRaw({'type': 'leave'});
  }

  @override
  void handleGameEvent(String type, Map<String, dynamic> json) {
    switch (type) {
      case 'queued':
        emitEvent(MatchmakeQueuedEvent.fromJson(json));
      case 'matched':
      case 'match_found':
        // Server tự đóng WS sau khi gửi `matched` / `match_found`
        isNormalServerClose = true;
        emitEvent(MatchmakeMatchedEvent.fromJson(json));

      case 'connected':
        emitEvent(RoomConnectedEvent.fromJson(json));
      case 'player_joined':
        emitEvent(RoomPlayerJoinedEvent.fromJson(json));

      case 'match_start':
        emitEvent(RoomMatchStartEvent.fromJson(json));
      case 'game_start':
        emitEvent(RoomGameStartEvent.fromJson(json));

      case 'sync_state':
        emitEvent(RoomSyncStateEvent.fromJson(json));

      case 'answer_result':
        emitEvent(RoomAnswerResultEvent.fromJson(json));

      case 'round_timeout':
        emitEvent(RoomRoundTimeoutEvent.fromJson(json));

      case 'next_round':
        emitEvent(RoomNextRoundEvent.fromJson(json));

      case 'match_finished':
        emitEvent(RoomMatchFinishedEvent.fromJson(json));
      case 'game_over':
        emitEvent(RoomGameOverEvent.fromJson(json));

      case 'rematch_waiting':
      case 'rematch_request':
        emitEvent(RoomRematchWaitingEvent.fromJson(json));
      case 'rematch_accepted':
        break;

      case 'player_left':
      case 'player_disconnected':
        emitEvent(RoomPlayerLeftEvent.fromJson(json));

      case 'ready_ack':
        // Server xác nhận ready — chờ sync_state
        break;

      default:
        emitEvent(SocketRawMessageEvent(json));
    }
  }
}
