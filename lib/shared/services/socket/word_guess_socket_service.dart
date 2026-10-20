import 'dart:async';

import 'package:bufopia/shared/services/socket/base_socket_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/socket_url_builder.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';

abstract class WordGuessSocketService {
  Stream<SocketEvent> get eventStream;
  SocketConnectionState get connectionState;
  Stream<SocketConnectionState> get connectionStateStream;
  bool get isConnected;
  String? get currentRoomCode;

  Future<void> connectMatchmake({
    required String uid,
    required String name,
    required String topic,
    String? token,
    String? avatar,
  });

  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? token,
    String? avatar,
  });

  void sendGuess({
    required String word,
    required String sessionId,
    required int roundIndex,
  });

  void sendSkip({
    required String sessionId,
    required int roundIndex,
  });

  void sendVote({
    required String proposalId,
    required bool agree,
    required String sessionId,
    required int roundIndex,
  });

  void sendToggleReady();
  void sendStartGame();
  void sendUpdateConfig({String? topicId, int? durationSeconds});
  void sendEnd({required String sessionId});
  void sendChat(String text);
  void sendRestart({required String sessionId});
  void sendLeave();
  void sendCancel();

  Future<void> disconnect();
  Future<void> dispose();
}

@LazySingleton(as: WordGuessSocketService)
class WordGuessSocketServiceImpl extends BaseSocketService
    implements WordGuessSocketService {
  WordGuessSocketServiceImpl(
    super.deviceAuthService,
    super.authDataSource,
    super.firebaseAuthService,
  );

  String? _currentRoomCode;
  String? _myUid;
  final Map<String, int> _playerIndexMap = {};

  @override
  String get logTag => 'WordGuessSocketService';

  @override
  String? get currentRoomCode => _currentRoomCode;

  @override
  Future<void> connectMatchmake({
    required String uid,
    required String name,
    required String topic,
    String? token,
    String? avatar,
  }) async {
    _currentRoomCode = null;
    _myUid = uid;
    _playerIndexMap.clear();
    var effectiveToken = await resolveToken(token);
    String? ticket;
    try {
      ticket = await authDataSource.getSocketTicket(
        uid: uid,
        path: '/ws/guess-matchmake',
        token: effectiveToken,
      );
    } on Object catch (e) {
      Log.e('Failed to get guess matchmake socket ticket: $e', name: logTag);
    }

    if (ticket == null || ticket.isEmpty) {
      try {
        effectiveToken = await resolveToken(null, forceRefresh: true);
        ticket = await authDataSource.getSocketTicket(
          uid: uid,
          path: '/ws/guess-matchmake',
          token: effectiveToken,
        );
      } on Object catch (e) {
        Log.e('Retry getSocketTicket failed for matchmake: $e', name: logTag);
      }
    }

    if (ticket == null || ticket.isEmpty) {
      emitEvent(
        const SocketErrorEvent(
          message: 'Không thể khởi tạo vé kết nối tìm trận.',
        ),
      );
      updateState(SocketConnectionState.disconnected);
      return;
    }

    final url = SocketUrlBuilder.guessMatchmakeWsUrl(
      uid: uid,
      name: name,
      ticket: ticket,
      topic: topic,
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
  }) async {
    final normalizedCode = roomCode.trim().toUpperCase().replaceFirst(
      RegExp('^ROOM_'),
      '',
    );
    if (isConnected && _currentRoomCode == normalizedCode) {
      Log.d(
        'Already connected to room $normalizedCode, keeping active socket',
        name: logTag,
      );
      return;
    }
    _currentRoomCode = normalizedCode;
    _myUid = uid;
    _playerIndexMap.clear();
    var effectiveToken = await resolveToken(token);
    String? ticket;
    try {
      ticket = await authDataSource.getSocketTicket(
        uid: uid,
        path: '/ws/guess/$normalizedCode',
        token: effectiveToken,
      );
    } on Object catch (e) {
      Log.e('Failed to get guess room socket ticket: $e', name: logTag);
    }

    if (ticket == null || ticket.isEmpty) {
      try {
        effectiveToken = await resolveToken(null, forceRefresh: true);
        ticket = await authDataSource.getSocketTicket(
          uid: uid,
          path: '/ws/guess/$normalizedCode',
          token: effectiveToken,
        );
      } on Object catch (e) {
        Log.e('Retry getSocketTicket failed for room: $e', name: logTag);
      }
    }

    if (ticket == null || ticket.isEmpty) {
      emitEvent(
        const SocketErrorEvent(
          message: 'Không thể khởi tạo vé kết nối phòng đấu.',
        ),
      );
      updateState(SocketConnectionState.disconnected);
      return;
    }

    final url = SocketUrlBuilder.guessRoomWsUrl(
      roomCode: normalizedCode,
      uid: uid,
      name: name,
      ticket: ticket,
      avatar: avatar,
    );
    await connectUrl(url);
  }

  @override
  void sendGuess({
    required String word,
    required String sessionId,
    required int roundIndex,
  }) {
    sendRaw({
      'type': 'guess',
      'word': word,
      'sessionId': sessionId,
      'roundIndex': roundIndex,
    });
  }

  @override
  void sendSkip({
    required String sessionId,
    required int roundIndex,
  }) {
    sendRaw({
      'type': 'skip',
      'sessionId': sessionId,
      'roundIndex': roundIndex,
    });
  }

  @override
  void sendVote({
    required String proposalId,
    required bool agree,
    required String sessionId,
    required int roundIndex,
  }) {
    sendRaw({
      'type': 'vote',
      'proposalId': proposalId,
      'agree': agree,
      'sessionId': sessionId,
      'roundIndex': roundIndex,
    });
  }

  @override
  void sendToggleReady() {
    sendRaw({'type': 'toggle_ready'});
  }

  @override
  void sendStartGame() {
    sendRaw({'type': 'start_game'});
  }

  @override
  void sendUpdateConfig({String? topicId, int? durationSeconds}) {
    final payload = <String, dynamic>{'type': 'update_config'};
    if (topicId != null) payload['topicId'] = topicId;
    if (durationSeconds != null) payload['durationSeconds'] = durationSeconds;
    sendRaw(payload);
  }

  @override
  void sendEnd({required String sessionId}) {
    // BE sử dụng type: "end"
    sendRaw({
      'type': 'end',
      'sessionId': sessionId,
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
  void sendRestart({required String sessionId}) {
    sendRaw({
      'type': 'restart',
      'sessionId': sessionId,
    });
  }

  @override
  void sendLeave() {
    sendRaw({'type': 'leave'});
  }

  @override
  void sendCancel() {
    sendRaw({'type': 'cancel'});
  }

  void _updatePlayers(dynamic playersRaw) {
    if (playersRaw is List) {
      for (var i = 0; i < playersRaw.length; i++) {
        final p = playersRaw[i];
        if (p is Map<String, dynamic>) {
          final uid = p['uid']?.toString();
          final pIdx = p['playerIndex'] as int? ?? i;
          if (uid != null && uid.isNotEmpty) {
            _playerIndexMap[uid] = pIdx;
          }
        }
      }
    }
  }

  @override
  FutureOr<void> handleGameEvent(String type, Map<String, dynamic> json) {
    switch (type) {
      case 'connected':
        final myUid = json['myUid']?.toString() ?? '';
        if (myUid.isNotEmpty) _myUid = myUid;
        final state = json['state'] as Map<String, dynamic>? ?? {};
        _updatePlayers(state['players']);
        emitEvent(GuessRoomConnectedEvent(myUid: myUid, rawState: state));
      case 'room_state':
        final state = json['state'] as Map<String, dynamic>? ?? json;
        _updatePlayers(state['players']);
        emitEvent(GuessRoomStateEvent(rawState: state));
      case 'word_hint':
        emitEvent(GuessWordHintEvent.fromJson(json));
      case 'word_phonetic':
        emitEvent(GuessWordPhoneticEvent.fromJson(json));
      case 'word_solved':
        emitEvent(GuessWordSolvedEvent.fromJson(json));
      case 'guess_attempt':
        emitEvent(GuessAttemptEvent.fromJson(json));
      case 'session_reward':
        emitEvent(
          GuessSessionRewardEvent(
            sessionId: json['sessionId']?.toString() ?? '',
            rawReward: json['reward'] as Map<String, dynamic>? ?? {},
          ),
        );
      case 'chat':
      case 'chat_message':
        final msg =
            json['chatItem'] as Map<String, dynamic>? ??
            json['message'] as Map<String, dynamic>? ??
            json;
        final senderUid = msg['senderUid'] as String? ?? msg['uid']?.toString();
        int? resolvedActor;
        if (msg['actor'] is int) {
          resolvedActor = msg['actor'] as int;
        } else if (senderUid != null &&
            _playerIndexMap.containsKey(senderUid)) {
          resolvedActor = _playerIndexMap[senderUid];
        } else if (senderUid != null && _myUid != null) {
          final myIndex = _playerIndexMap[_myUid] ?? 0;
          resolvedActor = senderUid == _myUid ? myIndex : (1 - myIndex);
        }
        emitEvent(
          ChainChatMessageEvent.fromJson(
            json,
            resolvedActor: resolvedActor,
          ),
        );
      case 'chat_history':
        final rawList =
            json['messages'] as List<dynamic>? ??
            json['chatItems'] as List<dynamic>? ??
            json['history'] as List<dynamic>? ??
            [];
        final messages = rawList.map((m) {
          final map = m as Map<String, dynamic>;
          final senderUid =
              map['senderUid'] as String? ?? map['uid']?.toString();
          int? resolvedActor;
          if (map['actor'] is int) {
            resolvedActor = map['actor'] as int;
          } else if (senderUid != null &&
              _playerIndexMap.containsKey(senderUid)) {
            resolvedActor = _playerIndexMap[senderUid];
          } else if (senderUid != null && _myUid != null) {
            final myIndex = _playerIndexMap[_myUid] ?? 0;
            resolvedActor = senderUid == _myUid ? myIndex : (1 - myIndex);
          }
          return ChainChatMessageEvent.fromJson(
            map,
            resolvedActor: resolvedActor,
          );
        }).toList();
        emitEvent(ChainChatHistoryEvent(messages));
      case 'chat_blocked':
        emitEvent(GuessChatBlockedEvent.fromJson(json));
      case 'proposal_closed':
        emitEvent(GuessProposalClosedEvent.fromJson(json));
      case 'queued':
        emitEvent(MatchmakeQueuedEvent.fromJson(json));
      case 'matched':
        isNormalServerClose = true;
        emitEvent(MatchmakeMatchedEvent.fromJson(json));
      default:
        emitEvent(SocketRawMessageEvent(json));
    }
  }
}
