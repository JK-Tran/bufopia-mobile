import 'package:bufopia/features/word_guess/domain/entities/history_item.dart';
import 'package:bufopia/features/word_guess/domain/entities/room_player.dart';
import 'package:bufopia/features/word_guess/domain/entities/round_result.dart';
import 'package:bufopia/features/word_guess/domain/entities/skip_proposal.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    @Default('') String sessionId,
    @Default('') String roomCode,
    @Default('lobby')
    String status, // 'lobby', 'playing', 'round_result', 'finished'
    @Default(0) int currentRound,
    @Default(10) int totalRounds,
    @Default('') String topicId,
    @Default(300) int durationSeconds,
    @Default(0) int timeLeft,
    @Default(0) int serverNow,
    @Default(0) int deadline,
    @Default(4) int protocolVersion,
    WordInfo? wordInfo,
    RoundResult? lastResult,
    SkipProposal? activeProposal,
    @Default([]) List<RoomPlayer> players,
    @Default([]) List<HistoryItem> history,
    @Default('') String myUid,
    String? winnerUid,
    @Default(0) int foundCount,
    Map<String, dynamic>? result,
    @Default([]) List<Map<String, dynamic>> wordsSummary,
    @Default([]) List<Map<String, dynamic>> rewardResults,
    int? currentWordIndex,
    String? finishReason,
  }) = _GameState;

  const GameState._();

  bool get isRoundResult =>
      status == 'round_result' || (result != null && result!['reason'] != null);
  bool get isFinished => status == 'finished';
  String? get roundResultFullWord =>
      result?['en'] as String? ?? result?['word'] as String? ?? wordInfo?.en;
  String? get roundResultMeaning =>
      result?['vi'] as String? ?? result?['meaning'] as String? ?? wordInfo?.vi;
  String? get roundResultSolverName => result?['solvedBy'] as String?;
  int get totalWordsFound => foundCount > 0
      ? foundCount
      : players.fold<int>(0, (acc, p) => acc + p.effectiveScore);
}
