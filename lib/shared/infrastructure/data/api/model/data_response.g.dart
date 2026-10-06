// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataResponse<T> _$DataResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => DataResponse<T>(
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

DataListResponse<T> _$DataListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => DataListResponse<T>(
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
  pagination: json['meta'] == null
      ? null
      : PaginationData.fromJson(json['meta'] as Map<String, dynamic>),
);

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  pageInfo: json['pagy_info'] == null
      ? null
      : PageInfo.fromJson(json['pagy_info'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'pagy_info': instance.pageInfo,
};

_PageInfo _$PageInfoFromJson(Map<String, dynamic> json) =>
    _PageInfo(next: (json['next'] as num?)?.toInt());

Map<String, dynamic> _$PageInfoToJson(_PageInfo instance) => <String, dynamic>{
  'next': instance.next,
};
