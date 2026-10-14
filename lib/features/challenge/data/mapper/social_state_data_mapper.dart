import 'package:bufopia/features/challenge/data/models/social_state_data.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class SocialStateDataMapper
    extends BaseDataMapper<SocialStateData, SocialState> {
  const SocialStateDataMapper();

  @override
  SocialState mapToEntity(SocialStateData? data) {
    return SocialState(
      recent:
          data?.recent
              ?.map(
                (r) => Rival(
                  uid: r.uid ?? '',
                  name: r.name ?? '',
                  avatar: r.avatar,
                ),
              )
              .toList() ??
          const [],
      invitations:
          data?.invitations
              ?.map(
                (i) => Invitation(
                  id: i.id ?? '',
                  fromUid: i.fromUid ?? '',
                  fromName: i.fromName ?? '',
                  roomCode: i.roomCode ?? '',
                  expiresAt: i.expiresAt ?? 0,
                  topicId: i.topicId ?? 'daily',
                ),
              )
              .toList() ??
          const [],
    );
  }
}
