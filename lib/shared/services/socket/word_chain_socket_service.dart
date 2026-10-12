import 'dart:async';

import 'package:bufopia/features/word_chain/data/mapper/game_state_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/mapper/reward_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/models/game_state_data.dart';
import 'package:bufopia/features/word_chain/data/models/reward_data.dart';
import 'package:bufopia/shared/services/socket/base_socket_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
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
  );

  final GameStateDataMapper _gameStateMapper;
  final RewardDataMapper _rewardMapper;

  String? _currentRoomCode;
  ChainStateEvent? _lastChainState;

  @override
  String get logTag => 'WordChainSocketService';

  @override
  String? get currentRoomCode => _currentRoomCode;

  @override
  ChainStateEvent? get lastChainState => _lastChainState;

  @override
  bool isConnectedToRoom(String roomCode) {
    if (!isConnected || _currentRoomCode == null) return false;
    final normalized =
        roomCode.trim().toUpperCase().replaceFirst(RegExp('^ROOM_'), '');
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
    final effectiveToken = await resolveToken(token);
    String? ticket;
    try {
      ticket = await authDataSource.getSocketTicket(
        uid: uid,
        path: '/ws/chain-matchmake',
        token: effectiveToken,
      );
    } on Object catch (e) {
      Log.e(
        'Failed to get chain matchmake socket ticket: $e',
        name: logTag,
      );
    }
    final effectiveTicket = (ticket != null && ticket.isNotEmpty)
        ? ticket
        : effectiveToken;

    final url = SocketUrlBuilder.chainMatchmakeWsUrl(
      uid: uid,
      name: name,
      ticket: effectiveTicket,
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
    final normalizedCode =
        roomCode.trim().toUpperCase().replaceFirst(RegExp('^ROOM_'), '');

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

    final effectiveToken = await resolveToken(token);
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
    final effectiveTicket = (ticket != null && ticket.isNotEmpty)
        ? ticket
        : effectiveToken;

    final url = SocketUrlBuilder.chainRoomWsUrl(
      roomCode: normalizedCode,
      uid: uid,
      name: name,
      ticket: effectiveTicket,
      relaxed: relaxed,
      lang: lang,
      avatar: avatar,
    );
    await connectUrl(url);
  }

  @override
  Future<void> disconnect() async {
    _currentRoomCode = null;
    _lastChainState = null;
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
        // Server tự đóng WS matchmaking sau khi gửi `matched`
        // — đây là normal close.
        isNormalServerClose = true;
        final roomCode = json['roomCode']?.toString() ?? '';
        final rivalName = json['rivalName']?.toString() ?? 'Đối thủ';
        final rivalAvatar = json['rivalAvatar']?.toString() ?? '';
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
        final rawState = json['state'] as Map<String, dynamic>? ?? {};
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
        emitEvent(RoomPlayerLeftEvent.fromJson(json));
      default:
        emitEvent(SocketRawMessageEvent(json));
    }
  }
}
