// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_memory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WordMemory {

 String get wordId; int get seen; int get fast; String get status; String get reason; double get seconds; int? get last; int? get due;
/// Create a copy of WordMemory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordMemoryCopyWith<WordMemory> get copyWith => _$WordMemoryCopyWithImpl<WordMemory>(this as WordMemory, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WordMemory;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordMemory&&(identical(other.wordId, _this.wordId) || other.wordId == _this.wordId)&&(identical(other.seen, _this.seen) || other.seen == _this.seen)&&(identical(other.fast, _this.fast) || other.fast == _this.fast)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.seconds, _this.seconds) || other.seconds == _this.seconds)&&(identical(other.last, _this.last) || other.last == _this.last)&&(identical(other.due, _this.due) || other.due == _this.due));
}


@override
int get hashCode {
  final _this = this as WordMemory;
  return Object.hash(runtimeType,_this.wordId,_this.seen,_this.fast,_this.status,_this.reason,_this.seconds,_this.last,_this.due);
}

@override
String toString() {
  final _this = this as WordMemory;
  return 'WordMemory(wordId: ${_this.wordId}, seen: ${_this.seen}, fast: ${_this.fast}, status: ${_this.status}, reason: ${_this.reason}, seconds: ${_this.seconds}, last: ${_this.last}, due: ${_this.due})';
}


}

/// @nodoc
abstract mixin class $WordMemoryCopyWith<$Res>  {
  factory $WordMemoryCopyWith(WordMemory value, $Res Function(WordMemory) _then) = _$WordMemoryCopyWithImpl;
@useResult
$Res call({
 String wordId, int seen, int fast, String status, String reason, double seconds, int? last, int? due
});




}
/// @nodoc
class _$WordMemoryCopyWithImpl<$Res>
    implements $WordMemoryCopyWith<$Res> {
  _$WordMemoryCopyWithImpl(this._self, this._then);

  final WordMemory _self;
  final $Res Function(WordMemory) _then;

/// Create a copy of WordMemory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wordId = null,Object? seen = null,Object? fast = null,Object? status = null,Object? reason = null,Object? seconds = null,Object? last = freezed,Object? due = freezed,}) {
  return _then(WordMemory(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,seen: null == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as int,fast: null == fast ? _self.fast : fast // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,seconds: null == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as double,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordMemory].
extension WordMemoryPatterns on WordMemory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordMemory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordMemory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordMemory value)  $default,){
final _that = this;
switch (_that) {
case _WordMemory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordMemory value)?  $default,){
final _that = this;
switch (_that) {
case _WordMemory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String wordId,  int seen,  int fast,  String status,  String reason,  double seconds,  int? last,  int? due)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordMemory() when $default != null:
return $default(_that.wordId,_that.seen,_that.fast,_that.status,_that.reason,_that.seconds,_that.last,_that.due);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String wordId,  int seen,  int fast,  String status,  String reason,  double seconds,  int? last,  int? due)  $default,) {final _that = this;
switch (_that) {
case _WordMemory():
return $default(_that.wordId,_that.seen,_that.fast,_that.status,_that.reason,_that.seconds,_that.last,_that.due);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String wordId,  int seen,  int fast,  String status,  String reason,  double seconds,  int? last,  int? due)?  $default,) {final _that = this;
switch (_that) {
case _WordMemory() when $default != null:
return $default(_that.wordId,_that.seen,_that.fast,_that.status,_that.reason,_that.seconds,_that.last,_that.due);case _:
  return null;

}
}

}

/// @nodoc


class _WordMemory implements WordMemory {
  const _WordMemory({this.wordId = '', this.seen = 0, this.fast = 0, this.status = 'Learning', this.reason = '', this.seconds = 0.0, this.last, this.due});
  

@override@JsonKey() final  String wordId;
@override@JsonKey() final  int seen;
@override@JsonKey() final  int fast;
@override@JsonKey() final  String status;
@override@JsonKey() final  String reason;
@override@JsonKey() final  double seconds;
@override final  int? last;
@override final  int? due;

/// Create a copy of WordMemory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordMemoryCopyWith<_WordMemory> get copyWith => __$WordMemoryCopyWithImpl<_WordMemory>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordMemory&&(identical(other.wordId, wordId) || other.wordId == wordId)&&(identical(other.seen, seen) || other.seen == seen)&&(identical(other.fast, fast) || other.fast == fast)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.seconds, seconds) || other.seconds == seconds)&&(identical(other.last, last) || other.last == last)&&(identical(other.due, due) || other.due == due));
}


@override
int get hashCode {
    return Object.hash(runtimeType,wordId,seen,fast,status,reason,seconds,last,due);
}

@override
String toString() {
    return 'WordMemory(wordId: $wordId, seen: $seen, fast: $fast, status: $status, reason: $reason, seconds: $seconds, last: $last, due: $due)';
}


}

/// @nodoc
abstract mixin class _$WordMemoryCopyWith<$Res> implements $WordMemoryCopyWith<$Res> {
  factory _$WordMemoryCopyWith(_WordMemory value, $Res Function(_WordMemory) _then) = __$WordMemoryCopyWithImpl;
@override @useResult
$Res call({
 String wordId, int seen, int fast, String status, String reason, double seconds, int? last, int? due
});




}
/// @nodoc
class __$WordMemoryCopyWithImpl<$Res>
    implements _$WordMemoryCopyWith<$Res> {
  __$WordMemoryCopyWithImpl(this._self, this._then);

  final _WordMemory _self;
  final $Res Function(_WordMemory) _then;

/// Create a copy of WordMemory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wordId = null,Object? seen = null,Object? fast = null,Object? status = null,Object? reason = null,Object? seconds = null,Object? last = freezed,Object? due = freezed,}) {
  return _then(_WordMemory(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,seen: null == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as int,fast: null == fast ? _self.fast : fast // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,seconds: null == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as double,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
