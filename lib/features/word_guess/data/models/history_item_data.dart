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
      _$HistoryItemDataFromJson(_normalize(json));

  static Map<String, dynamic> _normalize(Map<String, dynamic> json) {
    final word = json['word'] ?? json['en'] ?? json['guess'];
    final meaning = json['meaning'] ?? json['vi'] ?? json['clue'];
    final guess = json['guess'] ?? word;

    final solverUid =
        json['playerUid'] ??
        json['solverUid'] ??
        json['solvedByUid'] ??
        json['uid'];

    final solverName =
        json['playerName'] ??
        json['solverName'] ??
        json['solvedByName'] ??
        json['name'];

    final solvedByRaw = json['solvedBy'] as String?;

    final playerUid =
        solverUid ??
        (solvedByRaw != null &&
                (solvedByRaw.length > 15 || solvedByRaw.contains('-'))
            ? solvedByRaw
            : null);

    final playerName =
        solverName ??
        (solvedByRaw != null && playerUid != solvedByRaw ? solvedByRaw : null);

    final solvedBy = solvedByRaw ?? playerUid ?? playerName;

    final skipped =
        json['skipped'] == true ||
        json['isSkipped'] == true ||
        json['status'] == 'skipped' ||
        json['reason'] == 'skipped';

    final isCorrect =
        json['isCorrect'] ??
        json['isSuccess'] ??
        json['isWin'] ??
        (json['status'] == 'solved' || json['reason'] == 'solved'
            ? true
            : null);

    return {
      ...json,
      'word': word,
      'meaning': meaning,
      'guess': guess,
      'playerUid': playerUid,
      'playerName': playerName,
      'solvedBy': solvedBy,
      'skipped': skipped,
      'isCorrect': isCorrect,
    };
  }
}
