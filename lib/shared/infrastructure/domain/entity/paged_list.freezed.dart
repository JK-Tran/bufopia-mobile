// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PagedList<T> {

 List<T> get data; Object? get otherData; int get currentPage; bool get hasMore; int get totalItems; int get totalPage; int get itemsPerPage; int? get offset; int? get nextCursor;
/// Create a copy of PagedList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PagedListCopyWith<T, PagedList<T>> get copyWith => _$PagedListCopyWithImpl<T, PagedList<T>>(this as PagedList<T>, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PagedList<T>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PagedList<T>&&const DeepCollectionEquality().equals(other.data, _this.data)&&const DeepCollectionEquality().equals(other.otherData, _this.otherData)&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.hasMore, _this.hasMore) || other.hasMore == _this.hasMore)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.totalPage, _this.totalPage) || other.totalPage == _this.totalPage)&&(identical(other.itemsPerPage, _this.itemsPerPage) || other.itemsPerPage == _this.itemsPerPage)&&(identical(other.offset, _this.offset) || other.offset == _this.offset)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}


@override
int get hashCode {
  final _this = this as PagedList<T>;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),const DeepCollectionEquality().hash(_this.otherData),_this.currentPage,_this.hasMore,_this.totalItems,_this.totalPage,_this.itemsPerPage,_this.offset,_this.nextCursor);
}

@override
String toString() {
  final _this = this as PagedList<T>;
  return 'PagedList<$T>(data: ${_this.data}, otherData: ${_this.otherData}, currentPage: ${_this.currentPage}, hasMore: ${_this.hasMore}, totalItems: ${_this.totalItems}, totalPage: ${_this.totalPage}, itemsPerPage: ${_this.itemsPerPage}, offset: ${_this.offset}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $PagedListCopyWith<T,$Res>  {
  factory $PagedListCopyWith(PagedList<T> value, $Res Function(PagedList<T>) _then) = _$PagedListCopyWithImpl;
@useResult
$Res call({
 List<T> data, Object? otherData, int currentPage, bool hasMore, int totalItems, int totalPage, int itemsPerPage, int? offset, int? nextCursor
});




}
/// @nodoc
class _$PagedListCopyWithImpl<T,$Res>
    implements $PagedListCopyWith<T, $Res> {
  _$PagedListCopyWithImpl(this._self, this._then);

  final PagedList<T> _self;
  final $Res Function(PagedList<T>) _then;

/// Create a copy of PagedList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? otherData = freezed,Object? currentPage = null,Object? hasMore = null,Object? totalItems = null,Object? totalPage = null,Object? itemsPerPage = null,Object? offset = freezed,Object? nextCursor = freezed,}) {
  return _then(PagedList(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>,otherData: freezed == otherData ? _self.otherData : otherData ,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PagedList].
extension PagedListPatterns<T> on PagedList<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PagedList<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PagedList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PagedList<T> value)  $default,){
final _that = this;
switch (_that) {
case _PagedList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PagedList<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PagedList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> data,  Object? otherData,  int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage,  int? offset,  int? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PagedList() when $default != null:
return $default(_that.data,_that.otherData,_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage,_that.offset,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> data,  Object? otherData,  int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage,  int? offset,  int? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _PagedList():
return $default(_that.data,_that.otherData,_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage,_that.offset,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> data,  Object? otherData,  int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage,  int? offset,  int? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _PagedList() when $default != null:
return $default(_that.data,_that.otherData,_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage,_that.offset,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc


class _PagedList<T> extends PagedList<T> {
  const _PagedList({required  List<T> data, this.otherData = null, this.currentPage = 1, this.hasMore = false, this.totalItems = 0, this.totalPage = 0, this.itemsPerPage = 0, this.offset = -99, this.nextCursor}): _data = data,super._();
  

 final  List<T> _data;
@override List<T> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  Object? otherData;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int totalPage;
@override@JsonKey() final  int itemsPerPage;
@override@JsonKey() final  int? offset;
@override final  int? nextCursor;

/// Create a copy of PagedList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PagedListCopyWith<T, _PagedList<T>> get copyWith => __$PagedListCopyWithImpl<T, _PagedList<T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PagedList<T>&&const DeepCollectionEquality().equals(other.data, _data)&&const DeepCollectionEquality().equals(other.otherData, otherData)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(otherData),currentPage,hasMore,totalItems,totalPage,itemsPerPage,offset,nextCursor);
}

@override
String toString() {
    return 'PagedList<$T>(data: $data, otherData: $otherData, currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage, offset: $offset, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$PagedListCopyWith<T,$Res> implements $PagedListCopyWith<T, $Res> {
  factory _$PagedListCopyWith(_PagedList<T> value, $Res Function(_PagedList<T>) _then) = __$PagedListCopyWithImpl;
@override @useResult
$Res call({
 List<T> data, Object? otherData, int currentPage, bool hasMore, int totalItems, int totalPage, int itemsPerPage, int? offset, int? nextCursor
});




}
/// @nodoc
class __$PagedListCopyWithImpl<T,$Res>
    implements _$PagedListCopyWith<T, $Res> {
  __$PagedListCopyWithImpl(this._self, this._then);

  final _PagedList<T> _self;
  final $Res Function(_PagedList<T>) _then;

/// Create a copy of PagedList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? otherData = freezed,Object? currentPage = null,Object? hasMore = null,Object? totalItems = null,Object? totalPage = null,Object? itemsPerPage = null,Object? offset = freezed,Object? nextCursor = freezed,}) {
  return _then(_PagedList<T>(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>,otherData: freezed == otherData ? _self.otherData : otherData ,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,offset: freezed == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int?,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
