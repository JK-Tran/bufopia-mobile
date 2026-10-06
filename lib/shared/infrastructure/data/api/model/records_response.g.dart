// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordsListResponse<T> _$RecordsListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => RecordsListResponse<T>(
  records: (json['records'] as List<dynamic>?)?.map(fromJsonT).toList(),
  page: (json['page'] as num?)?.toInt(),
  offset: (json['offset'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
  next: (json['next'] as num?)?.toInt(),
  prev: (json['prev'] as num?)?.toInt(),
);
