import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_option_entity.freezed.dart';

@freezed
abstract class BattleOptionEntity with _$BattleOptionEntity {
  const factory BattleOptionEntity({
    @Default('') String id,
    @Default('') String topic,
    @Default('') String en,
    @Default('') String vi,
  }) = _BattleOptionEntity;
}
