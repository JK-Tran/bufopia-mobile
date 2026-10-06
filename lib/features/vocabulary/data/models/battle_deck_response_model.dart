import 'package:bufopia/features/vocabulary/data/models/battle_question_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_deck_response_model.freezed.dart';
part 'battle_deck_response_model.g.dart';

@freezed
abstract class BattleDeckResponseModel with _$BattleDeckResponseModel {
  const factory BattleDeckResponseModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'deck') List<BattleQuestionModel>? deck,
  }) = _BattleDeckResponseModel;

  const BattleDeckResponseModel._();

  factory BattleDeckResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BattleDeckResponseModelFromJson(json);
}
