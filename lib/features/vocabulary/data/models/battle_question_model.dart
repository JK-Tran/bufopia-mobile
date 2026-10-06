import 'package:bufopia/features/vocabulary/data/models/battle_option_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_question_model.freezed.dart';
part 'battle_question_model.g.dart';

@freezed
abstract class BattleQuestionModel with _$BattleQuestionModel {
  const factory BattleQuestionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'vi') String? vi,
    @JsonKey(name: 'options') List<BattleOptionModel>? options,
  }) = _BattleQuestionModel;

  const BattleQuestionModel._();

  factory BattleQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$BattleQuestionModelFromJson(json);
}
