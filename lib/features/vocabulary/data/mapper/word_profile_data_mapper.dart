import 'package:bufopia/features/vocabulary/data/models/word_profile_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordProfileDataMapper
    extends BaseDataMapper<WordProfileData, WordProfile> {
  const WordProfileDataMapper();

  @override
  WordProfile mapToEntity(WordProfileData? data) {
    return WordProfile(
      wordId: data?.wordId ?? '',
      seen: data?.seen ?? 0,
      last: data?.last,
      status: data?.status ?? 'Learning',
      gameMode: data?.gameMode,
      familiarity: data?.familiarity ?? 1,
      interval: data?.interval ?? 1,
      easeFactor: data?.easeFactor ?? 2.5,
      nextReview: data?.nextReview,
      lapses: data?.lapses ?? 0,
    );
  }

  WordProfileData mapToModel(WordProfile entity) {
    return WordProfileData(
      wordId: entity.wordId,
      seen: entity.seen,
      last: entity.last,
      status: entity.status,
      gameMode: entity.gameMode,
      familiarity: entity.familiarity,
      interval: entity.interval,
      easeFactor: entity.easeFactor,
      nextReview: entity.nextReview,
      lapses: entity.lapses,
    );
  }

  List<WordProfile> mapToEntityList(List<WordProfileData>? list) {
    if (list == null) return const [];
    return list.map(mapToEntity).toList();
  }

  List<WordProfileData> mapToModelList(List<WordProfile> list) {
    return list.map(mapToModel).toList();
  }
}
