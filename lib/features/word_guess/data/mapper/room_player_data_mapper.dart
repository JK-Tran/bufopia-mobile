import 'package:bufopia/features/word_guess/data/models/room_player_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/room_player.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class RoomPlayerDataMapper extends BaseDataMapper<RoomPlayerData, RoomPlayer> {
  const RoomPlayerDataMapper();

  @override
  RoomPlayer mapToEntity(RoomPlayerData? data) {
    return RoomPlayer(
      uid: data?.uid ?? '',
      name: data?.name ?? '',
      avatar: data?.avatar ?? '',
      score: data?.score ?? 0,
      foundCount: data?.foundCount ?? 0,
      isReady: data?.isReady ?? false,
      isHost: data?.isHost ?? false,
      ended: data?.ended ?? false,
      playerIndex: data?.playerIndex ?? 0,
    );
  }
}
