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

  /// Đường dẫn ảnh minh họa theo quy ước cố định của Quick Battle.
  /// Tận dụng hợp lý 9 ảnh hiện có cho 23 chủ đề từ vựng.
  String? get imagePath {
    if (isAuto) return null;
    final imageKey = switch (id) {
      'daily' || 'family' || 'body' || 'clothes' || 'shopping' => 'daily',
      'school' || 'time' || 'shapes' => 'school',
      'travel' || 'town' || 'directions' => 'travel',
      'food' || 'celebrations' => 'food',
      'communication' || 'hobbies' || 'feelings' => 'communication',
      'environment' || 'sports' || 'animals' => 'environment',
      'technology' => 'technology',
      'toeic' || 'jobs' => 'toeic',
      'ielts' => 'ielts',
      _ => 'daily',
    };
    return 'assets/images/quick_battle/topic_$imageKey.png';
  }

  /// Chuỗi hiển thị số lượng từ vựng
  String get displayWordCount => isAuto
      ? 'Đa chủ đề'
      : (wordCount > 0 ? '$wordCount từ vựng' : '100 từ vựng');

  /// Hiển thị độ khó tiếng Việt chuẩn
  String get displayDifficulty {
    switch (difficulty.toLowerCase()) {
      case 'easy':
      case 'dễ':
        return 'Dễ';
      case 'medium':
      case 'trung bình':
      case 'vừa':
        return 'Trung bình';
      case 'advanced':
      case 'hard':
      case 'nâng cao':
      case 'khó':
        return 'Nâng cao';
      default:
        return difficulty.isNotEmpty ? difficulty : (isAuto ? 'Tự động' : 'Dễ');
    }
  }

  /// Mô tả phụ tiếng Việt cho từng chủ đề (theo đặc tả kỹ thuật 23 topics)
  String get subtitle => switch (id) {
    'auto' => 'Hệ thống tự chọn chủ đề',
    'daily' => 'Đời sống thường ngày',
    'school' => 'Trường học & Học tập',
    'travel' => 'Du lịch & Khám phá',
    'food' => 'Ẩm thực & Món ăn',
    'family' => 'Gia đình & Mối quan hệ',
    'body' => 'Cơ thể & Sức khỏe',
    'clothes' => 'Trang phục & Phụ kiện',
    'shopping' => 'Mua sắm & Tiền bạc',
    'town' => 'Địa điểm thị trấn',
    'directions' => 'Phương hướng & Vị trí',
    'jobs' => 'Nghề nghiệp & Nơi làm việc',
    'hobbies' => 'Sở thích & Thời gian rảnh',
    'sports' => 'Thể thao & Rèn luyện',
    'animals' => 'Động vật & Thú cưng',
    'time' => 'Thời gian & Ngày tháng',
    'shapes' => 'Màu sắc & Hình khối',
    'celebrations' => 'Lễ hội & Ngày đặc biệt',
    'feelings' => 'Cảm xúc & Tính cách',
    'environment' => 'Môi trường & Tự nhiên',
    'technology' => 'Công nghệ & Kỹ thuật số',
    'communication' => 'Giao tiếp & Kết nối',
    'toeic' => 'Từ vựng TOEIC Công sở',
    'ielts' => 'Từ vựng IELTS Trọng tâm',
    _ => category.isNotEmpty ? category : 'Từ vựng chủ đề',
  };

  /// 23 chủ đề chuẩn của hệ thống + chủ đề ngẫu nhiên (auto)
  static const List<Topic> defaultTopics = [
    Topic(
      id: 'auto',
      name: 'Đấu ngẫu nhiên',
      category: 'Dynamic',
      difficulty: 'Tự động',
      icon: 'Sparkles',
    ),
    // 1. Nhóm Dễ (Easy) - 18 topics
    Topic(
      id: 'daily',
      name: 'Daily Life',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'House',
      wordCount: 100,
    ),
    Topic(
      id: 'school',
      name: 'School',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'BookOpen',
      wordCount: 100,
    ),
    Topic(
      id: 'travel',
      name: 'Travel',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Airplane',
      wordCount: 100,
    ),
    Topic(
      id: 'food',
      name: 'Food',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'ForkKnife',
      wordCount: 100,
    ),
    Topic(
      id: 'family',
      name: 'Family & Relationships',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Users',
      wordCount: 100,
    ),
    Topic(
      id: 'body',
      name: 'Body & Health',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'HeartPulse',
      wordCount: 100,
    ),
    Topic(
      id: 'clothes',
      name: 'Clothes & Accessories',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Shirt',
      wordCount: 100,
    ),
    Topic(
      id: 'shopping',
      name: 'Shopping & Money',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'ShoppingBag',
      wordCount: 100,
    ),
    Topic(
      id: 'town',
      name: 'Places in Town',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Building2',
      wordCount: 100,
    ),
    Topic(
      id: 'directions',
      name: 'Directions & Location',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'MapPin',
      wordCount: 100,
    ),
    Topic(
      id: 'jobs',
      name: 'Jobs & Workplace',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Briefcase',
      wordCount: 100,
    ),
    Topic(
      id: 'hobbies',
      name: 'Hobbies & Free Time',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Palette',
      wordCount: 100,
    ),
    Topic(
      id: 'sports',
      name: 'Sports & Exercise',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Dumbbell',
      wordCount: 100,
    ),
    Topic(
      id: 'animals',
      name: 'Animals & Pets',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'PawPrint',
      wordCount: 100,
    ),
    Topic(
      id: 'time',
      name: 'Time & Dates',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Clock',
      wordCount: 100,
    ),
    Topic(
      id: 'shapes',
      name: 'Colors, Shapes & Size',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Shapes',
      wordCount: 100,
    ),
    Topic(
      id: 'celebrations',
      name: 'Celebrations & Special Days',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'PartyPopper',
      wordCount: 100,
    ),
    Topic(
      id: 'feelings',
      name: 'Feelings & Personality',
      category: 'Daily English',
      difficulty: 'Dễ',
      icon: 'Smile',
      wordCount: 100,
    ),
    // 2. Nhóm Vừa (Medium) - 4 topics
    Topic(
      id: 'environment',
      name: 'Environment',
      category: 'Academic',
      difficulty: 'Trung bình',
      icon: 'Globe',
      wordCount: 100,
    ),
    Topic(
      id: 'technology',
      name: 'Technology',
      category: 'Academic',
      difficulty: 'Trung bình',
      icon: 'Laptop',
      wordCount: 100,
    ),
    Topic(
      id: 'communication',
      name: 'Communication',
      category: 'Communication',
      difficulty: 'Trung bình',
      icon: 'ChatCircleDots',
      wordCount: 100,
    ),
    Topic(
      id: 'toeic',
      name: 'TOEIC Core',
      category: 'TOEIC',
      difficulty: 'Trung bình',
      icon: 'Briefcase',
      wordCount: 100,
    ),
    // 3. Nhóm Khó (Advanced) - 1 topic
    Topic(
      id: 'ielts',
      name: 'IELTS Core',
      category: 'IELTS Foundation',
      difficulty: 'Nâng cao',
      icon: 'Trophy',
      wordCount: 100,
    ),
  ];
}
