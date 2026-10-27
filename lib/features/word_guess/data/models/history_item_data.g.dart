// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HistoryItemData _$HistoryItemDataFromJson(Map<String, dynamic> json) =>
    _HistoryItemData(
      word: json['word'] as String?,
      meaning: json['meaning'] as String?,
      phonetic: json['phonetic'] as String?,
      solvedBy: json['solvedBy'] as String?,
      skipped: json['skipped'] as bool?,
      solveTimeMs: (json['solveTimeMs'] as num?)?.toInt(),
      guess: json['guess'] as String?,
      isCorrect: json['isCorrect'] as bool?,
      playerUid: json['playerUid'] as String?,
      playerName: json['playerName'] as String?,
      id: json['id'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HistoryItemDataToJson(_HistoryItemData instance) =>
    <String, dynamic>{
      'word': instance.word,
      'meaning': instance.meaning,
      'phonetic': instance.phonetic,
      'solvedBy': instance.solvedBy,
      'skipped': instance.skipped,
      'solveTimeMs': instance.solveTimeMs,
      'guess': instance.guess,
      'isCorrect': instance.isCorrect,
      'playerUid': instance.playerUid,
      'playerName': instance.playerName,
      'id': instance.id,
      'timestamp': instance.timestamp,
    };
