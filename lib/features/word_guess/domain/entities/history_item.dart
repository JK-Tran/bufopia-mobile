import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_item.freezed.dart';

@freezed
abstract class HistoryItem with _$HistoryItem {
  const factory HistoryItem({
    @Default('') String word,
    @Default('') String meaning,
    @Default('') String phonetic,
    @Default('') String solvedBy,
    @Default(false) bool skipped,
    @Default(0) int solveTimeMs,
    @Default('') String guess,
    bool? isCorrect,
    @Default('') String playerUid,
    @Default('') String playerName,
    @Default('') String id,
    @Default(0) int timestamp,
  }) = _HistoryItem;

  const HistoryItem._();

  String get displayWord => guess.isNotEmpty ? guess : word;
  bool get isSuccess =>
      isCorrect ?? (!skipped && (solvedBy.isNotEmpty || playerName.isNotEmpty));
  String get solverName => playerName.isNotEmpty ? playerName : solvedBy;
}
