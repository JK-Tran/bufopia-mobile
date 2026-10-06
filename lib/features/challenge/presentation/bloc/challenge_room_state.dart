part of 'challenge_room_bloc.dart';

enum ChallengeRoomTab { join, create }

@freezed
abstract class ChallengeRoomState with _$ChallengeRoomState {
  const factory ChallengeRoomState({
    @Default(ChallengeRoomTab.join) ChallengeRoomTab currentTab,
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    String? createdRoomCode,
    RoomInfoEntity? joinedRoom,
    SocialStateEntity? socialState,
    String? errorMessage,
    String? successMessage,
    String? currentUid,
  }) = _ChallengeRoomState;
}
