import 'package:bufopia/features/challenge/data/models/social_state_model.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class SocialStateMapper
    extends BaseDataMapper<SocialStateModel, SocialStateEntity> {
  const SocialStateMapper();

  @override
  SocialStateEntity mapToEntity(SocialStateModel? data) {
    return SocialStateEntity(
      recent:
          data?.recent
              ?.map(
                (r) => RivalEntity(
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
                (i) => InvitationEntity(
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
