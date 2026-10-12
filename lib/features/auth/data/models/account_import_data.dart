import 'package:bufopia/features/auth/data/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_import_data.freezed.dart';
part 'account_import_data.g.dart';

@freezed
abstract class AccountConflictData with _$AccountConflictData {
  const factory AccountConflictData({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'guest') Map<String, dynamic>? guest,
    @JsonKey(name: 'cloud') Map<String, dynamic>? cloud,
    @JsonKey(name: 'account') Map<String, dynamic>? account,
  }) = _AccountConflictData;

  const AccountConflictData._();

  factory AccountConflictData.fromJson(Map<String, dynamic> json) =>
      _$AccountConflictDataFromJson(json);
}

@freezed
abstract class AccountImportResponseData with _$AccountImportResponseData {
  const factory AccountImportResponseData({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'action') String? action,
    @JsonKey(name: 'active_uid') String? activeUid,
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'user') UserData? user,
    @JsonKey(name: 'conflict') AccountConflictData? conflict,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'account') Map<String, dynamic>? account,
  }) = _AccountImportResponseData;

  const AccountImportResponseData._();

  factory AccountImportResponseData.fromJson(Map<String, dynamic> json) =>
      _$AccountImportResponseDataFromJson(json);
}
