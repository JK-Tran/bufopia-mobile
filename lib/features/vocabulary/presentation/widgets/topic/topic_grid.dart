import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lưới hiển thị danh sách các chủ đề từ vựng (2 cột chuẩn Web)
class TopicGrid extends StatelessWidget {
  const TopicGrid({
    required this.selectedTopicId,
    required this.onTopicSelected,
    this.topics = TopicX.defaultTopics,
    this.isPaperTheme,
    super.key,
  });

  final List<Topic> topics;
  final String selectedTopicId;
  final ValueChanged<Topic> onTopicSelected;
  final bool? isPaperTheme;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.only(top: 10.h, bottom: 24.h),
      itemCount: topics.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        final topic = topics[index];
        return TopicItem(
          topic: topic,
          isSelected: topic.id == selectedTopicId,
          isPaperTheme: isPaperTheme,
          onTap: () => onTopicSelected(topic),
        );
      },
    );
  }
}
