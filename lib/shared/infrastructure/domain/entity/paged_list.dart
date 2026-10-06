import 'package:bufopia/shared/infrastructure/domain/usecase/io/load_more_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_list.freezed.dart';

@freezed
abstract class PagedList<T> with _$PagedList<T> {
  const factory PagedList({
    required List<T> data,
    @Default(null) Object? otherData,
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(0) int totalItems,
    @Default(0) int totalPage,
    @Default(0) int itemsPerPage,
    @Default(-99) int? offset,
    int? nextCursor,
  }) = _PagedList;
  const PagedList._();

  bool get isLastPage => data.isEmpty || !hasMore;

  LoadMoreOutput<T> toLoadMoreOutput() {
    return LoadMoreOutput(
      data: data,
      otherData: otherData,
      page: currentPage,
      isLastPage: isLastPage,
      itemsPerPage: itemsPerPage,
      totalItems: totalItems,
      totalPage: totalPage,
      nextCursor: nextCursor,
    );
  }
}
