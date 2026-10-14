// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedbackData _$FeedbackDataFromJson(Map<String, dynamic> json) =>
    _FeedbackData(
      uid: json['uid'] as String,
      userName: json['userName'] as String,
      category: json['category'] as String,
      message: json['message'] as String,
      contact: json['contact'] as String?,
      page: json['page'] as String?,
    );

Map<String, dynamic> _$FeedbackDataToJson(_FeedbackData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'userName': instance.userName,
      'category': instance.category,
      'message': instance.message,
      'contact': instance.contact,
      'page': instance.page,
    };

_FeedbackDataItem _$FeedbackDataItemFromJson(Map<String, dynamic> json) =>
    _FeedbackDataItem(
      id: json['id'] as String?,
      createdAt: (json['createdAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FeedbackDataItemToJson(_FeedbackDataItem instance) =>
    <String, dynamic>{'id': instance.id, 'createdAt': instance.createdAt};

_FeedbackDataResponse _$FeedbackDataResponseFromJson(
  Map<String, dynamic> json,
) => _FeedbackDataResponse(
  success: json['success'] as bool? ?? false,
  feedback: json['feedback'] == null
      ? null
      : FeedbackDataItem.fromJson(json['feedback'] as Map<String, dynamic>),
  message: json['message'] as String?,
);

Map<String, dynamic> _$FeedbackDataResponseToJson(
  _FeedbackDataResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'feedback': instance.feedback,
  'message': instance.message,
};
