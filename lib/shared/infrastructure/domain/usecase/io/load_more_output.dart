import 'package:bufopia/shared/constants/ui/paging_constants.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'load_more_output.freezed.dart';

@freezed
abstract class LoadMoreOutput<T> extends BaseOutput with _$LoadMoreOutput<T> {
  const factory LoadMoreOutput({
    required List<T> data,
    @Default(null) Object? otherData,
    @Default(PagingConstants.initialPage) int page,
    @Default(false) bool isRefreshSuccess,
    @Default(false) bool isLastPage,
    @Default(0) int totalItems,
    @Default(0) int offset,
    @Default(0) int totalPage,
    @Default(0) int itemsPerPage,
    int? nextCursor,
  }) = _LoadMoreOutput;
  const LoadMoreOutput._();

  int get nextPage => page + 1;
  int get previousPage => page - 1;
}
