// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'round_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoundResultData {

@JsonKey(name: 'index') int? get index;@JsonKey(name: 'word') String? get word;@JsonKey(name: 'vi') String? get vi;@JsonKey(name: 'phonetic') String? get phonetic;@JsonKey(name: 'example') String? get example;@JsonKey(name: 'solverUid') String? get solverUid;@JsonKey(name: 'isSkipped') bool? get isSkipped;@JsonKey(name: 'gainedScore') int? get gainedScore;
/// Create a copy of RoundResultData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoundResultDataCopyWith<RoundResultData> get copyWith => _$RoundResultDataCopyWithImpl<RoundResultData>(this as RoundResultData, _$identity);

  /// Serializes this RoundResultData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RoundResultData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoundResultData&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.example, _this.example) || other.example == _this.example)&&(identical(other.solverUid, _this.solverUid) || other.solverUid == _this.solverUid)&&(identical(other.isSkipped, _this.isSkipped) || other.isSkipped == _this.isSkipped)&&(identical(other.gainedScore, _this.gainedScore) || other.gainedScore == _this.gainedScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RoundResultData;
  return Object.hash(runtimeType,_this.index,_this.word,_this.vi,_this.phonetic,_this.example,_this.solverUid,_this.isSkipped,_this.gainedScore);
}

@override
String toString() {
  final _this = this as RoundResultData;
  return 'RoundResultData(index: ${_this.index}, word: ${_this.word}, vi: ${_this.vi}, phonetic: ${_this.phonetic}, example: ${_this.example}, solverUid: ${_this.solverUid}, isSkipped: ${_this.isSkipped}, gainedScore: ${_this.gainedScore})';
}


}

