import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_data.freezed.dart';
part 'feedback_data.g.dart';

@freezed
abstract class FeedbackData with _$FeedbackData {
  const factory FeedbackData({
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'userName') required String userName,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'contact') String? contact,
    @JsonKey(name: 'page') String? page,
  }) = _FeedbackData;

  const FeedbackData._();

  factory FeedbackData.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDataFromJson(json);
}

@freezed
abstract class FeedbackDataItem with _$FeedbackDataItem {
  const factory FeedbackDataItem({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'createdAt') int? createdAt,
  }) = _FeedbackDataItem;

  const FeedbackDataItem._();

  factory FeedbackDataItem.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDataItemFromJson(json);
}

@freezed
abstract class FeedbackDataResponse with _$FeedbackDataResponse {
  const factory FeedbackDataResponse({
    @JsonKey(name: 'success') @Default(false) bool success,
    @JsonKey(name: 'feedback') FeedbackDataItem? feedback,
    @JsonKey(name: 'message') String? message,
  }) = _FeedbackDataResponse;

  const FeedbackDataResponse._();

  factory FeedbackDataResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDataResponseFromJson(json);
}
