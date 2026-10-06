import 'package:bufopia/features/vocabulary/data/mapper/topic_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/word_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/vocabulary_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/vocabulary.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class VocabularyDataMapper
    extends BaseDataMapper<VocabularyDataResponse, Vocabulary> {
  const VocabularyDataMapper(this._topicMapper, this._wordMapper);

  final TopicDataMapper _topicMapper;
  final WordDataMapper _wordMapper;

  @override
  Vocabulary mapToEntity(VocabularyDataResponse? data) {
    return Vocabulary(
      version: data?.version ?? '',
      totalTopics: data?.totalTopics ?? 0,
      totalWords: data?.totalWords ?? 0,
      topics: _topicMapper.mapToListEntity(data?.topics),
      words: _wordMapper.mapToListEntity(data?.words),
    );
  }
}
