// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryItem {

 String get word; String get meaning; String get phonetic; String get solvedBy; bool get skipped; int get solveTimeMs; String get guess; bool? get isCorrect; String get playerUid; String get playerName; String get id; int get timestamp;
/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryItemCopyWith<HistoryItem> get copyWith => _$HistoryItemCopyWithImpl<HistoryItem>(this as HistoryItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HistoryItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryItem&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.meaning, _this.meaning) || other.meaning == _this.meaning)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.solvedBy, _this.solvedBy) || other.solvedBy == _this.solvedBy)&&(identical(other.skipped, _this.skipped) || other.skipped == _this.skipped)&&(identical(other.solveTimeMs, _this.solveTimeMs) || other.solveTimeMs == _this.solveTimeMs)&&(identical(other.guess, _this.guess) || other.guess == _this.guess)&&(identical(other.isCorrect, _this.isCorrect) || other.isCorrect == _this.isCorrect)&&(identical(other.playerUid, _this.playerUid) || other.playerUid == _this.playerUid)&&(identical(other.playerName, _this.playerName) || other.playerName == _this.playerName)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.timestamp, _this.timestamp) || other.timestamp == _this.timestamp));
}


@override
int get hashCode {
  final _this = this as HistoryItem;
  return Object.hash(runtimeType,_this.word,_this.meaning,_this.phonetic,_this.solvedBy,_this.skipped,_this.solveTimeMs,_this.guess,_this.isCorrect,_this.playerUid,_this.playerName,_this.id,_this.timestamp);
}

@override
String toString() {
  final _this = this as HistoryItem;
  return 'HistoryItem(word: ${_this.word}, meaning: ${_this.meaning}, phonetic: ${_this.phonetic}, solvedBy: ${_this.solvedBy}, skipped: ${_this.skipped}, solveTimeMs: ${_this.solveTimeMs}, guess: ${_this.guess}, isCorrect: ${_this.isCorrect}, playerUid: ${_this.playerUid}, playerName: ${_this.playerName}, id: ${_this.id}, timestamp: ${_this.timestamp})';
}


}

/// @nodoc
abstract mixin class $HistoryItemCopyWith<$Res>  {
  factory $HistoryItemCopyWith(HistoryItem value, $Res Function(HistoryItem) _then) = _$HistoryItemCopyWithImpl;
@useResult
$Res call({
 String word, String meaning, String phonetic, String solvedBy, bool skipped, int solveTimeMs, String guess, bool? isCorrect, String playerUid, String playerName, String id, int timestamp
});




}
/// @nodoc
class _$HistoryItemCopyWithImpl<$Res>
    implements $HistoryItemCopyWith<$Res> {
  _$HistoryItemCopyWithImpl(this._self, this._then);

  final HistoryItem _self;
  final $Res Function(HistoryItem) _then;

/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? meaning = null,Object? phonetic = null,Object? solvedBy = null,Object? skipped = null,Object? solveTimeMs = null,Object? guess = null,Object? isCorrect = freezed,Object? playerUid = null,Object? playerName = null,Object? id = null,Object? timestamp = null,}) {
  return _then(HistoryItem(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,solvedBy: null == solvedBy ? _self.solvedBy : solvedBy // ignore: cast_nullable_to_non_nullable
as String,skipped: null == skipped ? _self.skipped : skipped // ignore: cast_nullable_to_non_nullable
as bool,solveTimeMs: null == solveTimeMs ? _self.solveTimeMs : solveTimeMs // ignore: cast_nullable_to_non_nullable
as int,guess: null == guess ? _self.guess : guess // ignore: cast_nullable_to_non_nullable
as String,isCorrect: freezed == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool?,playerUid: null == playerUid ? _self.playerUid : playerUid // ignore: cast_nullable_to_non_nullable
as String,playerName: null == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryItem].
extension HistoryItemPatterns on HistoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryItem value)  $default,){
final _that = this;
switch (_that) {
case _HistoryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String word,  String meaning,  String phonetic,  String solvedBy,  bool skipped,  int solveTimeMs,  String guess,  bool? isCorrect,  String playerUid,  String playerName,  String id,  int timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryItem() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String word,  String meaning,  String phonetic,  String solvedBy,  bool skipped,  int solveTimeMs,  String guess,  bool? isCorrect,  String playerUid,  String playerName,  String id,  int timestamp)  $default,) {final _that = this;
switch (_that) {
case _HistoryItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String word,  String meaning,  String phonetic,  String solvedBy,  bool skipped,  int solveTimeMs,  String guess,  bool? isCorrect,  String playerUid,  String playerName,  String id,  int timestamp)?  $default,) {final _that = this;
switch (_that) {
case _HistoryItem() when $default != null:
return $default(_that.word,_that.meaning,_that.phonetic,_that.solvedBy,_that.skipped,_that.solveTimeMs,_that.guess,_that.isCorrect,_that.playerUid,_that.playerName,_that.id,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryItem extends HistoryItem {
  const _HistoryItem({this.word = '', this.meaning = '', this.phonetic = '', this.solvedBy = '', this.skipped = false, this.solveTimeMs = 0, this.guess = '', this.isCorrect, this.playerUid = '', this.playerName = '', this.id = '', this.timestamp = 0}): super._();
  

@override@JsonKey() final  String word;
@override@JsonKey() final  String meaning;
@override@JsonKey() final  String phonetic;
@override@JsonKey() final  String solvedBy;
@override@JsonKey() final  bool skipped;
@override@JsonKey() final  int solveTimeMs;
@override@JsonKey() final  String guess;
@override final  bool? isCorrect;
@override@JsonKey() final  String playerUid;
@override@JsonKey() final  String playerName;
@override@JsonKey() final  String id;
@override@JsonKey() final  int timestamp;

/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryItemCopyWith<_HistoryItem> get copyWith => __$HistoryItemCopyWithImpl<_HistoryItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryItem&&(identical(other.word, word) || other.word == word)&&(identical(other.meaning, meaning) || other.meaning == meaning)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.solvedBy, solvedBy) || other.solvedBy == solvedBy)&&(identical(other.skipped, skipped) || other.skipped == skipped)&&(identical(other.solveTimeMs, solveTimeMs) || other.solveTimeMs == solveTimeMs)&&(identical(other.guess, guess) || other.guess == guess)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.playerUid, playerUid) || other.playerUid == playerUid)&&(identical(other.playerName, playerName) || other.playerName == playerName)&&(identical(other.id, id) || other.id == id)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}


