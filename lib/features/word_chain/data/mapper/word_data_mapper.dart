import 'package:bufopia/features/word_chain/data/models/word_data.dart';
import 'package:bufopia/features/word_chain/domain/entities/word.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordDataMapper extends BaseDataMapper<WordData, Word> {
  const WordDataMapper();

  @override
  Word mapToEntity(WordData? data) {
    return Word(
      valid: data?.valid ?? true,
      word: data?.word ?? '',
      phonetic: data?.phonetic,
      partOfSpeech: data?.partOfSpeech,
      vi: data?.vi,
      definition: data?.definition,
      example: data?.example,
      audio: data?.audio,
    );
  }
}
