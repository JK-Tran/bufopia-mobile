import 'package:bufopia/features/word_chain/domain/entities/turn_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    @Default('waiting') String status,
    @Default(0) int turn,
    @Default(0) int turnId,
    @Default(0) int turnStartedAt,
    int? deadline,
    @Default(false) bool relaxed,
    @Default([3, 3]) List<int?> lives,
    @Default([0, 0]) List<int> mistakes,
    @Default([0, 0]) List<int> awayCounts,
    @Default('') String requiredLetter,
    @Default([]) List<String> usedWords,
    @Default([]) List<TurnMessage> messages,
    int? winner,
    String? finishReason,
    @Default(0) int revision,
  }) = _GameState;
}
