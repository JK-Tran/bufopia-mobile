import 'package:bufopia/features/word_chain/domain/entities/game_state.dart';
import 'package:bufopia/features/word_chain/domain/entities/reward.dart';

enum SocketConnectionState {
  disconnected,
  connecting,
  connected,
  reconnecting,
  error,
}

sealed class SocketEvent {
  const SocketEvent();
}

class SocketConnectionChangedEvent extends SocketEvent {
  const SocketConnectionChangedEvent(this.state);
  final SocketConnectionState state;
}

/// Server gửi khi FE đã vào hàng đợi tìm trận.
/// FE nên hiển thị spinner "Đang tìm đối thủ..."
class MatchmakeQueuedEvent extends SocketEvent {
  const MatchmakeQueuedEvent({required this.topicId});

  factory MatchmakeQueuedEvent.fromJson(Map<String, dynamic> json) {
    return MatchmakeQueuedEvent(
      topicId: json['topicId'] as String? ?? 'auto',
    );
  }

  final String topicId;
}

/// Server gửi khi tìm thấy đối thủ. Server tự đóng WS Matchmaker sau đó.
/// FE cần điều hướng ngay đến /ws/room/:roomCode
class MatchmakeMatchedEvent extends SocketEvent {
  const MatchmakeMatchedEvent({
    required this.matchId,
    required this.roomCode,
    required this.playerIndex,
    required this.rivalName,
    required this.rivalAvatar,
    required this.topicId,
  });

  factory MatchmakeMatchedEvent.fromJson(Map<String, dynamic> json) {
    final opponent = json['opponent'] as Map<String, dynamic>?;
    return MatchmakeMatchedEvent(
      matchId: json['matchId'] as String? ?? '',
      roomCode: json['roomCode']?.toString() ?? '',
      playerIndex: json['playerIndex'] as int? ?? 0,
      rivalName: opponent?['name'] as String? ??
          json['rivalName'] as String? ??
          'Đối thủ',
      rivalAvatar: opponent?['avatar'] as String? ??
          json['rivalAvatar'] as String? ??
          '',
      topicId: json['topicId'] as String? ?? 'auto',
    );
  }

  final String matchId;
  final String roomCode;
  final int playerIndex;
  final String rivalName;
  final String rivalAvatar;
  final String topicId;
}

class RoomConnectedEvent extends SocketEvent {
  const RoomConnectedEvent({
    required this.playerIndex,
    required this.roomCode,
    required this.matchId,
    required this.status,
    required this.rivalName,
    required this.rivalAvatar,
  });

  factory RoomConnectedEvent.fromJson(Map<String, dynamic> json) {
    return RoomConnectedEvent(
      playerIndex: json['playerIndex'] as int? ?? 0,
      roomCode: json['roomCode']?.toString() ?? '',
      matchId: json['matchId'] as String? ?? '',
      status: json['status'] as String? ?? '',
      rivalName: json['rivalName'] as String? ?? '',
      rivalAvatar: json['rivalAvatar'] as String? ?? '',
    );
  }

  final int playerIndex;
  final String roomCode;
  final String matchId;
  final String status;
  final String rivalName;
  final String rivalAvatar;
}

class RoomPlayerJoinedEvent extends SocketEvent {
  const RoomPlayerJoinedEvent({
    required this.uid,
    required this.name,
    required this.avatar,
    this.players = const [],
  });

  factory RoomPlayerJoinedEvent.fromJson(Map<String, dynamic> json) {
    final player = json['player'] as Map<String, dynamic>?;
    return RoomPlayerJoinedEvent(
      uid: player?['uid'] as String? ?? json['uid'] as String? ?? '',
      name: player?['name'] as String? ?? json['name'] as String? ?? 'Player',
      avatar: player?['avatar'] as String? ?? json['avatar'] as String? ?? '',
      players:
          (json['players'] as List<dynamic>?)
              ?.map((e) => Map<String, dynamic>.from(e as Map))
              .toList() ??
          const [],
    );
  }

  final String uid;
  final String name;
  final String avatar;
  final List<Map<String, dynamic>> players;
}

class RoomGameStartEvent extends SocketEvent {
  const RoomGameStartEvent({
    required this.deck,
    this.players = const [],
  });

