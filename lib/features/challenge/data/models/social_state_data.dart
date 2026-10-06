import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_state_data.freezed.dart';
part 'social_state_data.g.dart';

@freezed
abstract class SocialStateData with _$SocialStateData {
  const factory SocialStateData({
    @JsonKey(name: 'recent') List<RivalData>? recent,
    @JsonKey(name: 'invitations') List<InvitationData>? invitations,
  }) = _SocialStateData;

  const SocialStateData._();

  factory SocialStateData.fromJson(Map<String, dynamic> json) =>
      _$SocialStateDataFromJson(json);
}

@freezed
abstract class RivalData with _$RivalData {
  const factory RivalData({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _RivalData;

  const RivalData._();

  factory RivalData.fromJson(Map<String, dynamic> json) =>
      _$RivalDataFromJson(json);
}

@freezed
abstract class InvitationData with _$InvitationData {
  const factory InvitationData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'fromUid') String? fromUid,
    @JsonKey(name: 'fromName') String? fromName,
    @JsonKey(name: 'roomCode') String? roomCode,
    @JsonKey(name: 'expiresAt') int? expiresAt,
    @JsonKey(name: 'topicId') String? topicId,
  }) = _InvitationData;

  const InvitationData._();

  factory InvitationData.fromJson(Map<String, dynamic> json) =>
      _$InvitationDataFromJson(json);
}
