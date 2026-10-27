import 'package:bufopia/features/practice/data/models/dictionary_detail_data.dart';
import 'package:bufopia/features/practice/domain/entities/dictionary_detail.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class DictionaryDetailDataMapper
    extends BaseDataMapper<DictionaryDetailData, DictionaryDetail> {
  const DictionaryDetailDataMapper();

  @override
  DictionaryDetail mapToEntity(DictionaryDetailData? data) {
    return DictionaryDetail(
      valid: data?.valid ?? false,
      word: data?.word ?? '',
      phonetic: data?.phonetic ?? '',
      partOfSpeech: data?.partOfSpeech ?? '',
      meaning: data?.meaning ?? '',
      example: data?.example ?? '',
      exampleTranslation: data?.exampleTranslation ?? '',
    );
  }
}
