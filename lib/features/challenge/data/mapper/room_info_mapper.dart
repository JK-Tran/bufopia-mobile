import 'package:bufopia/features/challenge/data/models/room_info_model.dart';
import 'package:bufopia/features/challenge/domain/entities/room_info_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class RoomInfoMapper extends BaseDataMapper<RoomInfoModel, RoomInfoEntity> {
  const RoomInfoMapper();

  @override
  RoomInfoEntity mapToEntity(RoomInfoModel? data) {
    return RoomInfoEntity(
      roomCode: data?.roomCode ?? '',
      matchId: data?.matchId ?? '',
      hostUid: data?.hostUid ?? '',
      hostName: data?.hostName ?? '',
      topicId: data?.topicId ?? 'daily',
      status: data?.status ?? 'waiting',
      players:
          data?.players
              ?.map(
                (p) => RoomPlayerEntity(
                  uid: p.uid ?? '',
                  name: p.name ?? '',
                  avatar: p.avatar ?? '',
                ),
              )
              .toList() ??
          const [],
    );
  }
}
