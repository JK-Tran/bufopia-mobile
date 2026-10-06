import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_option_model.freezed.dart';
part 'battle_option_model.g.dart';

@freezed
abstract class BattleOptionModel with _$BattleOptionModel {
  const factory BattleOptionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'vi') String? vi,
  }) = _BattleOptionModel;

  const BattleOptionModel._();

  factory BattleOptionModel.fromJson(Map<String, dynamic> json) =>
      _$BattleOptionModelFromJson(json);
}
