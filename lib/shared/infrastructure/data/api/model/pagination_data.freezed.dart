// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationData {

@JsonKey(name: 'page') int? get currentPage;@JsonKey(name: 'hasMore') bool? get hasMore;@JsonKey(name: 'total') int? get totalItems;@JsonKey(name: 'totalPages') int? get totalPage;@JsonKey(name: 'limit') int? get itemsPerPage;
/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationDataCopyWith<PaginationData> get copyWith => _$PaginationDataCopyWithImpl<PaginationData>(this as PaginationData, _$identity);

  /// Serializes this PaginationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaginationData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationData&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.hasMore, _this.hasMore) || other.hasMore == _this.hasMore)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.totalPage, _this.totalPage) || other.totalPage == _this.totalPage)&&(identical(other.itemsPerPage, _this.itemsPerPage) || other.itemsPerPage == _this.itemsPerPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaginationData;
  return Object.hash(runtimeType,_this.currentPage,_this.hasMore,_this.totalItems,_this.totalPage,_this.itemsPerPage);
}

@override
String toString() {
  final _this = this as PaginationData;
  return 'PaginationData(currentPage: ${_this.currentPage}, hasMore: ${_this.hasMore}, totalItems: ${_this.totalItems}, totalPage: ${_this.totalPage}, itemsPerPage: ${_this.itemsPerPage})';
}


}

/// @nodoc
abstract mixin class $PaginationDataCopyWith<$Res>  {
  factory $PaginationDataCopyWith(PaginationData value, $Res Function(PaginationData) _then) = _$PaginationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'page') int? currentPage,@JsonKey(name: 'hasMore') bool? hasMore,@JsonKey(name: 'total') int? totalItems,@JsonKey(name: 'totalPages') int? totalPage,@JsonKey(name: 'limit') int? itemsPerPage
});




}
/// @nodoc
class _$PaginationDataCopyWithImpl<$Res>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(this._self, this._then);

  final PaginationData _self;
  final $Res Function(PaginationData) _then;

