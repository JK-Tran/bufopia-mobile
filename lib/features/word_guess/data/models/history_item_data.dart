import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_item_data.freezed.dart';
part 'history_item_data.g.dart';

@freezed
abstract class HistoryItemData with _$HistoryItemData {
  const factory HistoryItemData({
    @JsonKey(name: 'word') String? word,
    @JsonKey(name: 'meaning') String? meaning,
    @JsonKey(name: 'phonetic') String? phonetic,
    @JsonKey(name: 'solvedBy') String? solvedBy,
    @JsonKey(name: 'skipped') bool? skipped,
    @JsonKey(name: 'solveTimeMs') int? solveTimeMs,
    @JsonKey(name: 'guess') String? guess,
    @JsonKey(name: 'isCorrect') bool? isCorrect,
    @JsonKey(name: 'playerUid') String? playerUid,
    @JsonKey(name: 'playerName') String? playerName,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'timestamp') int? timestamp,
  }) = _HistoryItemData;

  const HistoryItemData._();

  factory HistoryItemData.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemDataFromJson(json);
}
