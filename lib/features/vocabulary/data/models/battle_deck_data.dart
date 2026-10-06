import 'package:bufopia/features/vocabulary/data/models/battle_question_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_deck_data.freezed.dart';
part 'battle_deck_data.g.dart';

@freezed
abstract class BattleDeckDataResponse with _$BattleDeckDataResponse {
  const factory BattleDeckDataResponse({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'deck') List<BattleQuestionData>? deck,
  }) = _BattleDeckDataResponse;

  const BattleDeckDataResponse._();

  factory BattleDeckDataResponse.fromJson(Map<String, dynamic> json) =>
      _$BattleDeckDataResponseFromJson(json);
}
