import 'package:bufopia/features/challenge/data/datasources/challenge_room_data_source.dart';
import 'package:bufopia/features/challenge/data/mapper/room_info_mapper.dart';
import 'package:bufopia/features/challenge/data/mapper/social_state_mapper.dart';
import 'package:bufopia/features/challenge/domain/entities/room_info_entity.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state_entity.dart';
import 'package:bufopia/features/challenge/domain/repositories/challenge_room_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ChallengeRoomRepository)
class ChallengeRoomRepositoryImpl extends ChallengeRoomRepository {
  ChallengeRoomRepositoryImpl(
    this._dataSource,
    this._socialStateMapper,
    this._roomInfoMapper,
  );

  final ChallengeRoomDataSource _dataSource;
  final SocialStateMapper _socialStateMapper;
  final RoomInfoMapper _roomInfoMapper;

  @override
  Future<SocialStateEntity> getSocialState({required String uid}) async {
    final model = await _dataSource.getSocialState(uid: uid);
    return _socialStateMapper.mapToEntity(model);
  }

  @override
  Future<bool> submitSocialInvite({
    required String uid,
    required String targetUid,
    required String roomCode,
  }) {
    return _dataSource.submitSocialInvite(
      uid: uid,
      targetUid: targetUid,
      roomCode: roomCode,
    );
  }

  @override
  Future<String?> submitSocialAccept({
    required String uid,
    required String invitationId,
  }) {
    return _dataSource.submitSocialAccept(
      uid: uid,
      invitationId: invitationId,
    );
  }

  @override
  Future<bool> deleteSocialDismiss({
    required String uid,
    required String invitationId,
  }) {
    return _dataSource.deleteSocialDismiss(
      uid: uid,
      invitationId: invitationId,
    );
  }

  @override
  Future<RoomInfoEntity?> getRoomInfo({required String roomCode}) async {
    final model = await _dataSource.getRoomInfo(roomCode: roomCode);
    if (model == null) return null;
    return _roomInfoMapper.mapToEntity(model);
  }
}
