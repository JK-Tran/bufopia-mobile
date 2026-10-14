import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback.freezed.dart';

@freezed
abstract class Feedback with _$Feedback {
  const factory Feedback({
    @Default(false) bool success,
    String? id,
    int? createdAt,
    String? message,
  }) = _Feedback;
}
