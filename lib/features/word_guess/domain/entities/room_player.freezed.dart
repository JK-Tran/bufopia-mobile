// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomPlayer {

 String get uid; String get name; String get avatar; int get score; int get foundCount; bool get isReady; bool get isHost; bool get ended; int get playerIndex; bool get isOnline;
/// Create a copy of RoomPlayer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomPlayerCopyWith<RoomPlayer> get copyWith => _$RoomPlayerCopyWithImpl<RoomPlayer>(this as RoomPlayer, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RoomPlayer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomPlayer&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.score, _this.score) || other.score == _this.score)&&(identical(other.foundCount, _this.foundCount) || other.foundCount == _this.foundCount)&&(identical(other.isReady, _this.isReady) || other.isReady == _this.isReady)&&(identical(other.isHost, _this.isHost) || other.isHost == _this.isHost)&&(identical(other.ended, _this.ended) || other.ended == _this.ended)&&(identical(other.playerIndex, _this.playerIndex) || other.playerIndex == _this.playerIndex)&&(identical(other.isOnline, _this.isOnline) || other.isOnline == _this.isOnline));
}


@override
int get hashCode {
  final _this = this as RoomPlayer;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar,_this.score,_this.foundCount,_this.isReady,_this.isHost,_this.ended,_this.playerIndex,_this.isOnline);
}

@override
String toString() {
  final _this = this as RoomPlayer;
  return 'RoomPlayer(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar}, score: ${_this.score}, foundCount: ${_this.foundCount}, isReady: ${_this.isReady}, isHost: ${_this.isHost}, ended: ${_this.ended}, playerIndex: ${_this.playerIndex}, isOnline: ${_this.isOnline})';
}


}

/// @nodoc
abstract mixin class $RoomPlayerCopyWith<$Res>  {
  factory $RoomPlayerCopyWith(RoomPlayer value, $Res Function(RoomPlayer) _then) = _$RoomPlayerCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String avatar, int score, int foundCount, bool isReady, bool isHost, bool ended, int playerIndex, bool isOnline
});




}
/// @nodoc
class _$RoomPlayerCopyWithImpl<$Res>
    implements $RoomPlayerCopyWith<$Res> {
  _$RoomPlayerCopyWithImpl(this._self, this._then);

  final RoomPlayer _self;
  final $Res Function(RoomPlayer) _then;

/// Create a copy of RoomPlayer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? avatar = null,Object? score = null,Object? foundCount = null,Object? isReady = null,Object? isHost = null,Object? ended = null,Object? playerIndex = null,Object? isOnline = null,}) {
  return _then(RoomPlayer(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,foundCount: null == foundCount ? _self.foundCount : foundCount // ignore: cast_nullable_to_non_nullable
as int,isReady: null == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool,isHost: null == isHost ? _self.isHost : isHost // ignore: cast_nullable_to_non_nullable
as bool,ended: null == ended ? _self.ended : ended // ignore: cast_nullable_to_non_nullable
as bool,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomPlayer].
extension RoomPlayerPatterns on RoomPlayer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomPlayer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomPlayer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomPlayer value)  $default,){
final _that = this;
switch (_that) {
case _RoomPlayer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomPlayer value)?  $default,){
final _that = this;
switch (_that) {
case _RoomPlayer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String name,  String avatar,  int score,  int foundCount,  bool isReady,  bool isHost,  bool ended,  int playerIndex,  bool isOnline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomPlayer() when $default != null:
return $default(_that.uid,_that.name,_that.avatar,_that.score,_that.foundCount,_that.isReady,_that.isHost,_that.ended,_that.playerIndex,_that.isOnline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String name,  String avatar,  int score,  int foundCount,  bool isReady,  bool isHost,  bool ended,  int playerIndex,  bool isOnline)  $default,) {final _that = this;
switch (_that) {
case _RoomPlayer():
return $default(_that.uid,_that.name,_that.avatar,_that.score,_that.foundCount,_that.isReady,_that.isHost,_that.ended,_that.playerIndex,_that.isOnline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String name,  String avatar,  int score,  int foundCount,  bool isReady,  bool isHost,  bool ended,  int playerIndex,  bool isOnline)?  $default,) {final _that = this;
switch (_that) {
case _RoomPlayer() when $default != null:
return $default(_that.uid,_that.name,_that.avatar,_that.score,_that.foundCount,_that.isReady,_that.isHost,_that.ended,_that.playerIndex,_that.isOnline);case _:
  return null;

}
}

}

/// @nodoc


class _RoomPlayer extends RoomPlayer {
  const _RoomPlayer({this.uid = '', this.name = '', this.avatar = '', this.score = 0, this.foundCount = 0, this.isReady = false, this.isHost = false, this.ended = false, this.playerIndex = 0, this.isOnline = true}): super._();
  

@override@JsonKey() final  String uid;
@override@JsonKey() final  String name;
@override@JsonKey() final  String avatar;
@override@JsonKey() final  int score;
@override@JsonKey() final  int foundCount;
@override@JsonKey() final  bool isReady;
@override@JsonKey() final  bool isHost;
@override@JsonKey() final  bool ended;
@override@JsonKey() final  int playerIndex;
@override@JsonKey() final  bool isOnline;

/// Create a copy of RoomPlayer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomPlayerCopyWith<_RoomPlayer> get copyWith => __$RoomPlayerCopyWithImpl<_RoomPlayer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomPlayer&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.score, score) || other.score == score)&&(identical(other.foundCount, foundCount) || other.foundCount == foundCount)&&(identical(other.isReady, isReady) || other.isReady == isReady)&&(identical(other.isHost, isHost) || other.isHost == isHost)&&(identical(other.ended, ended) || other.ended == ended)&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar,score,foundCount,isReady,isHost,ended,playerIndex,isOnline);
}

@override
String toString() {
    return 'RoomPlayer(uid: $uid, name: $name, avatar: $avatar, score: $score, foundCount: $foundCount, isReady: $isReady, isHost: $isHost, ended: $ended, playerIndex: $playerIndex, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class _$RoomPlayerCopyWith<$Res> implements $RoomPlayerCopyWith<$Res> {
  factory _$RoomPlayerCopyWith(_RoomPlayer value, $Res Function(_RoomPlayer) _then) = __$RoomPlayerCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name, String avatar, int score, int foundCount, bool isReady, bool isHost, bool ended, int playerIndex, bool isOnline
});




}
/// @nodoc
class __$RoomPlayerCopyWithImpl<$Res>
    implements _$RoomPlayerCopyWith<$Res> {
  __$RoomPlayerCopyWithImpl(this._self, this._then);

  final _RoomPlayer _self;
  final $Res Function(_RoomPlayer) _then;

/// Create a copy of RoomPlayer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? avatar = null,Object? score = null,Object? foundCount = null,Object? isReady = null,Object? isHost = null,Object? ended = null,Object? playerIndex = null,Object? isOnline = null,}) {
  return _then(_RoomPlayer(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,foundCount: null == foundCount ? _self.foundCount : foundCount // ignore: cast_nullable_to_non_nullable
as int,isReady: null == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool,isHost: null == isHost ? _self.isHost : isHost // ignore: cast_nullable_to_non_nullable
as bool,ended: null == ended ? _self.ended : ended // ignore: cast_nullable_to_non_nullable
as bool,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
