import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_info.freezed.dart';

@freezed
abstract class MatchInfo with _$MatchInfo {
  const factory MatchInfo({
    @Default('') String matchId,
    @Default('') String roomCode,
    @Default(0) int playerIndex,
    @Default('') String rivalName,
    @Default('') String rivalAvatar,
    @Default('') String topicId,
    @Default('guess') String game,
  }) = _MatchInfo;
}
