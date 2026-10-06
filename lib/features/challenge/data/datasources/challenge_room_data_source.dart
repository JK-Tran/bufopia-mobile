import 'package:bufopia/features/challenge/data/models/room_info_model.dart';
import 'package:bufopia/features/challenge/data/models/social_state_model.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ChallengeRoomDataSource {
  ChallengeRoomDataSource(this._noneAuthAppServerApiClient);

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

  Future<SocialStateModel?> getSocialState({required String uid}) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/social/state',
      queryParameters: {'uid': uid},
      decoder: (data) => SocialStateModel.fromJson(data! as JSON),
    );
  }

  Future<bool> submitSocialInvite({
    required String uid,
    required String targetUid,
    required String roomCode,
  }) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/social/invite',
      queryParameters: {'uid': uid},
      body: {
        'targetUid': targetUid,
        'roomCode': roomCode,
      },
    );
    return response != null;
  }

  Future<String?> submitSocialAccept({
    required String uid,
    required String invitationId,
  }) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/social/accept',
      queryParameters: {'uid': uid},
      body: {'id': invitationId},
    );
    if (response != null && response is Map<String, dynamic>) {
      return response['roomCode'] as String?;
    }
    return null;
  }

  Future<bool> deleteSocialDismiss({
    required String uid,
    required String invitationId,
  }) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/social/dismiss',
      queryParameters: {'uid': uid},
      body: {'id': invitationId},
    );
    return response != null;
  }

  Future<RoomInfoModel?> getRoomInfo({required String roomCode}) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/rooms/$roomCode',
      decoder: (data) => RoomInfoModel.fromJson(data! as JSON),
    );
  }
}
