import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_option_data.freezed.dart';
part 'battle_option_data.g.dart';

@freezed
abstract class BattleOptionData with _$BattleOptionData {
  const factory BattleOptionData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'vi') String? vi,
  }) = _BattleOptionData;

  const BattleOptionData._();

  factory BattleOptionData.fromJson(Map<String, dynamic> json) =>
      _$BattleOptionDataFromJson(json);
}
