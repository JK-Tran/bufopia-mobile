import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_model.freezed.dart';
part 'word_model.g.dart';

@freezed
abstract class WordModel with _$WordModel {
  const factory WordModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'vi') String? vi,
  }) = _WordModel;

  const WordModel._();

  factory WordModel.fromJson(Map<String, dynamic> json) =>
      _$WordModelFromJson(json);
}
