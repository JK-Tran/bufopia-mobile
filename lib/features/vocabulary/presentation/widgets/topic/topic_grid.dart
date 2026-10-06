import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lưới hiển thị danh sách các chủ đề từ vựng bằng GridView (2 hàng x 5 cột)
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
    return LayoutBuilder(
      builder: (context, constraints) {
        const columns = 5;
        const rows = 2;
        final spacingW = 8.w;
        final spacingH = 8.h;

        // Tính tỉ lệ aspect ratio tự động dựa theo kích thước khả dụng
        final itemWidth =
            (constraints.maxWidth - (columns - 1) * spacingW) / columns;
        final itemHeight =
            (constraints.maxHeight - (rows - 1) * spacingH) / rows;
        final aspectRatio = itemWidth / itemHeight;

        return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: topics.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: spacingW,
            mainAxisSpacing: spacingH,
            childAspectRatio: aspectRatio,
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
      },
    );
  }
}
