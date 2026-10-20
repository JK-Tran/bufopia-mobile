// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'round_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoundResult {

 int get index; String get word; String get vi; String get phonetic; String get example; String get solverUid; bool get isSkipped; int get gainedScore;
/// Create a copy of RoundResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoundResultCopyWith<RoundResult> get copyWith => _$RoundResultCopyWithImpl<RoundResult>(this as RoundResult, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RoundResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoundResult&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.example, _this.example) || other.example == _this.example)&&(identical(other.solverUid, _this.solverUid) || other.solverUid == _this.solverUid)&&(identical(other.isSkipped, _this.isSkipped) || other.isSkipped == _this.isSkipped)&&(identical(other.gainedScore, _this.gainedScore) || other.gainedScore == _this.gainedScore));
}


@override
int get hashCode {
  final _this = this as RoundResult;
  return Object.hash(runtimeType,_this.index,_this.word,_this.vi,_this.phonetic,_this.example,_this.solverUid,_this.isSkipped,_this.gainedScore);
}

@override
String toString() {
  final _this = this as RoundResult;
  return 'RoundResult(index: ${_this.index}, word: ${_this.word}, vi: ${_this.vi}, phonetic: ${_this.phonetic}, example: ${_this.example}, solverUid: ${_this.solverUid}, isSkipped: ${_this.isSkipped}, gainedScore: ${_this.gainedScore})';
}


}

/// @nodoc
abstract mixin class $RoundResultCopyWith<$Res>  {
  factory $RoundResultCopyWith(RoundResult value, $Res Function(RoundResult) _then) = _$RoundResultCopyWithImpl;
@useResult
$Res call({
 int index, String word, String vi, String phonetic, String example, String solverUid, bool isSkipped, int gainedScore
});




}
/// @nodoc
class _$RoundResultCopyWithImpl<$Res>
    implements $RoundResultCopyWith<$Res> {
  _$RoundResultCopyWithImpl(this._self, this._then);

  final RoundResult _self;
  final $Res Function(RoundResult) _then;

/// Create a copy of RoundResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? word = null,Object? vi = null,Object? phonetic = null,Object? example = null,Object? solverUid = null,Object? isSkipped = null,Object? gainedScore = null,}) {
  return _then(RoundResult(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,example: null == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String,solverUid: null == solverUid ? _self.solverUid : solverUid // ignore: cast_nullable_to_non_nullable
as String,isSkipped: null == isSkipped ? _self.isSkipped : isSkipped // ignore: cast_nullable_to_non_nullable
as bool,gainedScore: null == gainedScore ? _self.gainedScore : gainedScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RoundResult].
extension RoundResultPatterns on RoundResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoundResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoundResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoundResult value)  $default,){
final _that = this;
switch (_that) {
case _RoundResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoundResult value)?  $default,){
final _that = this;
switch (_that) {
case _RoundResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  String word,  String vi,  String phonetic,  String example,  String solverUid,  bool isSkipped,  int gainedScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoundResult() when $default != null:
return $default(_that.index,_that.word,_that.vi,_that.phonetic,_that.example,_that.solverUid,_that.isSkipped,_that.gainedScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  String word,  String vi,  String phonetic,  String example,  String solverUid,  bool isSkipped,  int gainedScore)  $default,) {final _that = this;
switch (_that) {
case _RoundResult():
return $default(_that.index,_that.word,_that.vi,_that.phonetic,_that.example,_that.solverUid,_that.isSkipped,_that.gainedScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  String word,  String vi,  String phonetic,  String example,  String solverUid,  bool isSkipped,  int gainedScore)?  $default,) {final _that = this;
switch (_that) {
case _RoundResult() when $default != null:
return $default(_that.index,_that.word,_that.vi,_that.phonetic,_that.example,_that.solverUid,_that.isSkipped,_that.gainedScore);case _:
  return null;

}
}

}

/// @nodoc


class _RoundResult implements RoundResult {
  const _RoundResult({this.index = 0, this.word = '', this.vi = '', this.phonetic = '', this.example = '', this.solverUid = '', this.isSkipped = false, this.gainedScore = 0});
  

@override@JsonKey() final  int index;
@override@JsonKey() final  String word;
@override@JsonKey() final  String vi;
@override@JsonKey() final  String phonetic;
@override@JsonKey() final  String example;
@override@JsonKey() final  String solverUid;
@override@JsonKey() final  bool isSkipped;
@override@JsonKey() final  int gainedScore;

/// Create a copy of RoundResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoundResultCopyWith<_RoundResult> get copyWith => __$RoundResultCopyWithImpl<_RoundResult>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoundResult&&(identical(other.index, index) || other.index == index)&&(identical(other.word, word) || other.word == word)&&(identical(other.vi, vi) || other.vi == vi)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.example, example) || other.example == example)&&(identical(other.solverUid, solverUid) || other.solverUid == solverUid)&&(identical(other.isSkipped, isSkipped) || other.isSkipped == isSkipped)&&(identical(other.gainedScore, gainedScore) || other.gainedScore == gainedScore));
}


@override
int get hashCode {
    return Object.hash(runtimeType,index,word,vi,phonetic,example,solverUid,isSkipped,gainedScore);
}

@override
String toString() {
    return 'RoundResult(index: $index, word: $word, vi: $vi, phonetic: $phonetic, example: $example, solverUid: $solverUid, isSkipped: $isSkipped, gainedScore: $gainedScore)';
}


}

/// @nodoc
abstract mixin class _$RoundResultCopyWith<$Res> implements $RoundResultCopyWith<$Res> {
  factory _$RoundResultCopyWith(_RoundResult value, $Res Function(_RoundResult) _then) = __$RoundResultCopyWithImpl;
@override @useResult
$Res call({
 int index, String word, String vi, String phonetic, String example, String solverUid, bool isSkipped, int gainedScore
});




}
/// @nodoc
class __$RoundResultCopyWithImpl<$Res>
    implements _$RoundResultCopyWith<$Res> {
  __$RoundResultCopyWithImpl(this._self, this._then);

  final _RoundResult _self;
  final $Res Function(_RoundResult) _then;

/// Create a copy of RoundResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? word = null,Object? vi = null,Object? phonetic = null,Object? example = null,Object? solverUid = null,Object? isSkipped = null,Object? gainedScore = null,}) {
  return _then(_RoundResult(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,example: null == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String,solverUid: null == solverUid ? _self.solverUid : solverUid // ignore: cast_nullable_to_non_nullable
as String,isSkipped: null == isSkipped ? _self.isSkipped : isSkipped // ignore: cast_nullable_to_non_nullable
as bool,gainedScore: null == gainedScore ? _self.gainedScore : gainedScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
