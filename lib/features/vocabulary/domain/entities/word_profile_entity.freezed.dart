// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WordProfileEntity {

 String get wordId; int get familiarity; int get interval; double get easeFactor; int? get nextReview; int get lapses;
/// Create a copy of WordProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordProfileEntityCopyWith<WordProfileEntity> get copyWith => _$WordProfileEntityCopyWithImpl<WordProfileEntity>(this as WordProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WordProfileEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordProfileEntity&&(identical(other.wordId, _this.wordId) || other.wordId == _this.wordId)&&(identical(other.familiarity, _this.familiarity) || other.familiarity == _this.familiarity)&&(identical(other.interval, _this.interval) || other.interval == _this.interval)&&(identical(other.easeFactor, _this.easeFactor) || other.easeFactor == _this.easeFactor)&&(identical(other.nextReview, _this.nextReview) || other.nextReview == _this.nextReview)&&(identical(other.lapses, _this.lapses) || other.lapses == _this.lapses));
}


@override
int get hashCode {
  final _this = this as WordProfileEntity;
  return Object.hash(runtimeType,_this.wordId,_this.familiarity,_this.interval,_this.easeFactor,_this.nextReview,_this.lapses);
}

@override
String toString() {
  final _this = this as WordProfileEntity;
  return 'WordProfileEntity(wordId: ${_this.wordId}, familiarity: ${_this.familiarity}, interval: ${_this.interval}, easeFactor: ${_this.easeFactor}, nextReview: ${_this.nextReview}, lapses: ${_this.lapses})';
}


}

/// @nodoc
abstract mixin class $WordProfileEntityCopyWith<$Res>  {
  factory $WordProfileEntityCopyWith(WordProfileEntity value, $Res Function(WordProfileEntity) _then) = _$WordProfileEntityCopyWithImpl;
@useResult
$Res call({
 String wordId, int familiarity, int interval, double easeFactor, int? nextReview, int lapses
});




}
/// @nodoc
class _$WordProfileEntityCopyWithImpl<$Res>
    implements $WordProfileEntityCopyWith<$Res> {
  _$WordProfileEntityCopyWithImpl(this._self, this._then);

  final WordProfileEntity _self;
  final $Res Function(WordProfileEntity) _then;

/// Create a copy of WordProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wordId = null,Object? familiarity = null,Object? interval = null,Object? easeFactor = null,Object? nextReview = freezed,Object? lapses = null,}) {
  return _then(WordProfileEntity(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,familiarity: null == familiarity ? _self.familiarity : familiarity // ignore: cast_nullable_to_non_nullable
as int,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int,easeFactor: null == easeFactor ? _self.easeFactor : easeFactor // ignore: cast_nullable_to_non_nullable
as double,nextReview: freezed == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as int?,lapses: null == lapses ? _self.lapses : lapses // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WordProfileEntity].
extension WordProfileEntityPatterns on WordProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _WordProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WordProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String wordId,  int familiarity,  int interval,  double easeFactor,  int? nextReview,  int lapses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordProfileEntity() when $default != null:
return $default(_that.wordId,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String wordId,  int familiarity,  int interval,  double easeFactor,  int? nextReview,  int lapses)  $default,) {final _that = this;
switch (_that) {
case _WordProfileEntity():
return $default(_that.wordId,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String wordId,  int familiarity,  int interval,  double easeFactor,  int? nextReview,  int lapses)?  $default,) {final _that = this;
switch (_that) {
case _WordProfileEntity() when $default != null:
return $default(_that.wordId,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
  return null;

}
}

}

/// @nodoc


class _WordProfileEntity implements WordProfileEntity {
  const _WordProfileEntity({this.wordId = '', this.familiarity = 1, this.interval = 1, this.easeFactor = 2.5, this.nextReview, this.lapses = 0});
  

@override@JsonKey() final  String wordId;
@override@JsonKey() final  int familiarity;
@override@JsonKey() final  int interval;
@override@JsonKey() final  double easeFactor;
@override final  int? nextReview;
@override@JsonKey() final  int lapses;

/// Create a copy of WordProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordProfileEntityCopyWith<_WordProfileEntity> get copyWith => __$WordProfileEntityCopyWithImpl<_WordProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordProfileEntity&&(identical(other.wordId, wordId) || other.wordId == wordId)&&(identical(other.familiarity, familiarity) || other.familiarity == familiarity)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.easeFactor, easeFactor) || other.easeFactor == easeFactor)&&(identical(other.nextReview, nextReview) || other.nextReview == nextReview)&&(identical(other.lapses, lapses) || other.lapses == lapses));
}


@override
int get hashCode {
    return Object.hash(runtimeType,wordId,familiarity,interval,easeFactor,nextReview,lapses);
}

@override
String toString() {
    return 'WordProfileEntity(wordId: $wordId, familiarity: $familiarity, interval: $interval, easeFactor: $easeFactor, nextReview: $nextReview, lapses: $lapses)';
}


}

/// @nodoc
abstract mixin class _$WordProfileEntityCopyWith<$Res> implements $WordProfileEntityCopyWith<$Res> {
  factory _$WordProfileEntityCopyWith(_WordProfileEntity value, $Res Function(_WordProfileEntity) _then) = __$WordProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 String wordId, int familiarity, int interval, double easeFactor, int? nextReview, int lapses
});




}
/// @nodoc
class __$WordProfileEntityCopyWithImpl<$Res>
    implements _$WordProfileEntityCopyWith<$Res> {
  __$WordProfileEntityCopyWithImpl(this._self, this._then);

  final _WordProfileEntity _self;
  final $Res Function(_WordProfileEntity) _then;

/// Create a copy of WordProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wordId = null,Object? familiarity = null,Object? interval = null,Object? easeFactor = null,Object? nextReview = freezed,Object? lapses = null,}) {
  return _then(_WordProfileEntity(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,familiarity: null == familiarity ? _self.familiarity : familiarity // ignore: cast_nullable_to_non_nullable
as int,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int,easeFactor: null == easeFactor ? _self.easeFactor : easeFactor // ignore: cast_nullable_to_non_nullable
as double,nextReview: freezed == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as int?,lapses: null == lapses ? _self.lapses : lapses // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
