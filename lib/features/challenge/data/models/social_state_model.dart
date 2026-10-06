import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_state_model.freezed.dart';
part 'social_state_model.g.dart';

@freezed
abstract class SocialStateModel with _$SocialStateModel {
  const factory SocialStateModel({
    @JsonKey(name: 'recent') List<RivalModel>? recent,
    @JsonKey(name: 'invitations') List<InvitationModel>? invitations,
  }) = _SocialStateModel;

  const SocialStateModel._();

  factory SocialStateModel.fromJson(Map<String, dynamic> json) =>
      _$SocialStateModelFromJson(json);
}

@freezed
abstract class RivalModel with _$RivalModel {
  const factory RivalModel({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatar') String? avatar,
  }) = _RivalModel;

  const RivalModel._();

  factory RivalModel.fromJson(Map<String, dynamic> json) =>
      _$RivalModelFromJson(json);
}

@freezed
abstract class InvitationModel with _$InvitationModel {
  const factory InvitationModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'fromUid') String? fromUid,
    @JsonKey(name: 'fromName') String? fromName,
    @JsonKey(name: 'roomCode') String? roomCode,
    @JsonKey(name: 'expiresAt') int? expiresAt,
    @JsonKey(name: 'topicId') String? topicId,
  }) = _InvitationModel;

  const InvitationModel._();

  factory InvitationModel.fromJson(Map<String, dynamic> json) =>
      _$InvitationModelFromJson(json);
}
