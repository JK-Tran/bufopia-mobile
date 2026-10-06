import 'package:bufopia/shared/infrastructure/data/api/model/pagination_data.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:bufopia/shared/infrastructure/domain/entity/pagination.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PaginationDataMapper extends BaseDataMapper<PaginationData, Pagination>
    with DataMapperMixin {
  PaginationDataMapper();

  @override
  Pagination mapToEntity(PaginationData? data) {
    return Pagination(
      currentPage: data?.currentPage ?? 1,
      hasMore: data?.hasMore ?? false,
      totalItems: data?.totalItems ?? 0,
      totalPage: data?.totalPage ?? 0,
      itemsPerPage: data?.itemsPerPage ?? 0,
    );
  }

  @override
  PaginationData mapToData(Pagination entity) {
    return PaginationData(
      currentPage: entity.currentPage,
      hasMore: entity.hasMore,
      totalItems: entity.totalItems,
      totalPage: entity.totalPage,
      itemsPerPage: entity.itemsPerPage,
    );
  }
}
