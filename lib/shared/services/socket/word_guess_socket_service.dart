import 'dart:async';

import 'package:bufopia/shared/services/socket/base_socket_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/realtime_routing_service.dart';
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
    String? difficulty,
  });

  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? token,
    String? avatar,
    String? topic,
    String? difficulty,
    bool isMatchmaking = false,
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
    this._routingService,
  );

  final RealtimeRoutingService _routingService;

  String? _currentRoomCode;
  String? _myUid;
  final Map<String, int> _playerIndexMap = {};
  Map<String, dynamic>? _lastMatchmakeArgs;
  Map<String, dynamic>? _lastRoomArgs;

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
    String? difficulty,
  }) async {
    _currentRoomCode = null;
    _myUid = uid;
    _playerIndexMap.clear();
    _lastMatchmakeArgs = {
      'uid': uid,
      'name': name,
      'topic': topic,
      'token': token,
      'avatar': avatar,
      'difficulty': difficulty,
    };
    _lastRoomArgs = null;

    final config = await _routingService.getConfig();
    final isGo = _routingService.isGoGuessMatchmaking(config: config);

    if (isGo) {
      Log.d(
        'Routing word guess matchmaking to Go Server (First-Frame Auth)',
        name: logTag,
      );
      final effectiveToken = await resolveToken(token);
      final deviceSecret = await deviceAuthService.getDeviceSecret();
      final url = SocketUrlBuilder.goGuessMatchmakeWsUrl();

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
      'Routing word guess matchmaking to Cloudflare Worker (Ticket Auth)',
      name: logTag,
    );
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
      difficulty: difficulty,
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
    String? topic,
    String? difficulty,
    bool isMatchmaking = false,
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
    _lastRoomArgs = {
      'roomCode': normalizedCode,
      'uid': uid,
      'name': name,
      'token': token,
      'avatar': avatar,
      'topic': topic,
      'difficulty': difficulty,
      'isMatchmaking': isMatchmaking,
    };
    _lastMatchmakeArgs = null;

    final config = await _routingService.getConfig();
    final isGo = _routingService.isGoGuessRoom(normalizedCode, config: config);

    if (isGo) {
      Log.d(
        'Routing word guess room $normalizedCode to Go Server '
        '(First-Frame Auth)',
        name: logTag,
      );
      final effectiveToken = await resolveToken(token);
      final deviceSecret = await deviceAuthService.getDeviceSecret();
      final url = SocketUrlBuilder.goGuessRoomWsUrl(normalizedCode);

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
      'Routing word guess room $normalizedCode to Worker (Ticket Auth)',
      name: logTag,
    );
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
      topic: topic,
      avatar: avatar,
      difficulty: difficulty,
    );
    await connectUrl(url);
    sendRaw({
      'type': 'join',
      'name': name,
      'avatar': avatar,
    });
  }

  @override
  void onWelcome(Map<String, dynamic> json) {
    final welcomeUid = json['uid']?.toString();
    if (welcomeUid != null && welcomeUid.isNotEmpty) {
      _myUid = welcomeUid;
    }
    if (_lastMatchmakeArgs != null) {
      final name = _lastMatchmakeArgs!['name'] as String? ?? 'Player';
      final avatar = _lastMatchmakeArgs!['avatar'] as String? ?? '';
      final topic = _lastMatchmakeArgs!['topic'] as String? ?? 'auto';
      Log.d('Sending join frame to Go guess matchmaker queue', name: logTag);
      sendRaw({
        'type': 'join',
        'name': name,
        'avatar': avatar,
        'topic': topic,
        'rating': 1200,
      });
    } else if (_lastRoomArgs != null) {
      final name = _lastRoomArgs!['name'] as String? ?? 'Player';
      final avatar = _lastRoomArgs!['avatar'] as String? ?? '';
      final isMatchmaking = _lastRoomArgs!['isMatchmaking'] as bool? ?? false;
      Log.d(
        'Sending join_room to Go guess room: '
        '${_lastRoomArgs!['roomCode']} (isMatchmaking: $isMatchmaking)',
        name: logTag,
      );
      sendRaw({
        'type': 'join_room',
        'name': name,
        'avatar': avatar,
        'rating': 1200,
        'isMatchmaking': isMatchmaking,
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
        topic: args['topic'] as String?,
        difficulty: args['difficulty'] as String?,
        isMatchmaking: args['isMatchmaking'] as bool? ?? false,
      );
      return;
    }
    if (_lastMatchmakeArgs != null) {
      final args = _lastMatchmakeArgs!;
      await connectMatchmake(
        uid: args['uid'] as String,
        name: args['name'] as String,
        topic: args['topic'] as String? ?? 'auto',
        token: args['token'] as String?,
        avatar: args['avatar'] as String?,
        difficulty: args['difficulty'] as String?,
      );
      return;
    }
    await super.reconnect();
  }

  @override
  Future<void> disconnect() async {
    _currentRoomCode = null;
    _lastMatchmakeArgs = null;
    _lastRoomArgs = null;
    _playerIndexMap.clear();
    await super.disconnect();
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
      'guess': word,
      'sessionId': sessionId,
      'attemptIndex': roundIndex,
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
        final rootMyUid = json['myUid']?.toString() ?? _myUid ?? '';
        if (rootMyUid.isNotEmpty) _myUid = rootMyUid;
        final state = json['state'] as Map<String, dynamic>? ?? json;
        if ((state['myUid'] == null || state['myUid'].toString().isEmpty) &&
            _myUid != null &&
            _myUid!.isNotEmpty) {
          state['myUid'] = _myUid;
        }
        if (state['timeLeft'] == null || state['timeLeft'] == 0) {
          final deadline = (state['deadline'] as num?)?.toInt() ?? 0;
          final serverNow = (state['serverNow'] as num?)?.toInt() ?? 0;
          final remainingMs = (state['remainingMs'] as num?)?.toInt() ?? 0;
          if (deadline > 0 && serverNow > 0 && deadline > serverNow) {
            state['timeLeft'] = ((deadline - serverNow) / 1000).round();
          } else if (remainingMs > 0) {
            state['timeLeft'] = (remainingMs / 1000).round();
          }
        }
        _updatePlayers(state['players']);
        emitEvent(GuessRoomStateEvent(rawState: state));
      case 'word_solved':
        emitEvent(GuessWordSolvedEvent.fromJson(json));
      case 'word_hint':
        emitEvent(GuessWordHintEvent.fromJson(json));
      case 'word_phonetic':
        emitEvent(GuessWordPhoneticEvent.fromJson(json));
      case 'game_start':
        final masked =
            json['masked'] as String? ??
            ('_' * (json['targetLength'] as int? ?? 5));
        final clue = json['clue'] as String? ?? json['vi'] as String? ?? '';
        final length =
            json['targetLength'] as int? ??
            json['length'] as int? ??
            masked.length;
        final state = <String, dynamic>{
          'status': 'playing',
          if (json.containsKey('players')) 'players': json['players'],
          'wordInfo': {
            'masked': masked,
            'vi': clue,
            'length': length,
            if (json['phonetic'] != null) 'phonetic': json['phonetic'],
            if (json['word'] != null) 'en': json['word'],
          },
        };
        emitEvent(GuessRoomStateEvent(rawState: state));
      case 'guess':
      case 'guess_attempt':
      case 'guess_result':
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
      case 'match_found':
        isNormalServerClose = true;
        emitEvent(MatchmakeMatchedEvent.fromJson(json));
      case 'player_left':
      case 'player_disconnected':
        emitEvent(RoomPlayerLeftEvent.fromJson(json));
      default:
        emitEvent(SocketRawMessageEvent(json));
    }
  }
}
