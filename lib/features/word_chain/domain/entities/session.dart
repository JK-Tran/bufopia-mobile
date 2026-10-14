import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
abstract class Session with _$Session {
  const factory Session({
    @Default(true) bool success,
    @Default('') String sessionId,
  }) = _Session;
}
