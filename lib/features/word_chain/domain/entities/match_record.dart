import 'package:bufopia/features/word_chain/domain/entities/game_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_record.freezed.dart';

@freezed
abstract class MatchRecord with _$MatchRecord {
  const factory MatchRecord({
    @Default('') String roomCode,
    @Default(0) int playerIndex,
    @Default('') String rivalName,
    @Default('') String rivalAvatar,
    @Default(false) bool relaxed,
    GameState? state,
  }) = _MatchRecord;
}
