// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Pagination {

 int get currentPage; bool get hasMore; int get totalItems; int get totalPage; int get itemsPerPage;
/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationCopyWith<Pagination> get copyWith => _$PaginationCopyWithImpl<Pagination>(this as Pagination, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Pagination;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.hasMore, _this.hasMore) || other.hasMore == _this.hasMore)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.totalPage, _this.totalPage) || other.totalPage == _this.totalPage)&&(identical(other.itemsPerPage, _this.itemsPerPage) || other.itemsPerPage == _this.itemsPerPage));
}


@override
int get hashCode {
  final _this = this as Pagination;
  return Object.hash(runtimeType,_this.currentPage,_this.hasMore,_this.totalItems,_this.totalPage,_this.itemsPerPage);
}

@override
String toString() {
  final _this = this as Pagination;
  return 'Pagination(currentPage: ${_this.currentPage}, hasMore: ${_this.hasMore}, totalItems: ${_this.totalItems}, totalPage: ${_this.totalPage}, itemsPerPage: ${_this.itemsPerPage})';
}


}

/// @nodoc
abstract mixin class $PaginationCopyWith<$Res>  {
  factory $PaginationCopyWith(Pagination value, $Res Function(Pagination) _then) = _$PaginationCopyWithImpl;
@useResult
$Res call({
 int currentPage, bool hasMore, int totalItems, int totalPage, int itemsPerPage
});




}
/// @nodoc
class _$PaginationCopyWithImpl<$Res>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._self, this._then);

  final Pagination _self;
  final $Res Function(Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? hasMore = null,Object? totalItems = null,Object? totalPage = null,Object? itemsPerPage = null,}) {
  return _then(Pagination(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Pagination].
extension PaginationPatterns on Pagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pagination value)  $default,){
final _that = this;
switch (_that) {
case _Pagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pagination value)?  $default,){
final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage)  $default,) {final _that = this;
switch (_that) {
case _Pagination():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage)?  $default,) {final _that = this;
switch (_that) {
case _Pagination() when $default != null:
return $default(_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage);case _:
  return null;

}
}

}

/// @nodoc


class _Pagination implements Pagination {
  const _Pagination({this.currentPage = 1, this.hasMore = false, this.totalItems = 0, this.totalPage = 0, this.itemsPerPage = 0});
  

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int totalPage;
@override@JsonKey() final  int itemsPerPage;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationCopyWith<_Pagination> get copyWith => __$PaginationCopyWithImpl<_Pagination>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,currentPage,hasMore,totalItems,totalPage,itemsPerPage);
}

@override
String toString() {
    return 'Pagination(currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage)';
}


}

