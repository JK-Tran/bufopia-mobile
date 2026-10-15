// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chain_game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChainGameEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ChainGameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChainGameEvent()';
}


}

/// @nodoc
class $ChainGameEventCopyWith<$Res>  {
$ChainGameEventCopyWith(ChainGameEvent _, $Res Function(ChainGameEvent) __);
}


/// Adds pattern-matching-related methods to [ChainGameEvent].
extension ChainGameEventPatterns on ChainGameEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ChainGameEventState value)?  state,TResult Function( _ChainGameEventWordChecking value)?  wordChecking,TResult Function( _ChainGameEventWordRejected value)?  wordRejected,TResult Function( _ChainGameEventReward value)?  reward,TResult Function( _ChainGameEventRematchWaiting value)?  rematchWaiting,TResult Function( _ChainGameEventOpponentLeft value)?  opponentLeft,TResult Function( _ChainGameEventConnection value)?  connection,TResult Function( _ChainGameEventError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChainGameEventState() when state != null:
return state(_that);case _ChainGameEventWordChecking() when wordChecking != null:
return wordChecking(_that);case _ChainGameEventWordRejected() when wordRejected != null:
return wordRejected(_that);case _ChainGameEventReward() when reward != null:
return reward(_that);case _ChainGameEventRematchWaiting() when rematchWaiting != null:
return rematchWaiting(_that);case _ChainGameEventOpponentLeft() when opponentLeft != null:
return opponentLeft(_that);case _ChainGameEventConnection() when connection != null:
return connection(_that);case _ChainGameEventError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ChainGameEventState value)  state,required TResult Function( _ChainGameEventWordChecking value)  wordChecking,required TResult Function( _ChainGameEventWordRejected value)  wordRejected,required TResult Function( _ChainGameEventReward value)  reward,required TResult Function( _ChainGameEventRematchWaiting value)  rematchWaiting,required TResult Function( _ChainGameEventOpponentLeft value)  opponentLeft,required TResult Function( _ChainGameEventConnection value)  connection,required TResult Function( _ChainGameEventError value)  error,}){
final _that = this;
switch (_that) {
case _ChainGameEventState():
return state(_that);case _ChainGameEventWordChecking():
return wordChecking(_that);case _ChainGameEventWordRejected():
return wordRejected(_that);case _ChainGameEventReward():
return reward(_that);case _ChainGameEventRematchWaiting():
return rematchWaiting(_that);case _ChainGameEventOpponentLeft():
return opponentLeft(_that);case _ChainGameEventConnection():
return connection(_that);case _ChainGameEventError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ChainGameEventState value)?  state,TResult? Function( _ChainGameEventWordChecking value)?  wordChecking,TResult? Function( _ChainGameEventWordRejected value)?  wordRejected,TResult? Function( _ChainGameEventReward value)?  reward,TResult? Function( _ChainGameEventRematchWaiting value)?  rematchWaiting,TResult? Function( _ChainGameEventOpponentLeft value)?  opponentLeft,TResult? Function( _ChainGameEventConnection value)?  connection,TResult? Function( _ChainGameEventError value)?  error,}){
final _that = this;
switch (_that) {
case _ChainGameEventState() when state != null:
return state(_that);case _ChainGameEventWordChecking() when wordChecking != null:
return wordChecking(_that);case _ChainGameEventWordRejected() when wordRejected != null:
return wordRejected(_that);case _ChainGameEventReward() when reward != null:
return reward(_that);case _ChainGameEventRematchWaiting() when rematchWaiting != null:
return rematchWaiting(_that);case _ChainGameEventOpponentLeft() when opponentLeft != null:
return opponentLeft(_that);case _ChainGameEventConnection() when connection != null:
return connection(_that);case _ChainGameEventError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ChainStateUpdate update)?  state,TResult Function( bool isChecking)?  wordChecking,TResult Function( int penalty)?  wordRejected,TResult Function( Reward reward,  String? sessionId)?  reward,TResult Function( List<bool> readyPlayers)?  rematchWaiting,TResult Function( String? message)?  opponentLeft,TResult Function( SocketConnectionState state)?  connection,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChainGameEventState() when state != null:
return state(_that.update);case _ChainGameEventWordChecking() when wordChecking != null:
return wordChecking(_that.isChecking);case _ChainGameEventWordRejected() when wordRejected != null:
return wordRejected(_that.penalty);case _ChainGameEventReward() when reward != null:
return reward(_that.reward,_that.sessionId);case _ChainGameEventRematchWaiting() when rematchWaiting != null:
return rematchWaiting(_that.readyPlayers);case _ChainGameEventOpponentLeft() when opponentLeft != null:
return opponentLeft(_that.message);case _ChainGameEventConnection() when connection != null:
return connection(_that.state);case _ChainGameEventError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ChainStateUpdate update)  state,required TResult Function( bool isChecking)  wordChecking,required TResult Function( int penalty)  wordRejected,required TResult Function( Reward reward,  String? sessionId)  reward,required TResult Function( List<bool> readyPlayers)  rematchWaiting,required TResult Function( String? message)  opponentLeft,required TResult Function( SocketConnectionState state)  connection,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _ChainGameEventState():
return state(_that.update);case _ChainGameEventWordChecking():
return wordChecking(_that.isChecking);case _ChainGameEventWordRejected():
return wordRejected(_that.penalty);case _ChainGameEventReward():
return reward(_that.reward,_that.sessionId);case _ChainGameEventRematchWaiting():
return rematchWaiting(_that.readyPlayers);case _ChainGameEventOpponentLeft():
return opponentLeft(_that.message);case _ChainGameEventConnection():
return connection(_that.state);case _ChainGameEventError():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ChainStateUpdate update)?  state,TResult? Function( bool isChecking)?  wordChecking,TResult? Function( int penalty)?  wordRejected,TResult? Function( Reward reward,  String? sessionId)?  reward,TResult? Function( List<bool> readyPlayers)?  rematchWaiting,TResult? Function( String? message)?  opponentLeft,TResult? Function( SocketConnectionState state)?  connection,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _ChainGameEventState() when state != null:
return state(_that.update);case _ChainGameEventWordChecking() when wordChecking != null:
return wordChecking(_that.isChecking);case _ChainGameEventWordRejected() when wordRejected != null:
return wordRejected(_that.penalty);case _ChainGameEventReward() when reward != null:
return reward(_that.reward,_that.sessionId);case _ChainGameEventRematchWaiting() when rematchWaiting != null:
return rematchWaiting(_that.readyPlayers);case _ChainGameEventOpponentLeft() when opponentLeft != null:
return opponentLeft(_that.message);case _ChainGameEventConnection() when connection != null:
return connection(_that.state);case _ChainGameEventError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ChainGameEventState implements ChainGameEvent {
  const _ChainGameEventState(this.update);
  

 final  ChainStateUpdate update;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainGameEventStateCopyWith<_ChainGameEventState> get copyWith => __$ChainGameEventStateCopyWithImpl<_ChainGameEventState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainGameEventState&&(identical(other.update, update) || other.update == update));
}