@override
int get hashCode {
    return Object.hash(runtimeType,word,meaning,phonetic,solvedBy,skipped,solveTimeMs,guess,isCorrect,playerUid,playerName,id,timestamp);
}

@override
String toString() {
    return 'HistoryItem(word: $word, meaning: $meaning, phonetic: $phonetic, solvedBy: $solvedBy, skipped: $skipped, solveTimeMs: $solveTimeMs, guess: $guess, isCorrect: $isCorrect, playerUid: $playerUid, playerName: $playerName, id: $id, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$HistoryItemCopyWith<$Res> implements $HistoryItemCopyWith<$Res> {
  factory _$HistoryItemCopyWith(_HistoryItem value, $Res Function(_HistoryItem) _then) = __$HistoryItemCopyWithImpl;
@override @useResult
$Res call({
 String word, String meaning, String phonetic, String solvedBy, bool skipped, int solveTimeMs, String guess, bool? isCorrect, String playerUid, String playerName, String id, int timestamp
});




}
/// @nodoc
class __$HistoryItemCopyWithImpl<$Res>
    implements _$HistoryItemCopyWith<$Res> {
  __$HistoryItemCopyWithImpl(this._self, this._then);

  final _HistoryItem _self;
  final $Res Function(_HistoryItem) _then;

/// Create a copy of HistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? meaning = null,Object? phonetic = null,Object? solvedBy = null,Object? skipped = null,Object? solveTimeMs = null,Object? guess = null,Object? isCorrect = freezed,Object? playerUid = null,Object? playerName = null,Object? id = null,Object? timestamp = null,}) {
  return _then(_HistoryItem(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,meaning: null == meaning ? _self.meaning : meaning // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,solvedBy: null == solvedBy ? _self.solvedBy : solvedBy // ignore: cast_nullable_to_non_nullable
as String,skipped: null == skipped ? _self.skipped : skipped // ignore: cast_nullable_to_non_nullable
as bool,solveTimeMs: null == solveTimeMs ? _self.solveTimeMs : solveTimeMs // ignore: cast_nullable_to_non_nullable
as int,guess: null == guess ? _self.guess : guess // ignore: cast_nullable_to_non_nullable
as String,isCorrect: freezed == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool?,playerUid: null == playerUid ? _self.playerUid : playerUid // ignore: cast_nullable_to_non_nullable
as String,playerName: null == playerName ? _self.playerName : playerName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
