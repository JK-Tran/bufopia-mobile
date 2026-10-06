import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_model.freezed.dart';
part 'topic_model.g.dart';

@freezed
abstract class TopicModel with _$TopicModel {
  const factory TopicModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'difficulty') String? difficulty,
    @JsonKey(name: 'icon') String? icon,
    @JsonKey(name: 'word_count') int? wordCount,
    @JsonKey(name: 'updated_at') dynamic updatedAt,
  }) = _TopicModel;

  const TopicModel._();

  factory TopicModel.fromJson(Map<String, dynamic> json) =>
      _$TopicModelFromJson(json);
}
