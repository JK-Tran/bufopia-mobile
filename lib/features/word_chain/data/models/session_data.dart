import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_data.freezed.dart';
part 'session_data.g.dart';

@freezed
abstract class SessionData with _$SessionData {
  const factory SessionData({
    @JsonKey(name: 'sessionId') required String sessionId,
  }) = _SessionData;

  const SessionData._();

  factory SessionData.fromJson(Map<String, dynamic> json) =>
      _$SessionDataFromJson(json);
}