/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? hasMore = freezed,Object? totalItems = freezed,Object? totalPage = freezed,Object? itemsPerPage = freezed,}) {
  return _then(PaginationData(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,totalPage: freezed == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int?,itemsPerPage: freezed == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationData].
extension PaginationDataPatterns on PaginationData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationData value)  $default,){
final _that = this;
switch (_that) {
case _PaginationData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationData value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'page')  int? currentPage, @JsonKey(name: 'hasMore')  bool? hasMore, @JsonKey(name: 'total')  int? totalItems, @JsonKey(name: 'totalPages')  int? totalPage, @JsonKey(name: 'limit')  int? itemsPerPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationData() when $default != null:
return $default(_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'page')  int? currentPage, @JsonKey(name: 'hasMore')  bool? hasMore, @JsonKey(name: 'total')  int? totalItems, @JsonKey(name: 'totalPages')  int? totalPage, @JsonKey(name: 'limit')  int? itemsPerPage)  $default,) {final _that = this;
switch (_that) {
case _PaginationData():
return $default(_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'page')  int? currentPage, @JsonKey(name: 'hasMore')  bool? hasMore, @JsonKey(name: 'total')  int? totalItems, @JsonKey(name: 'totalPages')  int? totalPage, @JsonKey(name: 'limit')  int? itemsPerPage)?  $default,) {final _that = this;
switch (_that) {
case _PaginationData() when $default != null:
return $default(_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationData extends PaginationData {
  const _PaginationData({@JsonKey(name: 'page') this.currentPage, @JsonKey(name: 'hasMore') this.hasMore, @JsonKey(name: 'total') this.totalItems, @JsonKey(name: 'totalPages') this.totalPage, @JsonKey(name: 'limit') this.itemsPerPage}): super._();
  factory _PaginationData.fromJson(Map<String, dynamic> json) => _$PaginationDataFromJson(json);

@override@JsonKey(name: 'page') final  int? currentPage;
@override@JsonKey(name: 'hasMore') final  bool? hasMore;
@override@JsonKey(name: 'total') final  int? totalItems;
@override@JsonKey(name: 'totalPages') final  int? totalPage;
@override@JsonKey(name: 'limit') final  int? itemsPerPage;

/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationDataCopyWith<_PaginationData> get copyWith => __$PaginationDataCopyWithImpl<_PaginationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationData&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,currentPage,hasMore,totalItems,totalPage,itemsPerPage);
}

@override
String toString() {
    return 'PaginationData(currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationDataCopyWith<$Res> implements $PaginationDataCopyWith<$Res> {
  factory _$PaginationDataCopyWith(_PaginationData value, $Res Function(_PaginationData) _then) = __$PaginationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'page') int? currentPage,@JsonKey(name: 'hasMore') bool? hasMore,@JsonKey(name: 'total') int? totalItems,@JsonKey(name: 'totalPages') int? totalPage,@JsonKey(name: 'limit') int? itemsPerPage
});




}
/// @nodoc
class __$PaginationDataCopyWithImpl<$Res>
    implements _$PaginationDataCopyWith<$Res> {
  __$PaginationDataCopyWithImpl(this._self, this._then);

  final _PaginationData _self;
  final $Res Function(_PaginationData) _then;

/// Create a copy of PaginationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? hasMore = freezed,Object? totalItems = freezed,Object? totalPage = freezed,Object? itemsPerPage = freezed,}) {
  return _then(_PaginationData(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,totalPage: freezed == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int?,itemsPerPage: freezed == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PaginationData2 {

@JsonKey(name: 'current_page') int? get currentPage;@JsonKey(name: 'has_more') bool? get hasMore;@JsonKey(name: 'total_items') int? get totalItems;@JsonKey(name: 'total_page') int? get totalPage;@JsonKey(name: 'items_per_page') int? get itemsPerPage;
/// Create a copy of PaginationData2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationData2CopyWith<PaginationData2> get copyWith => _$PaginationData2CopyWithImpl<PaginationData2>(this as PaginationData2, _$identity);

  /// Serializes this PaginationData2 to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaginationData2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationData2&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.hasMore, _this.hasMore) || other.hasMore == _this.hasMore)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.totalPage, _this.totalPage) || other.totalPage == _this.totalPage)&&(identical(other.itemsPerPage, _this.itemsPerPage) || other.itemsPerPage == _this.itemsPerPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaginationData2;
  return Object.hash(runtimeType,_this.currentPage,_this.hasMore,_this.totalItems,_this.totalPage,_this.itemsPerPage);
}

@override
String toString() {
  final _this = this as PaginationData2;
  return 'PaginationData2(currentPage: ${_this.currentPage}, hasMore: ${_this.hasMore}, totalItems: ${_this.totalItems}, totalPage: ${_this.totalPage}, itemsPerPage: ${_this.itemsPerPage})';
}


}

/// @nodoc
abstract mixin class $PaginationData2CopyWith<$Res>  {
  factory $PaginationData2CopyWith(PaginationData2 value, $Res Function(PaginationData2) _then) = _$PaginationData2CopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'has_more') bool? hasMore,@JsonKey(name: 'total_items') int? totalItems,@JsonKey(name: 'total_page') int? totalPage,@JsonKey(name: 'items_per_page') int? itemsPerPage
});




}
/// @nodoc
class _$PaginationData2CopyWithImpl<$Res>
    implements $PaginationData2CopyWith<$Res> {
  _$PaginationData2CopyWithImpl(this._self, this._then);

  final PaginationData2 _self;
  final $Res Function(PaginationData2) _then;

/// Create a copy of PaginationData2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = freezed,Object? hasMore = freezed,Object? totalItems = freezed,Object? totalPage = freezed,Object? itemsPerPage = freezed,}) {
  return _then(PaginationData2(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,totalPage: freezed == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int?,itemsPerPage: freezed == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationData2].
extension PaginationData2Patterns on PaginationData2 {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationData2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationData2() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationData2 value)  $default,){
final _that = this;
switch (_that) {
case _PaginationData2():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationData2 value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationData2() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'has_more')  bool? hasMore, @JsonKey(name: 'total_items')  int? totalItems, @JsonKey(name: 'total_page')  int? totalPage, @JsonKey(name: 'items_per_page')  int? itemsPerPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationData2() when $default != null:
return $default(_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'has_more')  bool? hasMore, @JsonKey(name: 'total_items')  int? totalItems, @JsonKey(name: 'total_page')  int? totalPage, @JsonKey(name: 'items_per_page')  int? itemsPerPage)  $default,) {final _that = this;
switch (_that) {
case _PaginationData2():
return $default(_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_page')  int? currentPage, @JsonKey(name: 'has_more')  bool? hasMore, @JsonKey(name: 'total_items')  int? totalItems, @JsonKey(name: 'total_page')  int? totalPage, @JsonKey(name: 'items_per_page')  int? itemsPerPage)?  $default,) {final _that = this;
switch (_that) {
case _PaginationData2() when $default != null:
return $default(_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationData2 extends PaginationData2 {
  const _PaginationData2({@JsonKey(name: 'current_page') this.currentPage, @JsonKey(name: 'has_more') this.hasMore, @JsonKey(name: 'total_items') this.totalItems, @JsonKey(name: 'total_page') this.totalPage, @JsonKey(name: 'items_per_page') this.itemsPerPage}): super._();
  factory _PaginationData2.fromJson(Map<String, dynamic> json) => _$PaginationData2FromJson(json);

@override@JsonKey(name: 'current_page') final  int? currentPage;
@override@JsonKey(name: 'has_more') final  bool? hasMore;
@override@JsonKey(name: 'total_items') final  int? totalItems;
@override@JsonKey(name: 'total_page') final  int? totalPage;
@override@JsonKey(name: 'items_per_page') final  int? itemsPerPage;

/// Create a copy of PaginationData2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationData2CopyWith<_PaginationData2> get copyWith => __$PaginationData2CopyWithImpl<_PaginationData2>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationData2ToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationData2&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,currentPage,hasMore,totalItems,totalPage,itemsPerPage);
}

@override
String toString() {
    return 'PaginationData2(currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationData2CopyWith<$Res> implements $PaginationData2CopyWith<$Res> {
  factory _$PaginationData2CopyWith(_PaginationData2 value, $Res Function(_PaginationData2) _then) = __$PaginationData2CopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_page') int? currentPage,@JsonKey(name: 'has_more') bool? hasMore,@JsonKey(name: 'total_items') int? totalItems,@JsonKey(name: 'total_page') int? totalPage,@JsonKey(name: 'items_per_page') int? itemsPerPage
});




}
/// @nodoc
class __$PaginationData2CopyWithImpl<$Res>
    implements _$PaginationData2CopyWith<$Res> {
  __$PaginationData2CopyWithImpl(this._self, this._then);

  final _PaginationData2 _self;
  final $Res Function(_PaginationData2) _then;

/// Create a copy of PaginationData2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = freezed,Object? hasMore = freezed,Object? totalItems = freezed,Object? totalPage = freezed,Object? itemsPerPage = freezed,}) {
  return _then(_PaginationData2(
currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,hasMore: freezed == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool?,totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,totalPage: freezed == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int?,itemsPerPage: freezed == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
