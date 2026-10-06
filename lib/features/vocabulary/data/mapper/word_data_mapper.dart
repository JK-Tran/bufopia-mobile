import 'package:bufopia/features/vocabulary/data/models/word_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordDataMapper extends BaseDataMapper<WordData, Word> {
  const WordDataMapper();

  @override
  Word mapToEntity(WordData? data) {
    return Word(
      id: data?.id ?? '',
      topic: data?.topic ?? '',
      en: data?.en ?? '',
      vi: data?.vi ?? '',
    );
  }
}
