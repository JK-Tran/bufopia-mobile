import 'package:bufopia/features/word_chain/data/models/turn_message_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state_data.freezed.dart';
part 'game_state_data.g.dart';

@freezed
abstract class GameStateData with _$GameStateData {
  const factory GameStateData({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'turn') int? turn,
    @JsonKey(name: 'turnId') int? turnId,
    @JsonKey(name: 'turnStartedAt') int? turnStartedAt,
    @JsonKey(name: 'deadline') int? deadline,
    @JsonKey(name: 'relaxed') bool? relaxed,
    @JsonKey(name: 'lives') List<int?>? lives,
    @JsonKey(name: 'mistakes') List<int>? mistakes,
    @JsonKey(name: 'awayCounts') List<int>? awayCounts,
    @JsonKey(name: 'requiredLetter') String? requiredLetter,
    @JsonKey(name: 'usedWords') List<String>? usedWords,
    @JsonKey(name: 'messages') List<TurnMessageData>? messages,
    @JsonKey(name: 'winner') int? winner,
    @JsonKey(name: 'finishReason') String? finishReason,
    @JsonKey(name: 'revision') int? revision,
  }) = _GameStateData;

  const GameStateData._();

  factory GameStateData.fromJson(Map<String, dynamic> json) =>
      _$GameStateDataFromJson(json);
}
