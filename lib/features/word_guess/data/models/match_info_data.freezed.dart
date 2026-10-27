// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchInfoData {

@JsonKey(name: 'matchId') String? get matchId;@JsonKey(name: 'roomCode') String? get roomCode;@JsonKey(name: 'playerIndex') int? get playerIndex;@JsonKey(name: 'rivalName') String? get rivalName;@JsonKey(name: 'rivalAvatar') String? get rivalAvatar;@JsonKey(name: 'topicId') String? get topicId;@JsonKey(name: 'game') String? get game;
/// Create a copy of MatchInfoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchInfoDataCopyWith<MatchInfoData> get copyWith => _$MatchInfoDataCopyWithImpl<MatchInfoData>(this as MatchInfoData, _$identity);

  /// Serializes this MatchInfoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MatchInfoData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchInfoData&&(identical(other.matchId, _this.matchId) || other.matchId == _this.matchId)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.playerIndex, _this.playerIndex) || other.playerIndex == _this.playerIndex)&&(identical(other.rivalName, _this.rivalName) || other.rivalName == _this.rivalName)&&(identical(other.rivalAvatar, _this.rivalAvatar) || other.rivalAvatar == _this.rivalAvatar)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.game, _this.game) || other.game == _this.game));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MatchInfoData;
  return Object.hash(runtimeType,_this.matchId,_this.roomCode,_this.playerIndex,_this.rivalName,_this.rivalAvatar,_this.topicId,_this.game);
}

@override
String toString() {
  final _this = this as MatchInfoData;
  return 'MatchInfoData(matchId: ${_this.matchId}, roomCode: ${_this.roomCode}, playerIndex: ${_this.playerIndex}, rivalName: ${_this.rivalName}, rivalAvatar: ${_this.rivalAvatar}, topicId: ${_this.topicId}, game: ${_this.game})';
}


}

/// @nodoc
abstract mixin class $MatchInfoDataCopyWith<$Res>  {
  factory $MatchInfoDataCopyWith(MatchInfoData value, $Res Function(MatchInfoData) _then) = _$MatchInfoDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'matchId') String? matchId,@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'playerIndex') int? playerIndex,@JsonKey(name: 'rivalName') String? rivalName,@JsonKey(name: 'rivalAvatar') String? rivalAvatar,@JsonKey(name: 'topicId') String? topicId,@JsonKey(name: 'game') String? game
});




}
/// @nodoc
class _$MatchInfoDataCopyWithImpl<$Res>
    implements $MatchInfoDataCopyWith<$Res> {
  _$MatchInfoDataCopyWithImpl(this._self, this._then);

  final MatchInfoData _self;
  final $Res Function(MatchInfoData) _then;

/// Create a copy of MatchInfoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = freezed,Object? roomCode = freezed,Object? playerIndex = freezed,Object? rivalName = freezed,Object? rivalAvatar = freezed,Object? topicId = freezed,Object? game = freezed,}) {
  return _then(MatchInfoData(
matchId: freezed == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String?,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,playerIndex: freezed == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int?,rivalName: freezed == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String?,rivalAvatar: freezed == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,game: freezed == game ? _self.game : game // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchInfoData].
extension MatchInfoDataPatterns on MatchInfoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchInfoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchInfoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchInfoData value)  $default,){
final _that = this;
switch (_that) {
case _MatchInfoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchInfoData value)?  $default,){
final _that = this;
switch (_that) {
case _MatchInfoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'matchId')  String? matchId, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'rivalName')  String? rivalName, @JsonKey(name: 'rivalAvatar')  String? rivalAvatar, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'game')  String? game)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchInfoData() when $default != null:
return $default(_that.matchId,_that.roomCode,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.topicId,_that.game);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'matchId')  String? matchId, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'rivalName')  String? rivalName, @JsonKey(name: 'rivalAvatar')  String? rivalAvatar, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'game')  String? game)  $default,) {final _that = this;
switch (_that) {
case _MatchInfoData():
return $default(_that.matchId,_that.roomCode,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.topicId,_that.game);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'matchId')  String? matchId, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'rivalName')  String? rivalName, @JsonKey(name: 'rivalAvatar')  String? rivalAvatar, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'game')  String? game)?  $default,) {final _that = this;
switch (_that) {
case _MatchInfoData() when $default != null:
return $default(_that.matchId,_that.roomCode,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.topicId,_that.game);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchInfoData extends MatchInfoData {
  const _MatchInfoData({@JsonKey(name: 'matchId') this.matchId, @JsonKey(name: 'roomCode') this.roomCode, @JsonKey(name: 'playerIndex') this.playerIndex, @JsonKey(name: 'rivalName') this.rivalName, @JsonKey(name: 'rivalAvatar') this.rivalAvatar, @JsonKey(name: 'topicId') this.topicId, @JsonKey(name: 'game') this.game}): super._();
  factory _MatchInfoData.fromJson(Map<String, dynamic> json) => _$MatchInfoDataFromJson(json);

@override@JsonKey(name: 'matchId') final  String? matchId;
@override@JsonKey(name: 'roomCode') final  String? roomCode;
@override@JsonKey(name: 'playerIndex') final  int? playerIndex;
@override@JsonKey(name: 'rivalName') final  String? rivalName;
@override@JsonKey(name: 'rivalAvatar') final  String? rivalAvatar;
@override@JsonKey(name: 'topicId') final  String? topicId;
@override@JsonKey(name: 'game') final  String? game;

/// Create a copy of MatchInfoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchInfoDataCopyWith<_MatchInfoData> get copyWith => __$MatchInfoDataCopyWithImpl<_MatchInfoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchInfoDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchInfoData&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.game, game) || other.game == game));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,matchId,roomCode,playerIndex,rivalName,rivalAvatar,topicId,game);
}

@override
String toString() {
    return 'MatchInfoData(matchId: $matchId, roomCode: $roomCode, playerIndex: $playerIndex, rivalName: $rivalName, rivalAvatar: $rivalAvatar, topicId: $topicId, game: $game)';
}


}

/// @nodoc
abstract mixin class _$MatchInfoDataCopyWith<$Res> implements $MatchInfoDataCopyWith<$Res> {
  factory _$MatchInfoDataCopyWith(_MatchInfoData value, $Res Function(_MatchInfoData) _then) = __$MatchInfoDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'matchId') String? matchId,@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'playerIndex') int? playerIndex,@JsonKey(name: 'rivalName') String? rivalName,@JsonKey(name: 'rivalAvatar') String? rivalAvatar,@JsonKey(name: 'topicId') String? topicId,@JsonKey(name: 'game') String? game
});




}
/// @nodoc
class __$MatchInfoDataCopyWithImpl<$Res>
    implements _$MatchInfoDataCopyWith<$Res> {
  __$MatchInfoDataCopyWithImpl(this._self, this._then);

  final _MatchInfoData _self;
  final $Res Function(_MatchInfoData) _then;

/// Create a copy of MatchInfoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = freezed,Object? roomCode = freezed,Object? playerIndex = freezed,Object? rivalName = freezed,Object? rivalAvatar = freezed,Object? topicId = freezed,Object? game = freezed,}) {
  return _then(_MatchInfoData(
matchId: freezed == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String?,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,playerIndex: freezed == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int?,rivalName: freezed == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String?,rivalAvatar: freezed == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,game: freezed == game ? _self.game : game // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
