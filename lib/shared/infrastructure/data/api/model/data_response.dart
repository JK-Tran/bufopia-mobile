import 'package:bufopia/shared/infrastructure/data/api/model/pagination_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response.freezed.dart';
part 'data_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class DataResponse<T> {
  DataResponse({
    @JsonKey(name: 'data') this.data,
    @JsonKey(name: 'meta') this.meta,
  });

  factory DataResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) => _$DataResponseFromJson(json, fromJsonT);

  final T? data;
  final Meta? meta;
}

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class DataListResponse<T> {
  DataListResponse({
    @JsonKey(name: 'data') this.data,
    @JsonKey(name: 'meta') this.pagination,
  });

  factory DataListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) fromJsonT,
  ) => _$DataListResponseFromJson(json, fromJsonT);

  final List<T>? data;
  final PaginationData? pagination;
}

@freezed
abstract class Meta with _$Meta {
  factory Meta({@JsonKey(name: 'pagy_info') PageInfo? pageInfo}) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
abstract class PageInfo with _$PageInfo {
  factory PageInfo({@JsonKey(name: 'next') int? next}) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
