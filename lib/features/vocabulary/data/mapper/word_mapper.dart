import 'package:bufopia/features/vocabulary/data/models/word_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordMapper extends BaseDataMapper<WordModel, WordEntity> {
  const WordMapper();

  @override
  WordEntity mapToEntity(WordModel? data) {
    return WordEntity(
      id: data?.id ?? '',
      topic: data?.topic ?? '',
      en: data?.en ?? '',
      vi: data?.vi ?? '',
    );
  }
}
