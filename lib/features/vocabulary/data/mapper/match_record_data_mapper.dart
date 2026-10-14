import 'package:bufopia/features/vocabulary/data/models/match_record_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/match_record.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class MatchRecordDataMapper
    extends BaseDataMapper<MatchRecordData, MatchRecord> {
  const MatchRecordDataMapper();

  @override
  MatchRecord mapToEntity(MatchRecordData? data) {
    DateTime? createdAt;
    if (data?.createdAt != null) {
      createdAt = DateTime.fromMillisecondsSinceEpoch(data!.createdAt!);
    }

    return MatchRecord(
      id: data?.id ?? '',
      uid: data?.uid ?? '',
      topicId: data?.topicId ?? '',
      scores: data?.scores ?? const [],
      winner: data?.winner ?? '',
      matchData: data?.matchData ?? const {},
      createdAt: createdAt,
    );
  }

  MatchRecordData mapToModel(MatchRecord entity) {
    return MatchRecordData(
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