  factory RoomGameStartEvent.fromJson(Map<String, dynamic> json) {
    return RoomGameStartEvent(
      deck:
          (json['deck'] as List<dynamic>?)
              ?.map((e) => Map<String, dynamic>.from(e as Map))
              .toList() ??
          const [],
      players:
          (json['players'] as List<dynamic>?)
              ?.map((e) => Map<String, dynamic>.from(e as Map))
              .toList() ??
          const [],
    );
  }

  final List<Map<String, dynamic>> deck;
  final List<Map<String, dynamic>> players;
}

class RoomMatchStartEvent extends SocketEvent {
  const RoomMatchStartEvent({
    required this.matchId,
    required this.roomCode,
    required this.playerIndex,
    required this.rivalName,
    required this.rivalAvatar,
    required this.matchRound,
    required this.deck,
    this.gameState,
  });

  factory RoomMatchStartEvent.fromJson(Map<String, dynamic> json) {
    final rawDeck = (json['deck'] as List<dynamic>?) ??
        (json['questions'] as List<dynamic>?);
    return RoomMatchStartEvent(
      matchId: json['matchId'] as String? ?? '',
      roomCode: json['roomCode']?.toString() ?? '',
      playerIndex: json['playerIndex'] as int? ?? 0,
      rivalName: json['rivalName'] as String? ?? 'Đối thủ',
      rivalAvatar: json['rivalAvatar'] as String? ?? '',
      matchRound: json['matchRound'] as int? ?? 1,
      deck:
          rawDeck
              ?.map((e) => Map<String, dynamic>.from(e as Map))
              .toList() ??
          const [],
      gameState: json['gameState'] as Map<String, dynamic>?,
    );
  }

  final String matchId;
  final String roomCode;
  final int playerIndex;
  final String rivalName;
  final String rivalAvatar;
  final int matchRound;
  final List<Map<String, dynamic>> deck;
  final Map<String, dynamic>? gameState;
}

class RoomSyncStateEvent extends SocketEvent {
  const RoomSyncStateEvent({
    required this.matchRound,
    required this.roundIndex,
    required this.startedAt,
    required this.scores,
    this.streaks = const [],
  });

  factory RoomSyncStateEvent.fromJson(Map<String, dynamic> json) {
    final gameState = json['gameState'] as Map<String, dynamic>? ?? {};
    final scoresRaw =
        gameState['scores'] as List<dynamic>? ??
        json['scores'] as List<dynamic>? ??
        [];
    final streaksRaw = gameState['streaks'] as List<dynamic>? ?? [];

    return RoomSyncStateEvent(
      matchRound: json['matchRound'] as int? ?? 1,
      roundIndex:
          gameState['roundIndex'] as int? ?? json['roundIndex'] as int? ?? 0,
      startedAt:
          gameState['startedAt'] as int? ??
          json['startedAt'] as int? ??
          DateTime.now().millisecondsSinceEpoch,
      scores: scoresRaw.map((e) => (e as num).toInt()).toList(),
      streaks: streaksRaw.map((e) => (e as num).toInt()).toList(),
    );
  }

  final int matchRound;
  final int roundIndex;
  final int startedAt;
  final List<int> scores;
  final List<int> streaks;
}

class RoomAnswerResultEvent extends SocketEvent {
  const RoomAnswerResultEvent({
    required this.playerIndex,
    required this.optionId,
    required this.isCorrect,
    required this.scores,
    this.winner,
    this.revealTime = 1350,
  });

  factory RoomAnswerResultEvent.fromJson(Map<String, dynamic> json) {
    final gameState = json['gameState'] as Map<String, dynamic>? ?? {};
    final scoresRaw =
        gameState['scores'] as List<dynamic>? ??
        json['scores'] as List<dynamic>? ??
        [];

    return RoomAnswerResultEvent(
      playerIndex: json['playerIndex'] as int? ?? 0,
      optionId: json['optionId'] as String? ?? '',
      isCorrect:
          json['correct'] as bool? ?? json['isCorrect'] as bool? ?? false,
      winner: json['winner'],
      scores: scoresRaw.map((e) => (e as num).toInt()).toList(),
      revealTime: json['revealTime'] as int? ?? 1350,
    );
  }

