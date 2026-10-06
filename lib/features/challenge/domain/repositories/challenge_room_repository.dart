import 'package:bufopia/features/challenge/domain/entities/room_info_entity.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state_entity.dart';

abstract class ChallengeRoomRepository {
  Future<SocialStateEntity> getSocialState({required String uid});

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

  Future<RoomInfoEntity?> getRoomInfo({required String roomCode});
}
