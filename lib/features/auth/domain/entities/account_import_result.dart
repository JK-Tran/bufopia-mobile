import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_import_result.freezed.dart';

@freezed
abstract class AccountConflict with _$AccountConflict {
  const factory AccountConflict({
    @Default('') String message,
    @Default(0) int guestElo,
    @Default(0) int cloudElo,
    @Default(0) int guestMatches,
    @Default(0) int cloudMatches,
    @Default('') String guestLastActive,
    @Default('') String cloudLastActive,
  }) = _AccountConflict;
}

@freezed
abstract class AccountImportResult with _$AccountImportResult {
  const factory AccountImportResult({
    @Default('') String status,
    @Default('') String action,
    @Default('') String activeUid,
    User? user,
    AccountConflict? conflict,
    @Default(false) bool isConflict,
  }) = _AccountImportResult;
}
