import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';

@freezed
abstract class Topic with _$Topic {
  const factory Topic({
    @Default('') String id,
    @Default('') String name,
    @Default('') String category,
    @Default('') String difficulty,
    @Default('') String icon,
    @Default(0) int wordCount,
    DateTime? updatedAt,
  }) = _Topic;
}

/// Tiện ích mở rộng hiển thị UI cho Topic (Clean Architecture)
extension TopicX on Topic {
  bool get isAuto => id == 'auto';

  /// Đường dẫn ảnh minh họa theo quy ước cố định của Quick Battle
  String? get imagePath =>
      isAuto ? null : 'assets/images/quick_battle/topic_$id.png';

  /// Chuỗi hiển thị số lượng từ vựng
  String get displayWordCount => isAuto
      ? 'Đa chủ đề'
      : (wordCount > 0 ? '$wordCount từ vựng' : '100 từ vựng');

  /// Mô tả phụ tiếng Việt cho từng chủ đề
  String get subtitle => switch (id) {
    'auto' => 'Hệ thống tự chọn chủ đề',
    'communication' => 'Giao tiếp & kết nối',
    'daily' => 'Đời sống thường ngày',
    'environment' => 'Môi trường & Tự nhiên',
    'food' => 'Ẩm thực & Món ăn',
    'ielts' => 'Từ vựng IELTS trọng tâm',
    'school' => 'Trường học & Học tập',
    'technology' => 'Công nghệ & Kỹ thuật số',
    'toeic' => 'Từ vựng TOEIC công sở',
    'travel' => 'Du lịch & Khám phá',
    _ => category.isNotEmpty ? category : 'Từ vựng chủ đề',
  };

  /// 10 chủ đề chuẩn của hệ thống (fallback khi chưa load từ API)
  static const List<Topic> defaultTopics = [
    Topic(
      id: 'auto',
      name: 'Đấu ngẫu nhiên',
      category: 'Dynamic',
      difficulty: 'Tự động',
    ),
    Topic(
      id: 'communication',
      name: 'Communication',
      category: 'Communication',
      difficulty: 'Trung bình',
      wordCount: 100,
    ),
    Topic(
      id: 'daily',
      name: 'Daily Life',
      category: 'Daily English',
      difficulty: 'Dễ',
      wordCount: 100,
    ),
    Topic(
      id: 'environment',
      name: 'Environment',
      category: 'Academic',
      difficulty: 'Trung bình',
      wordCount: 100,
    ),
    Topic(
      id: 'food',
      name: 'Food',
      category: 'Daily English',
      difficulty: 'Dễ',
      wordCount: 100,
    ),
    Topic(
      id: 'ielts',
      name: 'IELTS Core',
      category: 'IELTS Foundation',
      difficulty: 'Nâng cao',
      wordCount: 100,
    ),
    Topic(
      id: 'school',
      name: 'School',
      category: 'Daily English',
      difficulty: 'Dễ',
      wordCount: 100,
    ),
    Topic(
      id: 'technology',
      name: 'Technology',
      category: 'Academic',
      difficulty: 'Trung bình',
      wordCount: 100,
    ),
    Topic(
      id: 'toeic',
      name: 'TOEIC Core',
      category: 'TOEIC',
      difficulty: 'Trung bình',
      wordCount: 100,
    ),
    Topic(
      id: 'travel',
      name: 'Travel',
      category: 'Daily English',
      difficulty: 'Dễ',
      wordCount: 100,
    ),
  ];
}
