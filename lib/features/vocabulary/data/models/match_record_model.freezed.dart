// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchRecordModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'uid') String get uid;@JsonKey(name: 'topic_id') String? get topicId;@JsonKey(name: 'scores') List<int>? get scores;@JsonKey(name: 'winner') String? get winner;@JsonKey(name: 'match_data') Map<String, dynamic>? get matchData;@JsonKey(name: 'created_at') int? get createdAt;
/// Create a copy of MatchRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchRecordModelCopyWith<MatchRecordModel> get copyWith => _$MatchRecordModelCopyWithImpl<MatchRecordModel>(this as MatchRecordModel, _$identity);

  /// Serializes this MatchRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MatchRecordModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRecordModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&const DeepCollectionEquality().equals(other.scores, _this.scores)&&(identical(other.winner, _this.winner) || other.winner == _this.winner)&&const DeepCollectionEquality().equals(other.matchData, _this.matchData)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MatchRecordModel;
  return Object.hash(runtimeType,_this.id,_this.uid,_this.topicId,const DeepCollectionEquality().hash(_this.scores),_this.winner,const DeepCollectionEquality().hash(_this.matchData),_this.createdAt);
}

@override
String toString() {
  final _this = this as MatchRecordModel;
  return 'MatchRecordModel(id: ${_this.id}, uid: ${_this.uid}, topicId: ${_this.topicId}, scores: ${_this.scores}, winner: ${_this.winner}, matchData: ${_this.matchData}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $MatchRecordModelCopyWith<$Res>  {
  factory $MatchRecordModelCopyWith(MatchRecordModel value, $Res Function(MatchRecordModel) _then) = _$MatchRecordModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'uid') String uid,@JsonKey(name: 'topic_id') String? topicId,@JsonKey(name: 'scores') List<int>? scores,@JsonKey(name: 'winner') String? winner,@JsonKey(name: 'match_data') Map<String, dynamic>? matchData,@JsonKey(name: 'created_at') int? createdAt
});




}
/// @nodoc
class _$MatchRecordModelCopyWithImpl<$Res>
    implements $MatchRecordModelCopyWith<$Res> {
  _$MatchRecordModelCopyWithImpl(this._self, this._then);

  final MatchRecordModel _self;
  final $Res Function(MatchRecordModel) _then;

/// Create a copy of MatchRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? uid = null,Object? topicId = freezed,Object? scores = freezed,Object? winner = freezed,Object? matchData = freezed,Object? createdAt = freezed,}) {
  return _then(MatchRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>?,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,matchData: freezed == matchData ? _self.matchData : matchData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchRecordModel].
extension MatchRecordModelPatterns on MatchRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _MatchRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _MatchRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'uid')  String uid, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'scores')  List<int>? scores, @JsonKey(name: 'winner')  String? winner, @JsonKey(name: 'match_data')  Map<String, dynamic>? matchData, @JsonKey(name: 'created_at')  int? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchRecordModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'uid')  String uid, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'scores')  List<int>? scores, @JsonKey(name: 'winner')  String? winner, @JsonKey(name: 'match_data')  Map<String, dynamic>? matchData, @JsonKey(name: 'created_at')  int? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MatchRecordModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'uid')  String uid, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'scores')  List<int>? scores, @JsonKey(name: 'winner')  String? winner, @JsonKey(name: 'match_data')  Map<String, dynamic>? matchData, @JsonKey(name: 'created_at')  int? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MatchRecordModel() when $default != null:
return $default(_that.id,_that.uid,_that.topicId,_that.scores,_that.winner,_that.matchData,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchRecordModel extends MatchRecordModel {
  const _MatchRecordModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'uid') required this.uid, @JsonKey(name: 'topic_id') this.topicId, @JsonKey(name: 'scores')  List<int>? scores, @JsonKey(name: 'winner') this.winner, @JsonKey(name: 'match_data')  Map<String, dynamic>? matchData, @JsonKey(name: 'created_at') this.createdAt}): _scores = scores,_matchData = matchData,super._();
  factory _MatchRecordModel.fromJson(Map<String, dynamic> json) => _$MatchRecordModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'uid') final  String uid;
@override@JsonKey(name: 'topic_id') final  String? topicId;
 final  List<int>? _scores;
@override@JsonKey(name: 'scores') List<int>? get scores {
  final value = _scores;
  if (value == null) return null;
  if (_scores is EqualUnmodifiableListView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'winner') final  String? winner;
 final  Map<String, dynamic>? _matchData;
@override@JsonKey(name: 'match_data') Map<String, dynamic>? get matchData {
  final value = _matchData;
  if (value == null) return null;
  if (_matchData is EqualUnmodifiableMapView) return _matchData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey(name: 'created_at') final  int? createdAt;

/// Create a copy of MatchRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchRecordModelCopyWith<_MatchRecordModel> get copyWith => __$MatchRecordModelCopyWithImpl<_MatchRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&const DeepCollectionEquality().equals(other.scores, _scores)&&(identical(other.winner, winner) || other.winner == winner)&&const DeepCollectionEquality().equals(other.matchData, _matchData)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,uid,topicId,const DeepCollectionEquality().hash(_scores),winner,const DeepCollectionEquality().hash(_matchData),createdAt);
}

@override
String toString() {
    return 'MatchRecordModel(id: $id, uid: $uid, topicId: $topicId, scores: $scores, winner: $winner, matchData: $matchData, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MatchRecordModelCopyWith<$Res> implements $MatchRecordModelCopyWith<$Res> {
  factory _$MatchRecordModelCopyWith(_MatchRecordModel value, $Res Function(_MatchRecordModel) _then) = __$MatchRecordModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'uid') String uid,@JsonKey(name: 'topic_id') String? topicId,@JsonKey(name: 'scores') List<int>? scores,@JsonKey(name: 'winner') String? winner,@JsonKey(name: 'match_data') Map<String, dynamic>? matchData,@JsonKey(name: 'created_at') int? createdAt
});




}
/// @nodoc
class __$MatchRecordModelCopyWithImpl<$Res>
    implements _$MatchRecordModelCopyWith<$Res> {
  __$MatchRecordModelCopyWithImpl(this._self, this._then);

  final _MatchRecordModel _self;
  final $Res Function(_MatchRecordModel) _then;

/// Create a copy of MatchRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? uid = null,Object? topicId = freezed,Object? scores = freezed,Object? winner = freezed,Object? matchData = freezed,Object? createdAt = freezed,}) {
  return _then(_MatchRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as List<int>?,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,matchData: freezed == matchData ? _self._matchData : matchData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
