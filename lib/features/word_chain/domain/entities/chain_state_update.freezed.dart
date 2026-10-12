// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_state_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChainStateUpdate {

 int get playerIndex; String get roomCode; GameState get state; String? get rivalName; String? get rivalAvatar; int? get serverNow; String? get sessionId;
/// Create a copy of ChainStateUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChainStateUpdateCopyWith<ChainStateUpdate> get copyWith => _$ChainStateUpdateCopyWithImpl<ChainStateUpdate>(this as ChainStateUpdate, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChainStateUpdate;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChainStateUpdate&&(identical(other.playerIndex, _this.playerIndex) || other.playerIndex == _this.playerIndex)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.state, _this.state) || other.state == _this.state)&&(identical(other.rivalName, _this.rivalName) || other.rivalName == _this.rivalName)&&(identical(other.rivalAvatar, _this.rivalAvatar) || other.rivalAvatar == _this.rivalAvatar)&&(identical(other.serverNow, _this.serverNow) || other.serverNow == _this.serverNow)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId));
}


@override
int get hashCode {
  final _this = this as ChainStateUpdate;
  return Object.hash(runtimeType,_this.playerIndex,_this.roomCode,_this.state,_this.rivalName,_this.rivalAvatar,_this.serverNow,_this.sessionId);
}

@override
String toString() {
  final _this = this as ChainStateUpdate;
  return 'ChainStateUpdate(playerIndex: ${_this.playerIndex}, roomCode: ${_this.roomCode}, state: ${_this.state}, rivalName: ${_this.rivalName}, rivalAvatar: ${_this.rivalAvatar}, serverNow: ${_this.serverNow}, sessionId: ${_this.sessionId})';
}


}

/// @nodoc
abstract mixin class $ChainStateUpdateCopyWith<$Res>  {
  factory $ChainStateUpdateCopyWith(ChainStateUpdate value, $Res Function(ChainStateUpdate) _then) = _$ChainStateUpdateCopyWithImpl;
@useResult
$Res call({
 int playerIndex, String roomCode, GameState state, String? rivalName, String? rivalAvatar, int? serverNow, String? sessionId
});


$GameStateCopyWith<$Res> get state;

}
/// @nodoc
class _$ChainStateUpdateCopyWithImpl<$Res>
    implements $ChainStateUpdateCopyWith<$Res> {
  _$ChainStateUpdateCopyWithImpl(this._self, this._then);

  final ChainStateUpdate _self;
  final $Res Function(ChainStateUpdate) _then;

/// Create a copy of ChainStateUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerIndex = null,Object? roomCode = null,Object? state = null,Object? rivalName = freezed,Object? rivalAvatar = freezed,Object? serverNow = freezed,Object? sessionId = freezed,}) {
  return _then(ChainStateUpdate(
playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameState,rivalName: freezed == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String?,rivalAvatar: freezed == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String?,serverNow: freezed == serverNow ? _self.serverNow : serverNow // ignore: cast_nullable_to_non_nullable
as int?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChainStateUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateCopyWith<$Res> get state {
  
  return $GameStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChainStateUpdate].
extension ChainStateUpdatePatterns on ChainStateUpdate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChainStateUpdate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChainStateUpdate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChainStateUpdate value)  $default,){
final _that = this;
switch (_that) {
case _ChainStateUpdate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChainStateUpdate value)?  $default,){
final _that = this;
switch (_that) {
case _ChainStateUpdate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int playerIndex,  String roomCode,  GameState state,  String? rivalName,  String? rivalAvatar,  int? serverNow,  String? sessionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChainStateUpdate() when $default != null:
return $default(_that.playerIndex,_that.roomCode,_that.state,_that.rivalName,_that.rivalAvatar,_that.serverNow,_that.sessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int playerIndex,  String roomCode,  GameState state,  String? rivalName,  String? rivalAvatar,  int? serverNow,  String? sessionId)  $default,) {final _that = this;
switch (_that) {
case _ChainStateUpdate():
return $default(_that.playerIndex,_that.roomCode,_that.state,_that.rivalName,_that.rivalAvatar,_that.serverNow,_that.sessionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int playerIndex,  String roomCode,  GameState state,  String? rivalName,  String? rivalAvatar,  int? serverNow,  String? sessionId)?  $default,) {final _that = this;
switch (_that) {
case _ChainStateUpdate() when $default != null:
return $default(_that.playerIndex,_that.roomCode,_that.state,_that.rivalName,_that.rivalAvatar,_that.serverNow,_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc


class _ChainStateUpdate implements ChainStateUpdate {
  const _ChainStateUpdate({required this.playerIndex, required this.roomCode, required this.state, this.rivalName, this.rivalAvatar, this.serverNow, this.sessionId});
  

@override final  int playerIndex;
@override final  String roomCode;
@override final  GameState state;
@override final  String? rivalName;
@override final  String? rivalAvatar;
@override final  int? serverNow;
@override final  String? sessionId;

/// Create a copy of ChainStateUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainStateUpdateCopyWith<_ChainStateUpdate> get copyWith => __$ChainStateUpdateCopyWithImpl<_ChainStateUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainStateUpdate&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.state, state) || other.state == state)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar)&&(identical(other.serverNow, serverNow) || other.serverNow == serverNow)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,playerIndex,roomCode,state,rivalName,rivalAvatar,serverNow,sessionId);
}

@override
String toString() {
    return 'ChainStateUpdate(playerIndex: $playerIndex, roomCode: $roomCode, state: $state, rivalName: $rivalName, rivalAvatar: $rivalAvatar, serverNow: $serverNow, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$ChainStateUpdateCopyWith<$Res> implements $ChainStateUpdateCopyWith<$Res> {
  factory _$ChainStateUpdateCopyWith(_ChainStateUpdate value, $Res Function(_ChainStateUpdate) _then) = __$ChainStateUpdateCopyWithImpl;
@override @useResult
$Res call({
 int playerIndex, String roomCode, GameState state, String? rivalName, String? rivalAvatar, int? serverNow, String? sessionId
});


@override $GameStateCopyWith<$Res> get state;

}
/// @nodoc
class __$ChainStateUpdateCopyWithImpl<$Res>
    implements _$ChainStateUpdateCopyWith<$Res> {
  __$ChainStateUpdateCopyWithImpl(this._self, this._then);

  final _ChainStateUpdate _self;
  final $Res Function(_ChainStateUpdate) _then;

/// Create a copy of ChainStateUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerIndex = null,Object? roomCode = null,Object? state = null,Object? rivalName = freezed,Object? rivalAvatar = freezed,Object? serverNow = freezed,Object? sessionId = freezed,}) {
  return _then(_ChainStateUpdate(
playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameState,rivalName: freezed == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String?,rivalAvatar: freezed == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String?,serverNow: freezed == serverNow ? _self.serverNow : serverNow // ignore: cast_nullable_to_non_nullable
as int?,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChainStateUpdate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateCopyWith<$Res> get state {
  
  return $GameStateCopyWith<$Res>(_self.state, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

// dart format on
