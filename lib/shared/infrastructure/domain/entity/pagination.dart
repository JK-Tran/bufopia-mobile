import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

/// Convention, habit or type of the identifiers `camelCase`
@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(0) int totalItems,
    @Default(0) int totalPage,
    @Default(0) int itemsPerPage,
  }) = _Pagination;
}

/// Convention, habit or type of the identifiers `underscores`
@freezed
abstract class Pagination2 with _$Pagination2 {
  const factory Pagination2({
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(0) int totalItems,
    @Default(0) int totalPage,
    @Default(0) int itemsPerPage,
  }) = _Pagination2;
}
