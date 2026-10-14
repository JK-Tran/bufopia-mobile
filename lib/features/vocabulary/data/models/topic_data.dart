import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_data.freezed.dart';
part 'topic_data.g.dart';

@freezed
abstract class TopicData with _$TopicData {
  const factory TopicData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'difficulty') String? difficulty,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'word_count') int? wordCount,
    @JsonKey(name: 'updated_at') dynamic updatedAt,
  }) = _TopicData;

  const TopicData._();

  factory TopicData.fromJson(Map<String, dynamic> json) =>
      _$TopicDataFromJson(json);
}
