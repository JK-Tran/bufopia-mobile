import 'package:bufopia/features/challenge/data/models/room_info_data.dart';
import 'package:bufopia/features/challenge/domain/entities/room_info.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class RoomInfoDataMapper extends BaseDataMapper<RoomInfoData, RoomInfo> {
  const RoomInfoDataMapper();

  @override
  RoomInfo mapToEntity(RoomInfoData? data) {
    return RoomInfo(
      roomCode: data?.roomCode ?? '',
      matchId: data?.matchId ?? '',
      hostUid: data?.hostUid ?? '',
      hostName: data?.hostName ?? '',
      topicId: data?.topicId ?? 'daily',
      status: data?.status ?? 'waiting',
      players:
          data?.players
              ?.map(
                (p) => RoomPlayer(
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
