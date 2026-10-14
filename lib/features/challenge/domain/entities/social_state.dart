import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_state.freezed.dart';

@freezed
abstract class SocialState with _$SocialState {
  const factory SocialState({
    @Default([]) List<Rival> recent,
    @Default([]) List<Invitation> invitations,
  }) = _SocialState;
}

@freezed
abstract class Rival with _$Rival {
  const factory Rival({
    @Default('') String uid,
    @Default('') String name,
    String? avatar,
  }) = _Rival;
}

@freezed
abstract class Invitation with _$Invitation {
  const factory Invitation({
    @Default('') String id,
    @Default('') String fromUid,
    @Default('') String fromName,
    @Default('') String roomCode,
    @Default(0) int expiresAt,
    @Default('daily') String topicId,
  }) = _Invitation;
}