@override
int get hashCode {
    return Object.hash(runtimeType,update);
}

@override
String toString() {
    return 'ChainGameEvent.state(update: $update)';
}


}

/// @nodoc
abstract mixin class _$ChainGameEventStateCopyWith<$Res> implements $ChainGameEventCopyWith<$Res> {
  factory _$ChainGameEventStateCopyWith(_ChainGameEventState value, $Res Function(_ChainGameEventState) _then) = __$ChainGameEventStateCopyWithImpl;
@useResult
$Res call({
 ChainStateUpdate update
});


$ChainStateUpdateCopyWith<$Res> get update;

}
/// @nodoc
class __$ChainGameEventStateCopyWithImpl<$Res>
    implements _$ChainGameEventStateCopyWith<$Res> {
  __$ChainGameEventStateCopyWithImpl(this._self, this._then);

  final _ChainGameEventState _self;
  final $Res Function(_ChainGameEventState) _then;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? update = null,}) {
  return _then(_ChainGameEventState(
null == update ? _self.update : update // ignore: cast_nullable_to_non_nullable
as ChainStateUpdate,
  ));
}

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainStateUpdateCopyWith<$Res> get update {
  
  return $ChainStateUpdateCopyWith<$Res>(_self.update, (value) {
    return _then(_self.copyWith(update: value));
  });
}
}

/// @nodoc


class _ChainGameEventWordChecking implements ChainGameEvent {
  const _ChainGameEventWordChecking({required this.isChecking});
  

 final  bool isChecking;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainGameEventWordCheckingCopyWith<_ChainGameEventWordChecking> get copyWith => __$ChainGameEventWordCheckingCopyWithImpl<_ChainGameEventWordChecking>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainGameEventWordChecking&&(identical(other.isChecking, isChecking) || other.isChecking == isChecking));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isChecking);
}

@override
String toString() {
    return 'ChainGameEvent.wordChecking(isChecking: $isChecking)';
}


}

