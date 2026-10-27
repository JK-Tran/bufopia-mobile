import 'package:bufopia/features/word_guess/domain/entities/game_state.dart';
import 'package:bufopia/features/word_guess/domain/entities/history_item.dart';
import 'package:bufopia/features/word_guess/domain/entities/match_info.dart';
import 'package:bufopia/features/word_guess/domain/entities/practice_result.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.freezed.dart';

@freezed
abstract class GameEvent with _$GameEvent {
  const factory GameEvent.connected({
    required String myUid,
    required GameState state,
  }) = _GameEventConnected;

  const factory GameEvent.stateUpdated(GameState state) =
      _GameEventStateUpdated;

  const factory GameEvent.wordHint({
    required String sessionId,
    required int index,
    required String masked,
  }) = _GameEventWordHint;

  const factory GameEvent.wordPhonetic({
    required String sessionId,
    required int index,
    required String phonetic,
    String? phoneticSource,
    bool? phoneticEstimated,
  }) = _GameEventWordPhonetic;

  const factory GameEvent.wordSolved({
    required String sessionId,
    required int index,
    required String word,
    required String meaning,
    HistoryItem? historyItem,
  }) = _GameEventWordSolved;

  const factory GameEvent.guessAttempt({
    required String word,
    required bool isCorrect,
    String? message,
  }) = _GameEventGuessAttempt;

  const factory GameEvent.chat({
    required String senderUid,
    required String text,
    String? senderName,
    String? avatar,
  }) = _GameEventChat;

  const factory GameEvent.chatBlocked({required String reason}) =
      _GameEventChatBlocked;

  const factory GameEvent.proposalClosed({required String reason}) =
      _GameEventProposalClosed;

  const factory GameEvent.sessionReward({
    required String sessionId,
    PracticeResult? reward,
  }) = _GameEventSessionReward;

  const factory GameEvent.matched(MatchInfo matchInfo) = _GameEventMatched;

  const factory GameEvent.queued({required String topicId}) = _GameEventQueued;

  const factory GameEvent.playerLeft({
    required String uid,
    required String name,
  }) = _GameEventPlayerLeft;

  const factory GameEvent.connection(SocketConnectionState state) =
      _GameEventConnection;

  const factory GameEvent.error(String message) = _GameEventError;
}
