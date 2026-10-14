import 'package:bufopia/features/vocabulary/data/models/topic_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:bufopia/shared/utils/date_time_utils.dart';
import 'package:injectable/injectable.dart';

@injectable
class TopicDataMapper extends BaseDataMapper<TopicData, Topic> {
  const TopicDataMapper();

  @override
  Topic mapToEntity(TopicData? data) {
    DateTime? parsedDate;
    final updated = data?.updatedAt;
    if (updated is int) {
      parsedDate = DateTime.fromMillisecondsSinceEpoch(updated);
    } else if (updated is String) {
      parsedDate = DateTimeUtils.parseOccurredAt(updated);
    }

    return Topic(
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
