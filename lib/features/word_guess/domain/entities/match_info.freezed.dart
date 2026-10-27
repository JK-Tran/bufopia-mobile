// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchInfo {

 String get matchId; String get roomCode; int get playerIndex; String get rivalName; String get rivalAvatar; String get topicId; String get game;
/// Create a copy of MatchInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchInfoCopyWith<MatchInfo> get copyWith => _$MatchInfoCopyWithImpl<MatchInfo>(this as MatchInfo, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MatchInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchInfo&&(identical(other.matchId, _this.matchId) || other.matchId == _this.matchId)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.playerIndex, _this.playerIndex) || other.playerIndex == _this.playerIndex)&&(identical(other.rivalName, _this.rivalName) || other.rivalName == _this.rivalName)&&(identical(other.rivalAvatar, _this.rivalAvatar) || other.rivalAvatar == _this.rivalAvatar)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.game, _this.game) || other.game == _this.game));
}


@override
int get hashCode {
  final _this = this as MatchInfo;
  return Object.hash(runtimeType,_this.matchId,_this.roomCode,_this.playerIndex,_this.rivalName,_this.rivalAvatar,_this.topicId,_this.game);
}

@override
String toString() {
  final _this = this as MatchInfo;
  return 'MatchInfo(matchId: ${_this.matchId}, roomCode: ${_this.roomCode}, playerIndex: ${_this.playerIndex}, rivalName: ${_this.rivalName}, rivalAvatar: ${_this.rivalAvatar}, topicId: ${_this.topicId}, game: ${_this.game})';
}


}

/// @nodoc
abstract mixin class $MatchInfoCopyWith<$Res>  {
  factory $MatchInfoCopyWith(MatchInfo value, $Res Function(MatchInfo) _then) = _$MatchInfoCopyWithImpl;
@useResult
$Res call({
 String matchId, String roomCode, int playerIndex, String rivalName, String rivalAvatar, String topicId, String game
});




}
/// @nodoc
class _$MatchInfoCopyWithImpl<$Res>
    implements $MatchInfoCopyWith<$Res> {
  _$MatchInfoCopyWithImpl(this._self, this._then);

  final MatchInfo _self;
  final $Res Function(MatchInfo) _then;

/// Create a copy of MatchInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchId = null,Object? roomCode = null,Object? playerIndex = null,Object? rivalName = null,Object? rivalAvatar = null,Object? topicId = null,Object? game = null,}) {
  return _then(MatchInfo(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,rivalName: null == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String,rivalAvatar: null == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,game: null == game ? _self.game : game // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchInfo].
extension MatchInfoPatterns on MatchInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchInfo value)  $default,){
final _that = this;
switch (_that) {
case _MatchInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchInfo value)?  $default,){
final _that = this;
switch (_that) {
case _MatchInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String matchId,  String roomCode,  int playerIndex,  String rivalName,  String rivalAvatar,  String topicId,  String game)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchInfo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String matchId,  String roomCode,  int playerIndex,  String rivalName,  String rivalAvatar,  String topicId,  String game)  $default,) {final _that = this;
switch (_that) {
case _MatchInfo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String matchId,  String roomCode,  int playerIndex,  String rivalName,  String rivalAvatar,  String topicId,  String game)?  $default,) {final _that = this;
switch (_that) {
case _MatchInfo() when $default != null:
return $default(_that.matchId,_that.roomCode,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.topicId,_that.game);case _:
  return null;

}
}

}

/// @nodoc


class _MatchInfo implements MatchInfo {
  const _MatchInfo({this.matchId = '', this.roomCode = '', this.playerIndex = 0, this.rivalName = '', this.rivalAvatar = '', this.topicId = '', this.game = 'guess'});
  

@override@JsonKey() final  String matchId;
@override@JsonKey() final  String roomCode;
@override@JsonKey() final  int playerIndex;
@override@JsonKey() final  String rivalName;
@override@JsonKey() final  String rivalAvatar;
@override@JsonKey() final  String topicId;
@override@JsonKey() final  String game;

/// Create a copy of MatchInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchInfoCopyWith<_MatchInfo> get copyWith => __$MatchInfoCopyWithImpl<_MatchInfo>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchInfo&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.game, game) || other.game == game));
}


@override
int get hashCode {
    return Object.hash(runtimeType,matchId,roomCode,playerIndex,rivalName,rivalAvatar,topicId,game);
}

@override
String toString() {
    return 'MatchInfo(matchId: $matchId, roomCode: $roomCode, playerIndex: $playerIndex, rivalName: $rivalName, rivalAvatar: $rivalAvatar, topicId: $topicId, game: $game)';
}


}

/// @nodoc
abstract mixin class _$MatchInfoCopyWith<$Res> implements $MatchInfoCopyWith<$Res> {
  factory _$MatchInfoCopyWith(_MatchInfo value, $Res Function(_MatchInfo) _then) = __$MatchInfoCopyWithImpl;
@override @useResult
$Res call({
 String matchId, String roomCode, int playerIndex, String rivalName, String rivalAvatar, String topicId, String game
});




}
/// @nodoc
class __$MatchInfoCopyWithImpl<$Res>
    implements _$MatchInfoCopyWith<$Res> {
  __$MatchInfoCopyWithImpl(this._self, this._then);

  final _MatchInfo _self;
  final $Res Function(_MatchInfo) _then;

/// Create a copy of MatchInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchId = null,Object? roomCode = null,Object? playerIndex = null,Object? rivalName = null,Object? rivalAvatar = null,Object? topicId = null,Object? game = null,}) {
  return _then(_MatchInfo(
matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,rivalName: null == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String,rivalAvatar: null == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,game: null == game ? _self.game : game // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
