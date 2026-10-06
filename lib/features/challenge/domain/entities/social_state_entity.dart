import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_state_entity.freezed.dart';

@freezed
abstract class SocialStateEntity with _$SocialStateEntity {
  const factory SocialStateEntity({
    @Default([]) List<RivalEntity> recent,
    @Default([]) List<InvitationEntity> invitations,
  }) = _SocialStateEntity;
}

@freezed
abstract class RivalEntity with _$RivalEntity {
  const factory RivalEntity({
    @Default('') String uid,
    @Default('') String name,
    String? avatar,
  }) = _RivalEntity;
}

@freezed
abstract class InvitationEntity with _$InvitationEntity {
  const factory InvitationEntity({
    @Default('') String id,
    @Default('') String fromUid,
    @Default('') String fromName,
    @Default('') String roomCode,
    @Default(0) int expiresAt,
    @Default('daily') String topicId,
  }) = _InvitationEntity;
}