/// @nodoc
abstract mixin class _$ChainGameEventWordCheckingCopyWith<$Res> implements $ChainGameEventCopyWith<$Res> {
  factory _$ChainGameEventWordCheckingCopyWith(_ChainGameEventWordChecking value, $Res Function(_ChainGameEventWordChecking) _then) = __$ChainGameEventWordCheckingCopyWithImpl;
@useResult
$Res call({
 bool isChecking
});




}
/// @nodoc
class __$ChainGameEventWordCheckingCopyWithImpl<$Res>
    implements _$ChainGameEventWordCheckingCopyWith<$Res> {
  __$ChainGameEventWordCheckingCopyWithImpl(this._self, this._then);

  final _ChainGameEventWordChecking _self;
  final $Res Function(_ChainGameEventWordChecking) _then;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isChecking = null,}) {
  return _then(_ChainGameEventWordChecking(
isChecking: null == isChecking ? _self.isChecking : isChecking // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ChainGameEventWordRejected implements ChainGameEvent {
  const _ChainGameEventWordRejected({required this.penalty});
  

 final  int penalty;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainGameEventWordRejectedCopyWith<_ChainGameEventWordRejected> get copyWith => __$ChainGameEventWordRejectedCopyWithImpl<_ChainGameEventWordRejected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainGameEventWordRejected&&(identical(other.penalty, penalty) || other.penalty == penalty));
}


@override
int get hashCode {
    return Object.hash(runtimeType,penalty);
}

@override
String toString() {
    return 'ChainGameEvent.wordRejected(penalty: $penalty)';
}


}

/// @nodoc
abstract mixin class _$ChainGameEventWordRejectedCopyWith<$Res> implements $ChainGameEventCopyWith<$Res> {
  factory _$ChainGameEventWordRejectedCopyWith(_ChainGameEventWordRejected value, $Res Function(_ChainGameEventWordRejected) _then) = __$ChainGameEventWordRejectedCopyWithImpl;
@useResult
$Res call({
 int penalty
});




}
/// @nodoc
class __$ChainGameEventWordRejectedCopyWithImpl<$Res>
    implements _$ChainGameEventWordRejectedCopyWith<$Res> {
  __$ChainGameEventWordRejectedCopyWithImpl(this._self, this._then);

  final _ChainGameEventWordRejected _self;
  final $Res Function(_ChainGameEventWordRejected) _then;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? penalty = null,}) {
  return _then(_ChainGameEventWordRejected(
penalty: null == penalty ? _self.penalty : penalty // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ChainGameEventReward implements ChainGameEvent {
  const _ChainGameEventReward({this.reward = const Reward(), this.sessionId});
  

@JsonKey() final  Reward reward;
 final  String? sessionId;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainGameEventRewardCopyWith<_ChainGameEventReward> get copyWith => __$ChainGameEventRewardCopyWithImpl<_ChainGameEventReward>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainGameEventReward&&(identical(other.reward, reward) || other.reward == reward)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reward,sessionId);
}

@override
String toString() {
    return 'ChainGameEvent.reward(reward: $reward, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$ChainGameEventRewardCopyWith<$Res> implements $ChainGameEventCopyWith<$Res> {
  factory _$ChainGameEventRewardCopyWith(_ChainGameEventReward value, $Res Function(_ChainGameEventReward) _then) = __$ChainGameEventRewardCopyWithImpl;
@useResult
$Res call({
 Reward reward, String? sessionId
});


$RewardCopyWith<$Res> get reward;

}
/// @nodoc
class __$ChainGameEventRewardCopyWithImpl<$Res>
    implements _$ChainGameEventRewardCopyWith<$Res> {
  __$ChainGameEventRewardCopyWithImpl(this._self, this._then);

  final _ChainGameEventReward _self;
  final $Res Function(_ChainGameEventReward) _then;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reward = null,Object? sessionId = freezed,}) {
  return _then(_ChainGameEventReward(
reward: null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as Reward,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res> get reward {
  
  return $RewardCopyWith<$Res>(_self.reward, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}

/// @nodoc


class _ChainGameEventRematchWaiting implements ChainGameEvent {
  const _ChainGameEventRematchWaiting({ List<bool> readyPlayers = const []}): _readyPlayers = readyPlayers;
  

 final  List<bool> _readyPlayers;
@JsonKey() List<bool> get readyPlayers {
  if (_readyPlayers is EqualUnmodifiableListView) return _readyPlayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_readyPlayers);
}


/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainGameEventRematchWaitingCopyWith<_ChainGameEventRematchWaiting> get copyWith => __$ChainGameEventRematchWaitingCopyWithImpl<_ChainGameEventRematchWaiting>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainGameEventRematchWaiting&&const DeepCollectionEquality().equals(other.readyPlayers, _readyPlayers));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_readyPlayers));
}

@override
String toString() {
    return 'ChainGameEvent.rematchWaiting(readyPlayers: $readyPlayers)';
}


}

