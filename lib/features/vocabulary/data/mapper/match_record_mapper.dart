import 'package:bufopia/features/vocabulary/data/models/match_record_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/match_record_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class MatchRecordMapper
    extends BaseDataMapper<MatchRecordModel, MatchRecordEntity> {
  const MatchRecordMapper();

  @override
  MatchRecordEntity mapToEntity(MatchRecordModel? data) {
    DateTime? createdAt;
    if (data?.createdAt != null) {
      createdAt = DateTime.fromMillisecondsSinceEpoch(data!.createdAt!);
    }

    return MatchRecordEntity(
      id: data?.id ?? '',
      uid: data?.uid ?? '',
      topicId: data?.topicId ?? '',
      scores: data?.scores ?? const [],
      winner: data?.winner ?? '',
      matchData: data?.matchData ?? const {},
      createdAt: createdAt,
    );
  }

  MatchRecordModel mapToModel(MatchRecordEntity entity) {
    return MatchRecordModel(
      id: entity.id,
      uid: entity.uid,
      topicId: entity.topicId,
      scores: entity.scores,
      winner: entity.winner,
      matchData: entity.matchData,
      createdAt: entity.createdAt?.millisecondsSinceEpoch,
    );
  }
}
