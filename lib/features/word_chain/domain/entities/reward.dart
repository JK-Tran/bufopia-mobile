import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward.freezed.dart';

@freezed
abstract class Reward with _$Reward {
  const factory Reward({
    @Default(0) int gainedXp,
    @Default(0) int streak,
    User? user,
  }) = _Reward;
}
