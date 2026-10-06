import 'package:bufopia/features/vocabulary/data/models/word_profile_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordProfileMapper
    extends BaseDataMapper<WordProfileModel, WordProfileEntity> {
  const WordProfileMapper();

  @override
  WordProfileEntity mapToEntity(WordProfileModel? data) {
    return WordProfileEntity(
      wordId: data?.wordId ?? '',
      familiarity: data?.familiarity ?? 1,
      interval: data?.interval ?? 1,
      easeFactor: data?.easeFactor ?? 2.5,
      nextReview: data?.nextReview,
      lapses: data?.lapses ?? 0,
    );
  }

  WordProfileModel mapToModel(WordProfileEntity entity) {
    return WordProfileModel(
      wordId: entity.wordId,
      familiarity: entity.familiarity,
      interval: entity.interval,
      easeFactor: entity.easeFactor,
      nextReview: entity.nextReview,
      lapses: entity.lapses,
    );
  }

  List<WordProfileEntity> mapToEntityList(List<WordProfileModel>? list) {
    if (list == null) return const [];
    return list.map(mapToEntity).toList();
  }

  List<WordProfileModel> mapToModelList(List<WordProfileEntity> list) {
    return list.map(mapToModel).toList();
  }
}
