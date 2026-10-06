part of 'challenge_room_bloc.dart';

@freezed
abstract class ChallengeRoomEvent with _$ChallengeRoomEvent {
  const factory ChallengeRoomEvent.init({
    required String uid,
  }) = _Init;

  const factory ChallengeRoomEvent.switchTab(int tabIndex) = _SwitchTab;

  const factory ChallengeRoomEvent.createRoom() = _CreateRoom;

  const factory ChallengeRoomEvent.cancelRoom() = _CancelRoom;

  const factory ChallengeRoomEvent.joinRoom({
    required String roomCode,
    required void Function(String) onJoined,
  }) = _JoinRoom;

  const factory ChallengeRoomEvent.inviteRival({
    required String targetUid,
  }) = _InviteRival;

  const factory ChallengeRoomEvent.acceptInvitation({
    required String invitationId,
    required void Function(String) onAccepted,
  }) = _AcceptInvitation;

  const factory ChallengeRoomEvent.dismissInvitation({
    required String invitationId,
  }) = _DismissInvitation;
}