/// @nodoc
abstract mixin class $RoundResultDataCopyWith<$Res>  {
  factory $RoundResultDataCopyWith(RoundResultData value, $Res Function(RoundResultData) _then) = _$RoundResultDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'index') int? index,@JsonKey(name: 'word') String? word,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'example') String? example,@JsonKey(name: 'solverUid') String? solverUid,@JsonKey(name: 'isSkipped') bool? isSkipped,@JsonKey(name: 'gainedScore') int? gainedScore
});




}
/// @nodoc
class _$RoundResultDataCopyWithImpl<$Res>
    implements $RoundResultDataCopyWith<$Res> {
  _$RoundResultDataCopyWithImpl(this._self, this._then);

  final RoundResultData _self;
  final $Res Function(RoundResultData) _then;

/// Create a copy of RoundResultData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = freezed,Object? word = freezed,Object? vi = freezed,Object? phonetic = freezed,Object? example = freezed,Object? solverUid = freezed,Object? isSkipped = freezed,Object? gainedScore = freezed,}) {
  return _then(RoundResultData(
index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,solverUid: freezed == solverUid ? _self.solverUid : solverUid // ignore: cast_nullable_to_non_nullable
as String?,isSkipped: freezed == isSkipped ? _self.isSkipped : isSkipped // ignore: cast_nullable_to_non_nullable
as bool?,gainedScore: freezed == gainedScore ? _self.gainedScore : gainedScore // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoundResultData].
extension RoundResultDataPatterns on RoundResultData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoundResultData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoundResultData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoundResultData value)  $default,){
final _that = this;
switch (_that) {
case _RoundResultData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoundResultData value)?  $default,){
final _that = this;
switch (_that) {
case _RoundResultData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'index')  int? index, @JsonKey(name: 'word')  String? word, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'solverUid')  String? solverUid, @JsonKey(name: 'isSkipped')  bool? isSkipped, @JsonKey(name: 'gainedScore')  int? gainedScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoundResultData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'index')  int? index, @JsonKey(name: 'word')  String? word, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'solverUid')  String? solverUid, @JsonKey(name: 'isSkipped')  bool? isSkipped, @JsonKey(name: 'gainedScore')  int? gainedScore)  $default,) {final _that = this;
switch (_that) {
case _RoundResultData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'index')  int? index, @JsonKey(name: 'word')  String? word, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'example')  String? example, @JsonKey(name: 'solverUid')  String? solverUid, @JsonKey(name: 'isSkipped')  bool? isSkipped, @JsonKey(name: 'gainedScore')  int? gainedScore)?  $default,) {final _that = this;
switch (_that) {
case _RoundResultData() when $default != null:
return $default(_that.index,_that.word,_that.vi,_that.phonetic,_that.example,_that.solverUid,_that.isSkipped,_that.gainedScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoundResultData extends RoundResultData {
  const _RoundResultData({@JsonKey(name: 'index') this.index, @JsonKey(name: 'word') this.word, @JsonKey(name: 'vi') this.vi, @JsonKey(name: 'phonetic') this.phonetic, @JsonKey(name: 'example') this.example, @JsonKey(name: 'solverUid') this.solverUid, @JsonKey(name: 'isSkipped') this.isSkipped, @JsonKey(name: 'gainedScore') this.gainedScore}): super._();
  factory _RoundResultData.fromJson(Map<String, dynamic> json) => _$RoundResultDataFromJson(json);

@override@JsonKey(name: 'index') final  int? index;
@override@JsonKey(name: 'word') final  String? word;
@override@JsonKey(name: 'vi') final  String? vi;
@override@JsonKey(name: 'phonetic') final  String? phonetic;
@override@JsonKey(name: 'example') final  String? example;
@override@JsonKey(name: 'solverUid') final  String? solverUid;
@override@JsonKey(name: 'isSkipped') final  bool? isSkipped;
@override@JsonKey(name: 'gainedScore') final  int? gainedScore;

/// Create a copy of RoundResultData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoundResultDataCopyWith<_RoundResultData> get copyWith => __$RoundResultDataCopyWithImpl<_RoundResultData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoundResultDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoundResultData&&(identical(other.index, index) || other.index == index)&&(identical(other.word, word) || other.word == word)&&(identical(other.vi, vi) || other.vi == vi)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.example, example) || other.example == example)&&(identical(other.solverUid, solverUid) || other.solverUid == solverUid)&&(identical(other.isSkipped, isSkipped) || other.isSkipped == isSkipped)&&(identical(other.gainedScore, gainedScore) || other.gainedScore == gainedScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,index,word,vi,phonetic,example,solverUid,isSkipped,gainedScore);
}

@override
String toString() {
    return 'RoundResultData(index: $index, word: $word, vi: $vi, phonetic: $phonetic, example: $example, solverUid: $solverUid, isSkipped: $isSkipped, gainedScore: $gainedScore)';
}


}

/// @nodoc
abstract mixin class _$RoundResultDataCopyWith<$Res> implements $RoundResultDataCopyWith<$Res> {
  factory _$RoundResultDataCopyWith(_RoundResultData value, $Res Function(_RoundResultData) _then) = __$RoundResultDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'index') int? index,@JsonKey(name: 'word') String? word,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'example') String? example,@JsonKey(name: 'solverUid') String? solverUid,@JsonKey(name: 'isSkipped') bool? isSkipped,@JsonKey(name: 'gainedScore') int? gainedScore
});




}
/// @nodoc
class __$RoundResultDataCopyWithImpl<$Res>
    implements _$RoundResultDataCopyWith<$Res> {
  __$RoundResultDataCopyWithImpl(this._self, this._then);

  final _RoundResultData _self;
  final $Res Function(_RoundResultData) _then;

/// Create a copy of RoundResultData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = freezed,Object? word = freezed,Object? vi = freezed,Object? phonetic = freezed,Object? example = freezed,Object? solverUid = freezed,Object? isSkipped = freezed,Object? gainedScore = freezed,}) {
  return _then(_RoundResultData(
index: freezed == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int?,word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,solverUid: freezed == solverUid ? _self.solverUid : solverUid // ignore: cast_nullable_to_non_nullable
as String?,isSkipped: freezed == isSkipped ? _self.isSkipped : isSkipped // ignore: cast_nullable_to_non_nullable
as bool?,gainedScore: freezed == gainedScore ? _self.gainedScore : gainedScore // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
