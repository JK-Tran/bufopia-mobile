// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_import_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountConflictData _$AccountConflictDataFromJson(Map<String, dynamic> json) =>
    _AccountConflictData(
      message: json['message'] as String?,
      code: json['code'] as String?,
      guest: json['guest'] as Map<String, dynamic>?,
      cloud: json['cloud'] as Map<String, dynamic>?,
      account: json['account'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AccountConflictDataToJson(
  _AccountConflictData instance,
) => <String, dynamic>{
  'message': instance.message,
  'code': instance.code,
  'guest': instance.guest,
  'cloud': instance.cloud,
  'account': instance.account,
};

_AccountImportResponseData _$AccountImportResponseDataFromJson(
  Map<String, dynamic> json,
) => _AccountImportResponseData(
  status: json['status'] as String?,
  action: json['action'] as String?,
  activeUid: json['active_uid'] as String?,
  uid: json['uid'] as String?,
  user: json['user'] == null
      ? null
      : UserData.fromJson(json['user'] as Map<String, dynamic>),
  conflict: json['conflict'] == null
      ? null
      : AccountConflictData.fromJson(json['conflict'] as Map<String, dynamic>),
  code: json['code'] as String?,
  message: json['message'] as String?,
  account: json['account'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$AccountImportResponseDataToJson(
  _AccountImportResponseData instance,
) => <String, dynamic>{
  'status': instance.status,
  'action': instance.action,
  'active_uid': instance.activeUid,
  'uid': instance.uid,
  'user': instance.user,
  'conflict': instance.conflict,
  'code': instance.code,
  'message': instance.message,
  'account': instance.account,
};
