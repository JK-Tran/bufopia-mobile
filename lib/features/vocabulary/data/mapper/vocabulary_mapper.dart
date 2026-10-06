import 'package:bufopia/features/vocabulary/data/mapper/topic_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/word_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/vocabulary_response_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/vocabulary_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class VocabularyMapper
    extends BaseDataMapper<VocabularyResponseModel, VocabularyEntity> {
  const VocabularyMapper(this._topicMapper, this._wordMapper);

  final TopicMapper _topicMapper;
  final WordMapper _wordMapper;

  @override
  VocabularyEntity mapToEntity(VocabularyResponseModel? data) {
    return VocabularyEntity(
      version: data?.version ?? '',
      totalTopics: data?.totalTopics ?? 0,
      totalWords: data?.totalWords ?? 0,
      topics: _topicMapper.mapToListEntity(data?.topics),
      words: _wordMapper.mapToListEntity(data?.words),
    );
  }
}
