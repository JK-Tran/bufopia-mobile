// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchRecord {

 String get id; String get uid; String get topicId; List<int> get scores; String get winner; Map<String, dynamic> get matchData; DateTime? get createdAt;
/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchRecordCopyWith<MatchRecord> get copyWith => _$MatchRecordCopyWithImpl<MatchRecord>(this as MatchRecord, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MatchRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRecord&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&const DeepCollectionEquality().equals(other.scores, _this.scores)&&(identical(other.winner, _this.winner) || other.winner == _this.winner)&&const DeepCollectionEquality().equals(other.matchData, _this.matchData)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as MatchRecord;
  return Object.hash(runtimeType,_this.id,_this.uid,_this.topicId,const DeepCollectionEquality().hash(_this.scores),_this.winner,const DeepCollectionEquality().hash(_this.matchData),_this.createdAt);
}

@override
String toString() {
  final _this = this as MatchRecord;
  return 'MatchRecord(id: ${_this.id}, uid: ${_this.uid}, topicId: ${_this.topicId}, scores: ${_this.scores}, winner: ${_this.winner}, matchData: ${_this.matchData}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $MatchRecordCopyWith<$Res>  {
  factory $MatchRecordCopyWith(MatchRecord value, $Res Function(MatchRecord) _then) = _$MatchRecordCopyWithImpl;
@useResult
$Res call({
 String id, String uid, String topicId, List<int> scores, String winner, Map<String, dynamic> matchData, DateTime? createdAt
});




}
/// @nodoc
class _$MatchRecordCopyWithImpl<$Res>
    implements $MatchRecordCopyWith<$Res> {
  _$MatchRecordCopyWithImpl(this._self, this._then);

  final MatchRecord _self;
  final $Res Function(MatchRecord) _then;

/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? uid = null,Object? topicId = null,Object? scores = null,Object? winner = null,Object? matchData = null,Object? createdAt = freezed,}) {
  return _then(MatchRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>,winner: null == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String,matchData: null == matchData ? _self.matchData : matchData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchRecord].
extension MatchRecordPatterns on MatchRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchRecord value)  $default,){
final _that = this;
switch (_that) {
case _MatchRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchRecord value)?  $default,){
final _that = this;
switch (_that) {
case _MatchRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String uid,  String topicId,  List<int> scores,  String winner,  Map<String, dynamic> matchData,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchRecord() when $default != null:
return $default(_that.id,_that.uid,_that.topicId,_that.scores,_that.winner,_that.matchData,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String uid,  String topicId,  List<int> scores,  String winner,  Map<String, dynamic> matchData,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MatchRecord():
return $default(_that.id,_that.uid,_that.topicId,_that.scores,_that.winner,_that.matchData,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String uid,  String topicId,  List<int> scores,  String winner,  Map<String, dynamic> matchData,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MatchRecord() when $default != null:
return $default(_that.id,_that.uid,_that.topicId,_that.scores,_that.winner,_that.matchData,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _MatchRecord implements MatchRecord {
  const _MatchRecord({this.id = '', this.uid = '', this.topicId = '',  List<int> scores = const [], this.winner = '',  Map<String, dynamic> matchData = const {}, this.createdAt}): _scores = scores,_matchData = matchData;
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String uid;
@override@JsonKey() final  String topicId;
 final  List<int> _scores;
@override@JsonKey() List<int> get scores {
  if (_scores is EqualUnmodifiableListView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scores);
}

@override@JsonKey() final  String winner;
 final  Map<String, dynamic> _matchData;
@override@JsonKey() Map<String, dynamic> get matchData {
  if (_matchData is EqualUnmodifiableMapView) return _matchData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_matchData);
}

@override final  DateTime? createdAt;

/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchRecordCopyWith<_MatchRecord> get copyWith => __$MatchRecordCopyWithImpl<_MatchRecord>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&const DeepCollectionEquality().equals(other.scores, _scores)&&(identical(other.winner, winner) || other.winner == winner)&&const DeepCollectionEquality().equals(other.matchData, _matchData)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,uid,topicId,const DeepCollectionEquality().hash(_scores),winner,const DeepCollectionEquality().hash(_matchData),createdAt);
}

@override
String toString() {
    return 'MatchRecord(id: $id, uid: $uid, topicId: $topicId, scores: $scores, winner: $winner, matchData: $matchData, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MatchRecordCopyWith<$Res> implements $MatchRecordCopyWith<$Res> {
  factory _$MatchRecordCopyWith(_MatchRecord value, $Res Function(_MatchRecord) _then) = __$MatchRecordCopyWithImpl;
@override @useResult
$Res call({
 String id, String uid, String topicId, List<int> scores, String winner, Map<String, dynamic> matchData, DateTime? createdAt
});




}
/// @nodoc
class __$MatchRecordCopyWithImpl<$Res>
    implements _$MatchRecordCopyWith<$Res> {
  __$MatchRecordCopyWithImpl(this._self, this._then);

  final _MatchRecord _self;
  final $Res Function(_MatchRecord) _then;

/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? uid = null,Object? topicId = null,Object? scores = null,Object? winner = null,Object? matchData = null,Object? createdAt = freezed,}) {
  return _then(_MatchRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>,winner: null == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String,matchData: null == matchData ? _self._matchData : matchData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
