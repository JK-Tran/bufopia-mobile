import 'package:bufopia/features/vocabulary/data/models/topic_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:bufopia/shared/utils/date_time_utils.dart';
import 'package:injectable/injectable.dart';

@injectable
class TopicMapper extends BaseDataMapper<TopicModel, TopicEntity> {
  const TopicMapper();

  @override
  TopicEntity mapToEntity(TopicModel? data) {
    DateTime? parsedDate;
    final updated = data?.updatedAt;
    if (updated is int) {
      parsedDate = DateTime.fromMillisecondsSinceEpoch(updated);
    } else if (updated is String) {
      parsedDate = DateTimeUtils.parseOccurredAt(updated);
    }

    return TopicEntity(
      id: data?.id ?? '',
      name: data?.name ?? '',
      category: data?.category ?? '',
      difficulty: data?.difficulty ?? '',
      icon: data?.icon ?? '',
      wordCount: data?.wordCount ?? 0,
      updatedAt: parsedDate,
    );
  }
}
