// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_more_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadMoreOutput<T> {

 List<T> get data; Object? get otherData; int get page; bool get isRefreshSuccess; bool get isLastPage; int get totalItems; int get offset; int get totalPage; int get itemsPerPage; int? get nextCursor;
/// Create a copy of LoadMoreOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMoreOutputCopyWith<T, LoadMoreOutput<T>> get copyWith => _$LoadMoreOutputCopyWithImpl<T, LoadMoreOutput<T>>(this as LoadMoreOutput<T>, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LoadMoreOutput<T>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreOutput<T>&&const DeepCollectionEquality().equals(other.data, _this.data)&&const DeepCollectionEquality().equals(other.otherData, _this.otherData)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.isRefreshSuccess, _this.isRefreshSuccess) || other.isRefreshSuccess == _this.isRefreshSuccess)&&(identical(other.isLastPage, _this.isLastPage) || other.isLastPage == _this.isLastPage)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.offset, _this.offset) || other.offset == _this.offset)&&(identical(other.totalPage, _this.totalPage) || other.totalPage == _this.totalPage)&&(identical(other.itemsPerPage, _this.itemsPerPage) || other.itemsPerPage == _this.itemsPerPage)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor));
}


@override
int get hashCode {
  final _this = this as LoadMoreOutput<T>;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),const DeepCollectionEquality().hash(_this.otherData),_this.page,_this.isRefreshSuccess,_this.isLastPage,_this.totalItems,_this.offset,_this.totalPage,_this.itemsPerPage,_this.nextCursor);
}

@override
String toString() {
  final _this = this as LoadMoreOutput<T>;
  return 'LoadMoreOutput<$T>(data: ${_this.data}, otherData: ${_this.otherData}, page: ${_this.page}, isRefreshSuccess: ${_this.isRefreshSuccess}, isLastPage: ${_this.isLastPage}, totalItems: ${_this.totalItems}, offset: ${_this.offset}, totalPage: ${_this.totalPage}, itemsPerPage: ${_this.itemsPerPage}, nextCursor: ${_this.nextCursor})';
}


}

