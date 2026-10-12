import 'package:bufopia/features/auth/data/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_data.freezed.dart';
part 'reward_data.g.dart';

@freezed
abstract class RewardData with _$RewardData {
  const factory RewardData({
    @JsonKey(name: 'gainedXp') int? gainedXp,
    @JsonKey(name: 'streak') int? streak,
    @JsonKey(name: 'user') UserData? user,
  }) = _RewardData;

  const RewardData._();

  factory RewardData.fromJson(Map<String, dynamic> json) =>
      _$RewardDataFromJson(json);
}