/// @nodoc
abstract mixin class _$ChainGameEventRematchWaitingCopyWith<$Res> implements $ChainGameEventCopyWith<$Res> {
  factory _$ChainGameEventRematchWaitingCopyWith(_ChainGameEventRematchWaiting value, $Res Function(_ChainGameEventRematchWaiting) _then) = __$ChainGameEventRematchWaitingCopyWithImpl;
@useResult
$Res call({
 List<bool> readyPlayers
});




}
/// @nodoc
class __$ChainGameEventRematchWaitingCopyWithImpl<$Res>
    implements _$ChainGameEventRematchWaitingCopyWith<$Res> {
  __$ChainGameEventRematchWaitingCopyWithImpl(this._self, this._then);

  final _ChainGameEventRematchWaiting _self;
  final $Res Function(_ChainGameEventRematchWaiting) _then;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? readyPlayers = null,}) {
  return _then(_ChainGameEventRematchWaiting(
readyPlayers: null == readyPlayers ? _self._readyPlayers : readyPlayers // ignore: cast_nullable_to_non_nullable
as List<bool>,
  ));
}


}

/// @nodoc


class _ChainGameEventOpponentLeft implements ChainGameEvent {
  const _ChainGameEventOpponentLeft([this.message]);
  

 final  String? message;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainGameEventOpponentLeftCopyWith<_ChainGameEventOpponentLeft> get copyWith => __$ChainGameEventOpponentLeftCopyWithImpl<_ChainGameEventOpponentLeft>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainGameEventOpponentLeft&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'ChainGameEvent.opponentLeft(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChainGameEventOpponentLeftCopyWith<$Res> implements $ChainGameEventCopyWith<$Res> {
  factory _$ChainGameEventOpponentLeftCopyWith(_ChainGameEventOpponentLeft value, $Res Function(_ChainGameEventOpponentLeft) _then) = __$ChainGameEventOpponentLeftCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ChainGameEventOpponentLeftCopyWithImpl<$Res>
    implements _$ChainGameEventOpponentLeftCopyWith<$Res> {
  __$ChainGameEventOpponentLeftCopyWithImpl(this._self, this._then);

  final _ChainGameEventOpponentLeft _self;
  final $Res Function(_ChainGameEventOpponentLeft) _then;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_ChainGameEventOpponentLeft(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ChainGameEventConnection implements ChainGameEvent {
  const _ChainGameEventConnection(this.state);
  

 final  SocketConnectionState state;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainGameEventConnectionCopyWith<_ChainGameEventConnection> get copyWith => __$ChainGameEventConnectionCopyWithImpl<_ChainGameEventConnection>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainGameEventConnection&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode {
    return Object.hash(runtimeType,state);
}

@override
String toString() {
    return 'ChainGameEvent.connection(state: $state)';
}


}

/// @nodoc
abstract mixin class _$ChainGameEventConnectionCopyWith<$Res> implements $ChainGameEventCopyWith<$Res> {
  factory _$ChainGameEventConnectionCopyWith(_ChainGameEventConnection value, $Res Function(_ChainGameEventConnection) _then) = __$ChainGameEventConnectionCopyWithImpl;
@useResult
$Res call({
 SocketConnectionState state
});




}
/// @nodoc
class __$ChainGameEventConnectionCopyWithImpl<$Res>
    implements _$ChainGameEventConnectionCopyWith<$Res> {
  __$ChainGameEventConnectionCopyWithImpl(this._self, this._then);

  final _ChainGameEventConnection _self;
  final $Res Function(_ChainGameEventConnection) _then;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(_ChainGameEventConnection(
null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as SocketConnectionState,
  ));
}


}

/// @nodoc


class _ChainGameEventError implements ChainGameEvent {
  const _ChainGameEventError(this.message);
  

 final  String message;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainGameEventErrorCopyWith<_ChainGameEventError> get copyWith => __$ChainGameEventErrorCopyWithImpl<_ChainGameEventError>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainGameEventError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'ChainGameEvent.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChainGameEventErrorCopyWith<$Res> implements $ChainGameEventCopyWith<$Res> {
  factory _$ChainGameEventErrorCopyWith(_ChainGameEventError value, $Res Function(_ChainGameEventError) _then) = __$ChainGameEventErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ChainGameEventErrorCopyWithImpl<$Res>
    implements _$ChainGameEventErrorCopyWith<$Res> {
  __$ChainGameEventErrorCopyWithImpl(this._self, this._then);

  final _ChainGameEventError _self;
  final $Res Function(_ChainGameEventError) _then;

/// Create a copy of ChainGameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ChainGameEventError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