/// @nodoc
abstract mixin class _$PaginationCopyWith<$Res> implements $PaginationCopyWith<$Res> {
  factory _$PaginationCopyWith(_Pagination value, $Res Function(_Pagination) _then) = __$PaginationCopyWithImpl;
@override @useResult
$Res call({
 int currentPage, bool hasMore, int totalItems, int totalPage, int itemsPerPage
});




}
/// @nodoc
class __$PaginationCopyWithImpl<$Res>
    implements _$PaginationCopyWith<$Res> {
  __$PaginationCopyWithImpl(this._self, this._then);

  final _Pagination _self;
  final $Res Function(_Pagination) _then;

/// Create a copy of Pagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? hasMore = null,Object? totalItems = null,Object? totalPage = null,Object? itemsPerPage = null,}) {
  return _then(_Pagination(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$Pagination2 {

 int get currentPage; bool get hasMore; int get totalItems; int get totalPage; int get itemsPerPage;
/// Create a copy of Pagination2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Pagination2CopyWith<Pagination2> get copyWith => _$Pagination2CopyWithImpl<Pagination2>(this as Pagination2, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Pagination2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pagination2&&(identical(other.currentPage, _this.currentPage) || other.currentPage == _this.currentPage)&&(identical(other.hasMore, _this.hasMore) || other.hasMore == _this.hasMore)&&(identical(other.totalItems, _this.totalItems) || other.totalItems == _this.totalItems)&&(identical(other.totalPage, _this.totalPage) || other.totalPage == _this.totalPage)&&(identical(other.itemsPerPage, _this.itemsPerPage) || other.itemsPerPage == _this.itemsPerPage));
}


@override
int get hashCode {
  final _this = this as Pagination2;
  return Object.hash(runtimeType,_this.currentPage,_this.hasMore,_this.totalItems,_this.totalPage,_this.itemsPerPage);
}

@override
String toString() {
  final _this = this as Pagination2;
  return 'Pagination2(currentPage: ${_this.currentPage}, hasMore: ${_this.hasMore}, totalItems: ${_this.totalItems}, totalPage: ${_this.totalPage}, itemsPerPage: ${_this.itemsPerPage})';
}


}

/// @nodoc
abstract mixin class $Pagination2CopyWith<$Res>  {
  factory $Pagination2CopyWith(Pagination2 value, $Res Function(Pagination2) _then) = _$Pagination2CopyWithImpl;
@useResult
$Res call({
 int currentPage, bool hasMore, int totalItems, int totalPage, int itemsPerPage
});




}
/// @nodoc
class _$Pagination2CopyWithImpl<$Res>
    implements $Pagination2CopyWith<$Res> {
  _$Pagination2CopyWithImpl(this._self, this._then);

  final Pagination2 _self;
  final $Res Function(Pagination2) _then;

/// Create a copy of Pagination2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? hasMore = null,Object? totalItems = null,Object? totalPage = null,Object? itemsPerPage = null,}) {
  return _then(Pagination2(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Pagination2].
extension Pagination2Patterns on Pagination2 {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pagination2 value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pagination2() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pagination2 value)  $default,){
final _that = this;
switch (_that) {
case _Pagination2():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pagination2 value)?  $default,){
final _that = this;
switch (_that) {
case _Pagination2() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pagination2() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage)  $default,) {final _that = this;
switch (_that) {
case _Pagination2():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPage,  bool hasMore,  int totalItems,  int totalPage,  int itemsPerPage)?  $default,) {final _that = this;
switch (_that) {
case _Pagination2() when $default != null:
return $default(_that.currentPage,_that.hasMore,_that.totalItems,_that.totalPage,_that.itemsPerPage);case _:
  return null;

}
}

}

/// @nodoc


class _Pagination2 implements Pagination2 {
  const _Pagination2({this.currentPage = 1, this.hasMore = false, this.totalItems = 0, this.totalPage = 0, this.itemsPerPage = 0});
  

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int totalItems;
@override@JsonKey() final  int totalPage;
@override@JsonKey() final  int itemsPerPage;

/// Create a copy of Pagination2
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Pagination2CopyWith<_Pagination2> get copyWith => __$Pagination2CopyWithImpl<_Pagination2>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pagination2&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage)&&(identical(other.itemsPerPage, itemsPerPage) || other.itemsPerPage == itemsPerPage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,currentPage,hasMore,totalItems,totalPage,itemsPerPage);
}

@override
String toString() {
    return 'Pagination2(currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage)';
}


}

/// @nodoc
abstract mixin class _$Pagination2CopyWith<$Res> implements $Pagination2CopyWith<$Res> {
  factory _$Pagination2CopyWith(_Pagination2 value, $Res Function(_Pagination2) _then) = __$Pagination2CopyWithImpl;
@override @useResult
$Res call({
 int currentPage, bool hasMore, int totalItems, int totalPage, int itemsPerPage
});




}
/// @nodoc
class __$Pagination2CopyWithImpl<$Res>
    implements _$Pagination2CopyWith<$Res> {
  __$Pagination2CopyWithImpl(this._self, this._then);

  final _Pagination2 _self;
  final $Res Function(_Pagination2) _then;

/// Create a copy of Pagination2
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? hasMore = null,Object? totalItems = null,Object? totalPage = null,Object? itemsPerPage = null,}) {
  return _then(_Pagination2(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,itemsPerPage: null == itemsPerPage ? _self.itemsPerPage : itemsPerPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
