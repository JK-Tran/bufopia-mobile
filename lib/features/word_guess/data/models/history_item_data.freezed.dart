// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_item_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HistoryItemData {

@JsonKey(name: 'word') String? get word;@JsonKey(name: 'meaning') String? get meaning;@JsonKey(name: 'phonetic') String? get phonetic;@JsonKey(name: 'solvedBy') String? get solvedBy;@JsonKey(name: 'skipped') bool? get skipped;@JsonKey(name: 'solveTimeMs') int? get solveTimeMs;@JsonKey(name: 'guess') String? get guess;@JsonKey(name: 'isCorrect') bool? get isCorrect;@JsonKey(name: 'playerUid') String? get playerUid;@JsonKey(name: 'playerName') String? get playerName;@JsonKey(name: 'id') String? get id;@JsonKey(name: 'timestamp') int? get timestamp;
/// Create a copy of HistoryItemData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryItemDataCopyWith<HistoryItemData> get copyWith => _$HistoryItemDataCopyWithImpl<HistoryItemData>(this as HistoryItemData, _$identity);

  /// Serializes this HistoryItemData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HistoryItemData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryItemData&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.meaning, _this.meaning) || other.meaning == _this.meaning)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.solvedBy, _this.solvedBy) || other.solvedBy == _this.solvedBy)&&(identical(other.skipped, _this.skipped) || other.skipped == _this.skipped)&&(identical(other.solveTimeMs, _this.solveTimeMs) || other.solveTimeMs == _this.solveTimeMs)&&(identical(other.guess, _this.guess) || other.guess == _this.guess)&&(identical(other.isCorrect, _this.isCorrect) || other.isCorrect == _this.isCorrect)&&(identical(other.playerUid, _this.playerUid) || other.playerUid == _this.playerUid)&&(identical(other.playerName, _this.playerName) || other.playerName == _this.playerName)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.timestamp, _this.timestamp) || other.timestamp == _this.timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HistoryItemData;
  return Object.hash(runtimeType,_this.word,_this.meaning,_this.phonetic,_this.solvedBy,_this.skipped,_this.solveTimeMs,_this.guess,_this.isCorrect,_this.playerUid,_this.playerName,_this.id,_this.timestamp);
}

@override
String toString() {
  final _this = this as HistoryItemData;
  return 'HistoryItemData(word: ${_this.word}, meaning: ${_this.meaning}, phonetic: ${_this.phonetic}, solvedBy: ${_this.solvedBy}, skipped: ${_this.skipped}, solveTimeMs: ${_this.solveTimeMs}, guess: ${_this.guess}, isCorrect: ${_this.isCorrect}, playerUid: ${_this.playerUid}, playerName: ${_this.playerName}, id: ${_this.id}, timestamp: ${_this.timestamp})';
}


}

