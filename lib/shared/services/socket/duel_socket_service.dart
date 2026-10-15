import 'dart:async';

import 'package:bufopia/shared/services/socket/base_socket_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
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
  );

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
      'topic': topic,
      'name': name,
      'avatar': avatar,
    };
    _lastRoomArgs = null;
    var effectiveToken = await resolveToken(token);
    String? ticket;
    try {
      ticket = await authDataSource.getSocketTicket(
        uid: uid,
        path: '/ws/matchmake',
        token: effectiveToken,
      );
    } on Object catch (e) {
      Log.e(
        'Failed to get matchmake socket ticket: $e',
        name: logTag,
      );
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
      'topic': topic,
      'name': name,
      'avatar': avatar,
    };
    _lastMatchmakeArgs = null;
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
  Future<void> reconnect() async {
    if (_lastRoomArgs != null) {
      final args = _lastRoomArgs!;
      await connectRoom(
        roomCode: args['roomCode'] as String,
        uid: args['uid'] as String,
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
  }) {
    sendRaw({
      'type': 'answer',
      'matchRound': matchRound,
      'roundIndex': roundIndex,
      'optionId': optionId,
    });
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
        // Server tự đóng WS sau khi gửi `matched` — đây là normal close.
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
        emitEvent(RoomRematchWaitingEvent.fromJson(json));

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
