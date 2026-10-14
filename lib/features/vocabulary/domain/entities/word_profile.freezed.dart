// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WordProfile {

 String get wordId; int get seen; int? get last; String get status; String? get gameMode; int get familiarity; int get interval; double get easeFactor; int? get nextReview; int get lapses;
/// Create a copy of WordProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordProfileCopyWith<WordProfile> get copyWith => _$WordProfileCopyWithImpl<WordProfile>(this as WordProfile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WordProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordProfile&&(identical(other.wordId, _this.wordId) || other.wordId == _this.wordId)&&(identical(other.seen, _this.seen) || other.seen == _this.seen)&&(identical(other.last, _this.last) || other.last == _this.last)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.gameMode, _this.gameMode) || other.gameMode == _this.gameMode)&&(identical(other.familiarity, _this.familiarity) || other.familiarity == _this.familiarity)&&(identical(other.interval, _this.interval) || other.interval == _this.interval)&&(identical(other.easeFactor, _this.easeFactor) || other.easeFactor == _this.easeFactor)&&(identical(other.nextReview, _this.nextReview) || other.nextReview == _this.nextReview)&&(identical(other.lapses, _this.lapses) || other.lapses == _this.lapses));
}


@override
int get hashCode {
  final _this = this as WordProfile;
  return Object.hash(runtimeType,_this.wordId,_this.seen,_this.last,_this.status,_this.gameMode,_this.familiarity,_this.interval,_this.easeFactor,_this.nextReview,_this.lapses);
}

@override
String toString() {
  final _this = this as WordProfile;
  return 'WordProfile(wordId: ${_this.wordId}, seen: ${_this.seen}, last: ${_this.last}, status: ${_this.status}, gameMode: ${_this.gameMode}, familiarity: ${_this.familiarity}, interval: ${_this.interval}, easeFactor: ${_this.easeFactor}, nextReview: ${_this.nextReview}, lapses: ${_this.lapses})';
}


}