/// @nodoc
abstract mixin class $HistoryItemDataCopyWith<$Res>  {
  factory $HistoryItemDataCopyWith(HistoryItemData value, $Res Function(HistoryItemData) _then) = _$HistoryItemDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'word') String? word,@JsonKey(name: 'meaning') String? meaning,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'solvedBy') String? solvedBy,@JsonKey(name: 'skipped') bool? skipped,@JsonKey(name: 'solveTimeMs') int? solveTimeMs,@JsonKey(name: 'guess') String? guess,@JsonKey(name: 'isCorrect') bool? isCorrect,@JsonKey(name: 'playerUid') String? playerUid,@JsonKey(name: 'playerName') String? playerName,@JsonKey(name: 'id') String? id,@JsonKey(name: 'timestamp') int? timestamp
});




}
/// @nodoc
class _$HistoryItemDataCopyWithImpl<$Res>
    implements $HistoryItemDataCopyWith<$Res> {
  _$HistoryItemDataCopyWithImpl(this._self, this._then);

  final HistoryItemData _self;
  final $Res Function(HistoryItemData) _then;

/// Create a copy of HistoryItemData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = freezed,Object? meaning = freezed,Object? phonetic = freezed,Object? solvedBy = freezed,Object? skipped = freezed,Object? solveTimeMs = freezed,Object? guess = freezed,Object? isCorrect = freezed,Object? playerUid = freezed,Object? playerName = freezed,Object? id = freezed,Object? timestamp = freezed,}) {
  return _then(HistoryItemData(
word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,meaning: freezed == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,solvedBy: freezed == solvedBy ? _self.solvedBy : solvedBy // ignore: cast_nullable_to_non_nullable
as String?,skipped: freezed == skipped ? _self.skipped : skipped // ignore: cast_nullable_to_non_nullable
as bool?,solveTimeMs: freezed == solveTimeMs ? _self.solveTimeMs : solveTimeMs // ignore: cast_nullable_to_non_nullable
as int?,guess: freezed == guess ? _self.guess : guess // ignore: cast_nullable_to_non_nullable
as String?,isCorrect: freezed == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool?,playerUid: freezed == playerUid ? _self.playerUid : playerUid // ignore: cast_nullable_to_non_nullable
as String?,playerName: freezed == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryItemData].
extension HistoryItemDataPatterns on HistoryItemData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryItemData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryItemData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryItemData value)  $default,){
final _that = this;
switch (_that) {
case _HistoryItemData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryItemData value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryItemData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'word')  String? word, @JsonKey(name: 'meaning')  String? meaning, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'solvedBy')  String? solvedBy, @JsonKey(name: 'skipped')  bool? skipped, @JsonKey(name: 'solveTimeMs')  int? solveTimeMs, @JsonKey(name: 'guess')  String? guess, @JsonKey(name: 'isCorrect')  bool? isCorrect, @JsonKey(name: 'playerUid')  String? playerUid, @JsonKey(name: 'playerName')  String? playerName, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'timestamp')  int? timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryItemData() when $default != null:
return $default(_that.word,_that.meaning,_that.phonetic,_that.solvedBy,_that.skipped,_that.solveTimeMs,_that.guess,_that.isCorrect,_that.playerUid,_that.playerName,_that.id,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'word')  String? word, @JsonKey(name: 'meaning')  String? meaning, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'solvedBy')  String? solvedBy, @JsonKey(name: 'skipped')  bool? skipped, @JsonKey(name: 'solveTimeMs')  int? solveTimeMs, @JsonKey(name: 'guess')  String? guess, @JsonKey(name: 'isCorrect')  bool? isCorrect, @JsonKey(name: 'playerUid')  String? playerUid, @JsonKey(name: 'playerName')  String? playerName, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'timestamp')  int? timestamp)  $default,) {final _that = this;
switch (_that) {
case _HistoryItemData():
return $default(_that.word,_that.meaning,_that.phonetic,_that.solvedBy,_that.skipped,_that.solveTimeMs,_that.guess,_that.isCorrect,_that.playerUid,_that.playerName,_that.id,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'word')  String? word, @JsonKey(name: 'meaning')  String? meaning, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'solvedBy')  String? solvedBy, @JsonKey(name: 'skipped')  bool? skipped, @JsonKey(name: 'solveTimeMs')  int? solveTimeMs, @JsonKey(name: 'guess')  String? guess, @JsonKey(name: 'isCorrect')  bool? isCorrect, @JsonKey(name: 'playerUid')  String? playerUid, @JsonKey(name: 'playerName')  String? playerName, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'timestamp')  int? timestamp)?  $default,) {final _that = this;
switch (_that) {
case _HistoryItemData() when $default != null:
return $default(_that.word,_that.meaning,_that.phonetic,_that.solvedBy,_that.skipped,_that.solveTimeMs,_that.guess,_that.isCorrect,_that.playerUid,_that.playerName,_that.id,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HistoryItemData extends HistoryItemData {
  const _HistoryItemData({@JsonKey(name: 'word') this.word, @JsonKey(name: 'meaning') this.meaning, @JsonKey(name: 'phonetic') this.phonetic, @JsonKey(name: 'solvedBy') this.solvedBy, @JsonKey(name: 'skipped') this.skipped, @JsonKey(name: 'solveTimeMs') this.solveTimeMs, @JsonKey(name: 'guess') this.guess, @JsonKey(name: 'isCorrect') this.isCorrect, @JsonKey(name: 'playerUid') this.playerUid, @JsonKey(name: 'playerName') this.playerName, @JsonKey(name: 'id') this.id, @JsonKey(name: 'timestamp') this.timestamp}): super._();
  factory _HistoryItemData.fromJson(Map<String, dynamic> json) => _$HistoryItemDataFromJson(json);

@override@JsonKey(name: 'word') final  String? word;
@override@JsonKey(name: 'meaning') final  String? meaning;
@override@JsonKey(name: 'phonetic') final  String? phonetic;
@override@JsonKey(name: 'solvedBy') final  String? solvedBy;
@override@JsonKey(name: 'skipped') final  bool? skipped;
@override@JsonKey(name: 'solveTimeMs') final  int? solveTimeMs;
@override@JsonKey(name: 'guess') final  String? guess;
@override@JsonKey(name: 'isCorrect') final  bool? isCorrect;
@override@JsonKey(name: 'playerUid') final  String? playerUid;
@override@JsonKey(name: 'playerName') final  String? playerName;
@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'timestamp') final  int? timestamp;

/// Create a copy of HistoryItemData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryItemDataCopyWith<_HistoryItemData> get copyWith => __$HistoryItemDataCopyWithImpl<_HistoryItemData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoryItemDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryItemData&&(identical(other.word, word) || other.word == word)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.solvedBy, solvedBy) || other.solvedBy == solvedBy)&&(identical(other.skipped, skipped) || other.skipped == skipped)&&(identical(other.solveTimeMs, solveTimeMs) || other.solveTimeMs == solveTimeMs)&&(identical(other.guess, guess) || other.guess == guess)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.playerUid, playerUid) || other.playerUid == playerUid)&&(identical(other.playerName, playerName) || other.playerName == playerName)&&(identical(other.id, id) || other.id == id)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,word,meaning,phonetic,solvedBy,skipped,solveTimeMs,guess,isCorrect,playerUid,playerName,id,timestamp);
}

@override
String toString() {
    return 'HistoryItemData(word: $word, meaning: $meaning, phonetic: $phonetic, solvedBy: $solvedBy, skipped: $skipped, solveTimeMs: $solveTimeMs, guess: $guess, isCorrect: $isCorrect, playerUid: $playerUid, playerName: $playerName, id: $id, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$HistoryItemDataCopyWith<$Res> implements $HistoryItemDataCopyWith<$Res> {
  factory _$HistoryItemDataCopyWith(_HistoryItemData value, $Res Function(_HistoryItemData) _then) = __$HistoryItemDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'word') String? word,@JsonKey(name: 'meaning') String? meaning,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'solvedBy') String? solvedBy,@JsonKey(name: 'skipped') bool? skipped,@JsonKey(name: 'solveTimeMs') int? solveTimeMs,@JsonKey(name: 'guess') String? guess,@JsonKey(name: 'isCorrect') bool? isCorrect,@JsonKey(name: 'playerUid') String? playerUid,@JsonKey(name: 'playerName') String? playerName,@JsonKey(name: 'id') String? id,@JsonKey(name: 'timestamp') int? timestamp
});




}
/// @nodoc
class __$HistoryItemDataCopyWithImpl<$Res>
    implements _$HistoryItemDataCopyWith<$Res> {
  __$HistoryItemDataCopyWithImpl(this._self, this._then);

  final _HistoryItemData _self;
  final $Res Function(_HistoryItemData) _then;

/// Create a copy of HistoryItemData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = freezed,Object? meaning = freezed,Object? phonetic = freezed,Object? solvedBy = freezed,Object? skipped = freezed,Object? solveTimeMs = freezed,Object? guess = freezed,Object? isCorrect = freezed,Object? playerUid = freezed,Object? playerName = freezed,Object? id = freezed,Object? timestamp = freezed,}) {
  return _then(_HistoryItemData(
word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,meaning: freezed == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,solvedBy: freezed == solvedBy ? _self.solvedBy : solvedBy // ignore: cast_nullable_to_non_nullable
as String?,skipped: freezed == skipped ? _self.skipped : skipped // ignore: cast_nullable_to_non_nullable
as bool?,solveTimeMs: freezed == solveTimeMs ? _self.solveTimeMs : solveTimeMs // ignore: cast_nullable_to_non_nullable
as int?,guess: freezed == guess ? _self.guess : guess // ignore: cast_nullable_to_non_nullable
as String?,isCorrect: freezed == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool?,playerUid: freezed == playerUid ? _self.playerUid : playerUid // ignore: cast_nullable_to_non_nullable
as String?,playerName: freezed == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
