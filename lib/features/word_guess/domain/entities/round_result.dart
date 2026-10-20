import 'package:freezed_annotation/freezed_annotation.dart';

part 'round_result.freezed.dart';

@freezed
abstract class RoundResult with _$RoundResult {
  const factory RoundResult({
    @Default(0) int index,
    @Default('') String word,
    @Default('') String vi,
    @Default('') String phonetic,
    @Default('') String example,
    @Default('') String solverUid,
    @Default(false) bool isSkipped,
    @Default(0) int gainedScore,
  }) = _RoundResult;
}
