import 'package:bufopia/features/vocabulary/data/models/battle_option_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_question_data.freezed.dart';
part 'battle_question_data.g.dart';

@freezed
abstract class BattleQuestionData with _$BattleQuestionData {
  const factory BattleQuestionData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'vi') String? vi,
    @JsonKey(name: 'options') List<BattleOptionData>? options,
  }) = _BattleQuestionData;

  const BattleQuestionData._();

  factory BattleQuestionData.fromJson(Map<String, dynamic> json) =>
      _$BattleQuestionDataFromJson(json);
}
