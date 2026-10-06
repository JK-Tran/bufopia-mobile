import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_data.freezed.dart';
part 'pagination_data.g.dart';

@freezed
abstract class PaginationData with _$PaginationData {
  const factory PaginationData({
    @JsonKey(name: 'page') int? currentPage,
    @JsonKey(name: 'hasMore') bool? hasMore,
    @JsonKey(name: 'total') int? totalItems,
    @JsonKey(name: 'totalPages') int? totalPage,
    @JsonKey(name: 'limit') int? itemsPerPage,
  }) = _PaginationData;

  const PaginationData._();

  factory PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);
}

@freezed
abstract class PaginationData2 with _$PaginationData2 {
  const factory PaginationData2({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'has_more') bool? hasMore,
    @JsonKey(name: 'total_items') int? totalItems,
    @JsonKey(name: 'total_page') int? totalPage,
    @JsonKey(name: 'items_per_page') int? itemsPerPage,
  }) = _PaginationData2;

  const PaginationData2._();

  factory PaginationData2.fromJson(Map<String, dynamic> json) =>
      _$PaginationData2FromJson(json);
}
