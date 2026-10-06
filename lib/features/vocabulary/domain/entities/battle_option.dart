import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_option.freezed.dart';

@freezed
abstract class BattleOption with _$BattleOption {
  const factory BattleOption({
    @Default('') String id,
    @Default('') String topic,
    @Default('') String en,
    @Default('') String vi,
  }) = _BattleOption;
}
