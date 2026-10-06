// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationData _$PaginationDataFromJson(Map<String, dynamic> json) =>
    _PaginationData(
      currentPage: (json['page'] as num?)?.toInt(),
      hasMore: json['hasMore'] as bool?,
      totalItems: (json['total'] as num?)?.toInt(),
      totalPage: (json['totalPages'] as num?)?.toInt(),
      itemsPerPage: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationDataToJson(_PaginationData instance) =>
    <String, dynamic>{
      'page': instance.currentPage,
      'hasMore': instance.hasMore,
      'total': instance.totalItems,
      'totalPages': instance.totalPage,
      'limit': instance.itemsPerPage,
    };

_PaginationData2 _$PaginationData2FromJson(Map<String, dynamic> json) =>
    _PaginationData2(
      currentPage: (json['current_page'] as num?)?.toInt(),
      hasMore: json['has_more'] as bool?,
      totalItems: (json['total_items'] as num?)?.toInt(),
      totalPage: (json['total_page'] as num?)?.toInt(),
      itemsPerPage: (json['items_per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationData2ToJson(_PaginationData2 instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'has_more': instance.hasMore,
      'total_items': instance.totalItems,
      'total_page': instance.totalPage,
      'items_per_page': instance.itemsPerPage,
    };