  final int playerIndex;
  final String optionId;
  final bool isCorrect;
  final dynamic winner;
  final List<int> scores;
  final int revealTime;
}

class RoomRoundTimeoutEvent extends SocketEvent {
  const RoomRoundTimeoutEvent({this.revealTime = 1350});

  factory RoomRoundTimeoutEvent.fromJson(Map<String, dynamic> json) {
    return RoomRoundTimeoutEvent(
      revealTime: json['revealTime'] as int? ?? 1350,
    );
  }

  final int revealTime;
}

class RoomNextRoundEvent extends SocketEvent {
  const RoomNextRoundEvent({
    required this.roundIndex,
    required this.startedAt,
    this.scores = const [],
  });

  factory RoomNextRoundEvent.fromJson(Map<String, dynamic> json) {
    final gameState = json['gameState'] as Map<String, dynamic>? ?? {};
    final scoresRaw = gameState['scores'] as List<dynamic>? ?? [];

    return RoomNextRoundEvent(
      roundIndex:
          json['roundIndex'] as int? ??
          gameState['roundIndex'] as int? ??
          json['round'] as int? ??
          0,
      startedAt:
          gameState['startedAt'] as int? ??
          json['startedAt'] as int? ??
          DateTime.now().millisecondsSinceEpoch,
      scores: scoresRaw.map((e) => (e as num).toInt()).toList(),
    );
  }

  final int roundIndex;
  final int startedAt;
  final List<int> scores;
}

class RoomGameOverEvent extends SocketEvent {
  const RoomGameOverEvent({
    this.winner,
    this.scores = const [],
  });

