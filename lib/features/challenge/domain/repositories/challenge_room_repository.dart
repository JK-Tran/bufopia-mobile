import 'package:bufopia/features/challenge/domain/entities/room_info.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state.dart';

abstract class ChallengeRoomRepository {
  Future<SocialState> getSocialState({required String uid});

  Future<bool> submitSocialInvite({
    required String uid,
    required String targetUid,
    required String roomCode,
  });

  Future<String?> submitSocialAccept({
    required String uid,
    required String invitationId,
  });

  Future<bool> deleteSocialDismiss({
    required String uid,
    required String invitationId,
  });

  Future<RoomInfo?> getRoomInfo({required String roomCode});
}