/// @nodoc
abstract mixin class $LoadMoreOutputCopyWith<T,$Res>  {
  factory $LoadMoreOutputCopyWith(LoadMoreOutput<T> value, $Res Function(LoadMoreOutput<T>) _then) = _$LoadMoreOutputCopyWithImpl;
@useResult
$Res call({
 List<T> data, Object? otherData, int page, bool isRefreshSuccess, bool isLastPage, int totalItems, int offset, int totalPage, int itemsPerPage, int? nextCursor
});




}
/// @nodoc
class _$LoadMoreOutputCopyWithImpl<T,$Res>
    implements $LoadMoreOutputCopyWith<T, $Res> {
  _$LoadMoreOutputCopyWithImpl(this._self, this._then);

  final LoadMoreOutput<T> _self;
  final $Res Function(LoadMoreOutput<T>) _then;

/// Create a copy of LoadMoreOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? otherData = freezed,Object? page = null,Object? isRefreshSuccess = null,Object? isLastPage = null,Object? totalItems = null,Object? offset = null,Object? totalPage = null,Object? itemsPerPage = null,Object? nextCursor = freezed,}) {
  return _then(LoadMoreOutput(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>,otherData: freezed == otherData ? _self.otherData : otherData ,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isRefreshSuccess: null == isRefreshSuccess ? _self.isRefreshSuccess : isRefreshSuccess // ignore: cast_nullable_to_non_nullable
as bool,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoadMoreOutput].
extension LoadMoreOutputPatterns<T> on LoadMoreOutput<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoadMoreOutput<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadMoreOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoadMoreOutput<T> value)  $default,){
final _that = this;
switch (_that) {
case _LoadMoreOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoadMoreOutput<T> value)?  $default,){
final _that = this;
switch (_that) {
case _LoadMoreOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> data,  Object? otherData,  int page,  bool isRefreshSuccess,  bool isLastPage,  int totalItems,  int offset,  int totalPage,  int itemsPerPage,  int? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadMoreOutput() when $default != null:
return $default(_that.data,_that.otherData,_that.page,_that.isRefreshSuccess,_that.isLastPage,_that.totalItems,_that.offset,_that.totalPage,_that.itemsPerPage,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> data,  Object? otherData,  int page,  bool isRefreshSuccess,  bool isLastPage,  int totalItems,  int offset,  int totalPage,  int itemsPerPage,  int? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _LoadMoreOutput():
return $default(_that.data,_that.otherData,_that.page,_that.isRefreshSuccess,_that.isLastPage,_that.totalItems,_that.offset,_that.totalPage,_that.itemsPerPage,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> data,  Object? otherData,  int page,  bool isRefreshSuccess,  bool isLastPage,  int totalItems,  int offset,  int totalPage,  int itemsPerPage,  int? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _LoadMoreOutput() when $default != null:
return $default(_that.data,_that.otherData,_that.page,_that.isRefreshSuccess,_that.isLastPage,_that.totalItems,_that.offset,_that.totalPage,_that.itemsPerPage,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc


class _LoadMoreOutput<T> extends LoadMoreOutput<T> {
  const _LoadMoreOutput({required  List<T> data, this.otherData = null, this.page = PagingConstants.initialPage, this.isRefreshSuccess = false, this.isLastPage = false, this.totalItems = 0, this.offset = 0, this.totalPage = 0, this.itemsPerPage = 0, this.nextCursor}): _data = data,super._();
  

 final  List<T> _data;
@override List<T> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  Object? otherData;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool isRefreshSuccess;
@override@JsonKey() final  bool isLastPage;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int offset;
@override@JsonKey() final  int totalPage;
@override@JsonKey() final  int itemsPerPage;
@override final  int? nextCursor;

/// Create a copy of LoadMoreOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMoreOutputCopyWith<T, _LoadMoreOutput<T>> get copyWith => __$LoadMoreOutputCopyWithImpl<T, _LoadMoreOutput<T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreOutput<T>&&const DeepCollectionEquality().equals(other.data, _data)&&const DeepCollectionEquality().equals(other.otherData, otherData)&&(identical(other.page, page) || other.page == page)&&(identical(other.isRefreshSuccess, isRefreshSuccess) || other.isRefreshSuccess == isRefreshSuccess)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(otherData),page,isRefreshSuccess,isLastPage,totalItems,offset,totalPage,itemsPerPage,nextCursor);
}

@override
String toString() {
    return 'LoadMoreOutput<$T>(data: $data, otherData: $otherData, page: $page, isRefreshSuccess: $isRefreshSuccess, isLastPage: $isLastPage, totalItems: $totalItems, offset: $offset, totalPage: $totalPage, itemsPerPage: $itemsPerPage, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$LoadMoreOutputCopyWith<T,$Res> implements $LoadMoreOutputCopyWith<T, $Res> {
  factory _$LoadMoreOutputCopyWith(_LoadMoreOutput<T> value, $Res Function(_LoadMoreOutput<T>) _then) = __$LoadMoreOutputCopyWithImpl;
@override @useResult
$Res call({
 List<T> data, Object? otherData, int page, bool isRefreshSuccess, bool isLastPage, int totalItems, int offset, int totalPage, int itemsPerPage, int? nextCursor
});




}
/// @nodoc
class __$LoadMoreOutputCopyWithImpl<T,$Res>
    implements _$LoadMoreOutputCopyWith<T, $Res> {
  __$LoadMoreOutputCopyWithImpl(this._self, this._then);

  final _LoadMoreOutput<T> _self;
  final $Res Function(_LoadMoreOutput<T>) _then;

/// Create a copy of LoadMoreOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? otherData = freezed,Object? page = null,Object? isRefreshSuccess = null,Object? isLastPage = null,Object? totalItems = null,Object? offset = null,Object? totalPage = null,Object? itemsPerPage = null,Object? nextCursor = freezed,}) {
  return _then(_LoadMoreOutput<T>(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>,otherData: freezed == otherData ? _self.otherData : otherData ,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isRefreshSuccess: null == isRefreshSuccess ? _self.isRefreshSuccess : isRefreshSuccess // ignore: cast_nullable_to_non_nullable
as bool,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
