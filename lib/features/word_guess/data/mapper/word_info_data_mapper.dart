import 'package:bufopia/features/word_guess/data/models/word_info_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_info.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordInfoDataMapper extends BaseDataMapper<WordInfoData, WordInfo> {
  const WordInfoDataMapper();

  @override
  WordInfo mapToEntity(WordInfoData? data) {
    return WordInfo(
      index: data?.index ?? 0,
      topic: data?.topic ?? '',
      masked: data?.masked ?? '',
      vi: data?.vi ?? '',
      phonetic: data?.phonetic ?? '',
      length: data?.length ?? 0,
      revealedCount: data?.revealedCount ?? 0,
      en: data?.en,
      example: data?.example,
    );
  }
}