  factory RoomGameOverEvent.fromJson(Map<String, dynamic> json) {
    return RoomGameOverEvent(
      winner: json['winner']?.toString(),
      scores:
          (json['scores'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );
  }

  final String? winner;
  final List<int> scores;
}

class RoomMatchFinishedEvent extends SocketEvent {
  const RoomMatchFinishedEvent({
    this.winner,
    this.scores = const [],
    this.matchRound = 1,
    this.continueAt,
  });

  factory RoomMatchFinishedEvent.fromJson(Map<String, dynamic> json) {
    final gameState = json['gameState'] as Map<String, dynamic>? ?? {};
    final scoresRaw =
        gameState['scores'] as List<dynamic>? ??
        json['scores'] as List<dynamic>? ??
        [];
    final continueAt =
        (gameState['continueAt'] as num?)?.toInt() ??
        (json['continueAt'] as num?)?.toInt();

    return RoomMatchFinishedEvent(
      winner: json['winner'],
      scores: scoresRaw.map((e) => (e as num).toInt()).toList(),
      matchRound:
          json['matchRound'] as int? ?? gameState['matchRound'] as int? ?? 1,
      continueAt: continueAt,
    );
  }

  final dynamic winner;
  final List<int> scores;
  final int matchRound;
  final int? continueAt;
}

class RoomRematchWaitingEvent extends SocketEvent {
  const RoomRematchWaitingEvent({
    required this.matchRound,
    required this.readyPlayers,
  });

  factory RoomRematchWaitingEvent.fromJson(Map<String, dynamic> json) {
    final readyList =
        (json['readyPlayers'] as List<dynamic>?)
            ?.map((e) => e == true)
            .toList() ??
        const [];
    return RoomRematchWaitingEvent(
      matchRound: json['matchRound'] as int? ?? 1,
      readyPlayers: readyList,
    );
  }

  final int matchRound;
  final List<bool> readyPlayers;
}

// RoomOpponentStateEvent đã bị xóa — không có trong BE API spec.
// Server không gửi 'opponent_state' hay 'opponent_answer'.
// Kết quả đối thủ đến qua answer_result với playerIndex của đối thủ.

class RoomPlayerLeftEvent extends SocketEvent {
  const RoomPlayerLeftEvent({
    this.playerIndex,
    this.message,
    this.uid,
    this.reason,
  });

  factory RoomPlayerLeftEvent.fromJson(Map<String, dynamic> json) {
    return RoomPlayerLeftEvent(
      playerIndex: json['playerIndex'] as int?,
      message: json['message'] as String?,
      uid: json['uid'] as String?,
      reason: json['reason'] as String?,
    );
  }

  final int? playerIndex;
  final String? message;
  final String? uid;
  final String? reason;
}

class SocketRawMessageEvent extends SocketEvent {
  const SocketRawMessageEvent(this.data);
  final Map<String, dynamic> data;
}

class SocketErrorEvent extends SocketEvent {
  const SocketErrorEvent({
    required this.message,
    this.error,
  });

  final String message;
  final Object? error;
}

class SocketReconnectingEvent extends SocketEvent {
  const SocketReconnectingEvent({
    required this.attempt,
    required this.maxAttempts,
    this.delaySeconds = 0,
  });

  final int attempt;
  final int maxAttempts;
  final int delaySeconds;
}

class SocketReconnectedEvent extends SocketEvent {
  const SocketReconnectedEvent();
}

// ─── Word Chain Events ──────────────────────────────────────────

/// Server gửi cập nhật trạng thái bàn đấu Word Chain sau mỗi lượt
class ChainStateEvent extends SocketEvent {
  const ChainStateEvent({
    required this.playerIndex,
    required this.roomCode,
    required this.state,
    this.rivalName,
    this.rivalAvatar,
    this.serverNow,
    this.sessionId,
  });

  final int playerIndex;
  final String roomCode;
  final GameState state;
  final String? rivalName;
  final String? rivalAvatar;
  final int? serverNow;
  final String? sessionId;
}

/// Server thông báo đang kiểm tra từ điển (đóng băng đồng hồ)
class ChainWordCheckingEvent extends SocketEvent {
  const ChainWordCheckingEvent({
    required this.actor,
    this.turnId,
    this.frozenRemaining,
  });

  factory ChainWordCheckingEvent.fromJson(Map<String, dynamic> json) {
    return ChainWordCheckingEvent(
      actor: json['actor'] as int? ?? 0,
      turnId: json['turnId'] as int?,
      frozenRemaining: json['frozenRemaining'] as int?,
    );
  }

  final int actor;
  final int? turnId;
  final int? frozenRemaining;
}

/// Server đã kiểm tra xong từ điển (tiếp tục đồng hồ)
class ChainWordCheckedEvent extends SocketEvent {
  const ChainWordCheckedEvent();
}

/// Server thông báo từ bị từ chối (sai luật / trùng từ)
class ChainWordRejectedEvent extends SocketEvent {
  const ChainWordRejectedEvent({
    this.penalty = 0,
    this.lives,
  });

  factory ChainWordRejectedEvent.fromJson(Map<String, dynamic> json) {
    return ChainWordRejectedEvent(
      penalty: json['penalty'] as int? ?? 0,
      lives: json['lives'] as int?,
    );
  }

  final int penalty;
  final int? lives;
}

/// Server thông báo từ điển tạm thời không khả dụng
class ChainDictionaryUnavailableEvent extends SocketEvent {
  const ChainDictionaryUnavailableEvent();
}

/// Server cảnh báo người chơi rời ứng dụng (away)
class ChainAwayWarningEvent extends SocketEvent {
  const ChainAwayWarningEvent({
    required this.count,
    this.playerIndex,
    this.limit = 3,
  });

  factory ChainAwayWarningEvent.fromJson(Map<String, dynamic> json) {
    return ChainAwayWarningEvent(
      count: json['count'] as int? ?? 1,
      playerIndex: json['playerIndex'] as int?,
      limit: json['limit'] as int? ?? 3,
    );
  }

  final int count;
  final int? playerIndex;
  final int limit;
}

/// Tin nhắn chat trong phòng Word Chain & Word Guess
class ChainChatMessageEvent extends SocketEvent {
  const ChainChatMessageEvent({
    required this.actor,
    required this.text,
    this.id,
    this.name,
    this.avatar,
    this.time,
    this.senderUid,
  });

  factory ChainChatMessageEvent.fromJson(
    Map<String, dynamic> json, {
    int? resolvedActor,
  }) {
    final msg =
        json['chatItem'] as Map<String, dynamic>? ??
        json['message'] as Map<String, dynamic>? ??
        json;
    final senderUid = msg['senderUid'] as String? ?? msg['uid']?.toString();
    final actorVal =
        resolvedActor ??
        msg['actor'] as int? ??
        (msg['playerIndex'] as int?) ??
        0;

    return ChainChatMessageEvent(
      actor: actorVal,
      text: msg['text'] as String? ?? '',
      id: msg['id']?.toString(),
      name: msg['name'] as String? ?? msg['senderName'] as String?,
      avatar: msg['avatar'] as String? ?? msg['senderAvatar'] as String?,
      time: msg['time'] as num? ?? msg['timestamp'] as num?,
      senderUid: senderUid,
    );
  }

  final int actor;
  final String text;
  final dynamic id;
  final String? name;
  final String? avatar;
  final num? time;
  final String? senderUid;
}

/// Lịch sử chat khi kết nối vào phòng Word Chain
class ChainChatHistoryEvent extends SocketEvent {
  const ChainChatHistoryEvent(this.messages);

  final List<ChainChatMessageEvent> messages;
}

/// Thưởng kết thúc trận Word Chain từ Server
class ChainSessionRewardEvent extends SocketEvent {
  const ChainSessionRewardEvent({
    required this.sessionId,
    required this.reward,
  });

  final String sessionId;
  final Reward reward;
}

// ─── Word Guess Events ──────────────────────────────────────────

/// Server xác nhận kết nối vào phòng Word Guess
class GuessRoomConnectedEvent extends SocketEvent {
  const GuessRoomConnectedEvent({
    required this.myUid,
    required this.rawState,
  });

  final String myUid;
  final Map<String, dynamic> rawState;
}

/// Server gửi cập nhật trạng thái phòng Word Guess
class GuessRoomStateEvent extends SocketEvent {
  const GuessRoomStateEvent({required this.rawState});

  final Map<String, dynamic> rawState;
}

/// Server mở thêm chữ cái gợi ý cho từ hiện tại
class GuessWordHintEvent extends SocketEvent {
  const GuessWordHintEvent({
    required this.sessionId,
    required this.index,
    required this.masked,
  });

  factory GuessWordHintEvent.fromJson(Map<String, dynamic> json) {
    return GuessWordHintEvent(
      sessionId: json['sessionId']?.toString() ?? '',
      index: json['index'] as int? ?? 0,
      masked: json['masked'] as String? ?? '',
    );
  }

  final String sessionId;
  final int index;
  final String masked;
}

/// Server gửi phiên âm khi người chơi đạt mốc gợi ý
class GuessWordPhoneticEvent extends SocketEvent {
  const GuessWordPhoneticEvent({
    required this.sessionId,
    required this.index,
    required this.phonetic,
    this.phoneticSource,
    this.phoneticEstimated,
  });

  factory GuessWordPhoneticEvent.fromJson(Map<String, dynamic> json) {
    return GuessWordPhoneticEvent(
      sessionId: json['sessionId']?.toString() ?? '',
      index: json['index'] as int? ?? 0,
      phonetic: json['phonetic'] as String? ?? '',
      phoneticSource: json['phoneticSource'] as String?,
      phoneticEstimated: json['phoneticEstimated'] as bool?,
    );
  }

  final String sessionId;
  final int index;
  final String phonetic;
  final String? phoneticSource;
  final bool? phoneticEstimated;
}

/// Server thông báo một từ đã được đoán đúng
class GuessWordSolvedEvent extends SocketEvent {
  const GuessWordSolvedEvent({
    required this.sessionId,
    required this.index,
    required this.word,
    required this.meaning,
    this.historyItem,
  });

  factory GuessWordSolvedEvent.fromJson(Map<String, dynamic> json) {
    return GuessWordSolvedEvent(
      sessionId: json['sessionId']?.toString() ?? '',
      index: json['index'] as int? ?? 0,
      word: json['word'] as String? ?? '',
      meaning: json['meaning'] as String? ?? '',
      historyItem: json['historyItem'] as Map<String, dynamic>?,
    );
  }

  final String sessionId;
  final int index;
  final String word;
  final String meaning;
  final Map<String, dynamic>? historyItem;
}

/// Server gửi phản hồi lượt đoán sai riêng cho người đoán
class GuessAttemptEvent extends SocketEvent {
  const GuessAttemptEvent({
    required this.word,
    required this.isCorrect,
    this.message,
    this.playerUid,
    this.sessionId,
    this.index,
  });

  factory GuessAttemptEvent.fromJson(Map<String, dynamic> json) {
    final history = json['historyItem'] as Map<String, dynamic>?;
    final guess = history?['guess'] as String? ?? json['word'] as String? ?? '';
    final isCorrect =
        history?['isCorrect'] as bool? ?? json['correct'] as bool? ?? false;
    final playerUid =
        json['playerUid'] as String? ?? history?['playerUid'] as String?;

    return GuessAttemptEvent(
      word: guess,
      isCorrect: isCorrect,
      message: json['message'] as String?,
      playerUid: playerUid,
      sessionId: json['sessionId']?.toString(),
      index: json['index'] as int?,
    );
  }

  final String word;
  final bool isCorrect;
  final String? message;
  final String? playerUid;
  final String? sessionId;
  final int? index;
}

/// Server thông báo đề xuất biểu quyết đã đóng / hủy
class GuessProposalClosedEvent extends SocketEvent {
  const GuessProposalClosedEvent({required this.reason});

  factory GuessProposalClosedEvent.fromJson(Map<String, dynamic> json) {
    return GuessProposalClosedEvent(
      reason: json['reason'] as String? ?? 'Đề xuất đã kết thúc',
    );
  }

  final String reason;
}

/// Thưởng kết thúc ván Word Guess từ Server
class GuessSessionRewardEvent extends SocketEvent {
  const GuessSessionRewardEvent({
    required this.sessionId,
    required this.rawReward,
  });

  final String sessionId;
  final Map<String, dynamic> rawReward;
}

/// Server chặn chat do chứa từ ngữ vi phạm
class GuessChatBlockedEvent extends SocketEvent {
  const GuessChatBlockedEvent({required this.reason});

  factory GuessChatBlockedEvent.fromJson(Map<String, dynamic> json) {
    return GuessChatBlockedEvent(
      reason: json['reason'] as String? ?? 'Tin nhắn bị chặn',
    );
  }

  final String reason;
}

/// Nhận lời mời thách đấu trực tiếp từ bạn bè qua Social Lobby
class SocialChallengeReceivedEvent extends SocketEvent {
  const SocialChallengeReceivedEvent({
    required this.challengeId,
    required this.challengerUid,
    required this.gameMode,
    this.challengerName,
    this.challengerAvatar,
  });

  factory SocialChallengeReceivedEvent.fromJson(Map<String, dynamic> json) {
    final info = json['challengerInfo'] as Map<String, dynamic>?;
    return SocialChallengeReceivedEvent(
      challengeId: json['challengeId']?.toString() ?? '',
      challengerUid: json['challengerUid']?.toString() ?? '',
      gameMode: json['gameMode']?.toString() ?? 'quiz',
      challengerName: info?['name']?.toString() ?? json['name']?.toString(),
      challengerAvatar:
          info?['avatar']?.toString() ?? json['avatar']?.toString(),
    );
  }

  final String challengeId;
  final String challengerUid;
  final String gameMode;
  final String? challengerName;
  final String? challengerAvatar;
}

/// Server phát tín hiệu bắt đầu trận đấu trực tiếp (Battle Start)
class SocialBattleStartEvent extends SocketEvent {
  const SocialBattleStartEvent({
    required this.roomCode,
    required this.gameMode,
  });

  factory SocialBattleStartEvent.fromJson(Map<String, dynamic> json) {
    return SocialBattleStartEvent(
      roomCode: json['roomCode']?.toString() ?? '',
      gameMode: json['gameMode']?.toString() ?? 'quiz',
    );
  }

  final String roomCode;
  final String gameMode;
}

/// Danh sách phòng đang chờ công khai (Waiting Matches Radar)
class WaitingMatchesEvent extends SocketEvent {
  const WaitingMatchesEvent({this.matches = const []});

  factory WaitingMatchesEvent.fromJson(Map<String, dynamic> json) {
    return WaitingMatchesEvent(
      matches:
          (json['matches'] as List<dynamic>?)
              ?.map((e) => Map<String, dynamic>.from(e as Map))
              .toList() ??
          const [],
    );
  }

  final List<Map<String, dynamic>> matches;
}