/// @nodoc
abstract mixin class $WordProfileCopyWith<$Res>  {
  factory $WordProfileCopyWith(WordProfile value, $Res Function(WordProfile) _then) = _$WordProfileCopyWithImpl;
@useResult
$Res call({
 String wordId, int seen, int? last, String status, String? gameMode, int familiarity, int interval, double easeFactor, int? nextReview, int lapses
});




}
/// @nodoc
class _$WordProfileCopyWithImpl<$Res>
    implements $WordProfileCopyWith<$Res> {
  _$WordProfileCopyWithImpl(this._self, this._then);

  final WordProfile _self;
  final $Res Function(WordProfile) _then;

/// Create a copy of WordProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wordId = null,Object? seen = null,Object? last = freezed,Object? status = null,Object? gameMode = freezed,Object? familiarity = null,Object? interval = null,Object? easeFactor = null,Object? nextReview = freezed,Object? lapses = null,}) {
  return _then(WordProfile(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,seen: null == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as int,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,gameMode: freezed == gameMode ? _self.gameMode : gameMode // ignore: cast_nullable_to_non_nullable
as String?,familiarity: null == familiarity ? _self.familiarity : familiarity // ignore: cast_nullable_to_non_nullable
as int,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int,easeFactor: null == easeFactor ? _self.easeFactor : easeFactor // ignore: cast_nullable_to_non_nullable
as double,nextReview: freezed == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as int?,lapses: null == lapses ? _self.lapses : lapses // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WordProfile].
extension WordProfilePatterns on WordProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordProfile value)  $default,){
final _that = this;
switch (_that) {
case _WordProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordProfile value)?  $default,){
final _that = this;
switch (_that) {
case _WordProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String wordId,  int seen,  int? last,  String status,  String? gameMode,  int familiarity,  int interval,  double easeFactor,  int? nextReview,  int lapses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordProfile() when $default != null:
return $default(_that.wordId,_that.seen,_that.last,_that.status,_that.gameMode,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String wordId,  int seen,  int? last,  String status,  String? gameMode,  int familiarity,  int interval,  double easeFactor,  int? nextReview,  int lapses)  $default,) {final _that = this;
switch (_that) {
case _WordProfile():
return $default(_that.wordId,_that.seen,_that.last,_that.status,_that.gameMode,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String wordId,  int seen,  int? last,  String status,  String? gameMode,  int familiarity,  int interval,  double easeFactor,  int? nextReview,  int lapses)?  $default,) {final _that = this;
switch (_that) {
case _WordProfile() when $default != null:
return $default(_that.wordId,_that.seen,_that.last,_that.status,_that.gameMode,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
  return null;

}
}

}

/// @nodoc


class _WordProfile implements WordProfile {
  const _WordProfile({this.wordId = '', this.seen = 0, this.last, this.status = 'Learning', this.gameMode, this.familiarity = 1, this.interval = 1, this.easeFactor = 2.5, this.nextReview, this.lapses = 0});
  

@override@JsonKey() final  String wordId;
@override@JsonKey() final  int seen;
@override final  int? last;
@override@JsonKey() final  String status;
@override final  String? gameMode;
@override@JsonKey() final  int familiarity;
@override@JsonKey() final  int interval;
@override@JsonKey() final  double easeFactor;
@override final  int? nextReview;
@override@JsonKey() final  int lapses;

/// Create a copy of WordProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordProfileCopyWith<_WordProfile> get copyWith => __$WordProfileCopyWithImpl<_WordProfile>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordProfile&&(identical(other.wordId, wordId) || other.wordId == wordId)&&(identical(other.seen, seen) || other.seen == seen)&&(identical(other.last, last) || other.last == last)&&(identical(other.status, status) || other.status == status)&&(identical(other.gameMode, gameMode) || other.gameMode == gameMode)&&(identical(other.familiarity, familiarity) || other.familiarity == familiarity)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.easeFactor, easeFactor) || other.easeFactor == easeFactor)&&(identical(other.nextReview, nextReview) || other.nextReview == nextReview)&&(identical(other.lapses, lapses) || other.lapses == lapses));
}


@override
int get hashCode {
    return Object.hash(runtimeType,wordId,seen,last,status,gameMode,familiarity,interval,easeFactor,nextReview,lapses);
}

@override
String toString() {
    return 'WordProfile(wordId: $wordId, seen: $seen, last: $last, status: $status, gameMode: $gameMode, familiarity: $familiarity, interval: $interval, easeFactor: $easeFactor, nextReview: $nextReview, lapses: $lapses)';
}


}

/// @nodoc
abstract mixin class _$WordProfileCopyWith<$Res> implements $WordProfileCopyWith<$Res> {
  factory _$WordProfileCopyWith(_WordProfile value, $Res Function(_WordProfile) _then) = __$WordProfileCopyWithImpl;
@override @useResult
$Res call({
 String wordId, int seen, int? last, String status, String? gameMode, int familiarity, int interval, double easeFactor, int? nextReview, int lapses
});




}
/// @nodoc
class __$WordProfileCopyWithImpl<$Res>
    implements _$WordProfileCopyWith<$Res> {
  __$WordProfileCopyWithImpl(this._self, this._then);

  final _WordProfile _self;
  final $Res Function(_WordProfile) _then;

/// Create a copy of WordProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wordId = null,Object? seen = null,Object? last = freezed,Object? status = null,Object? gameMode = freezed,Object? familiarity = null,Object? interval = null,Object? easeFactor = null,Object? nextReview = freezed,Object? lapses = null,}) {
  return _then(_WordProfile(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,seen: null == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as int,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,gameMode: freezed == gameMode ? _self.gameMode : gameMode // ignore: cast_nullable_to_non_nullable
as String?,familiarity: null == familiarity ? _self.familiarity : familiarity // ignore: cast_nullable_to_non_nullable
as int,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int,easeFactor: null == easeFactor ? _self.easeFactor : easeFactor // ignore: cast_nullable_to_non_nullable
as double,nextReview: freezed == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as int?,lapses: null == lapses ? _self.lapses : lapses // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
