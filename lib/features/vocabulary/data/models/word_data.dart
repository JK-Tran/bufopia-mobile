import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_data.freezed.dart';
part 'word_data.g.dart';

@freezed
abstract class WordData with _$WordData {
  const factory WordData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'vi') String? vi,
  }) = _WordData;

  const WordData._();

  factory WordData.fromJson(Map<String, dynamic> json) =>
      _$WordDataFromJson(json);
}
