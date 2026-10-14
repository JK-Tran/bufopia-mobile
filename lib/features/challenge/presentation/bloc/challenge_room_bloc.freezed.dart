// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChallengeRoomEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ChallengeRoomEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChallengeRoomEvent()';
}


}

/// @nodoc
class $ChallengeRoomEventCopyWith<$Res>  {
$ChallengeRoomEventCopyWith(ChallengeRoomEvent _, $Res Function(ChallengeRoomEvent) __);
}


/// Adds pattern-matching-related methods to [ChallengeRoomEvent].
extension ChallengeRoomEventPatterns on ChallengeRoomEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _SwitchTab value)?  switchTab,TResult Function( _CreateRoom value)?  createRoom,TResult Function( _CancelRoom value)?  cancelRoom,TResult Function( _JoinRoom value)?  joinRoom,TResult Function( _InviteRival value)?  inviteRival,TResult Function( _AcceptInvitation value)?  acceptInvitation,TResult Function( _DismissInvitation value)?  dismissInvitation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _SwitchTab() when switchTab != null:
return switchTab(_that);case _CreateRoom() when createRoom != null:
return createRoom(_that);case _CancelRoom() when cancelRoom != null:
return cancelRoom(_that);case _JoinRoom() when joinRoom != null:
return joinRoom(_that);case _InviteRival() when inviteRival != null:
return inviteRival(_that);case _AcceptInvitation() when acceptInvitation != null:
return acceptInvitation(_that);case _DismissInvitation() when dismissInvitation != null:
return dismissInvitation(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _SwitchTab value)  switchTab,required TResult Function( _CreateRoom value)  createRoom,required TResult Function( _CancelRoom value)  cancelRoom,required TResult Function( _JoinRoom value)  joinRoom,required TResult Function( _InviteRival value)  inviteRival,required TResult Function( _AcceptInvitation value)  acceptInvitation,required TResult Function( _DismissInvitation value)  dismissInvitation,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _SwitchTab():
return switchTab(_that);case _CreateRoom():
return createRoom(_that);case _CancelRoom():
return cancelRoom(_that);case _JoinRoom():
return joinRoom(_that);case _InviteRival():
return inviteRival(_that);case _AcceptInvitation():
return acceptInvitation(_that);case _DismissInvitation():
return dismissInvitation(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _SwitchTab value)?  switchTab,TResult? Function( _CreateRoom value)?  createRoom,TResult? Function( _CancelRoom value)?  cancelRoom,TResult? Function( _JoinRoom value)?  joinRoom,TResult? Function( _InviteRival value)?  inviteRival,TResult? Function( _AcceptInvitation value)?  acceptInvitation,TResult? Function( _DismissInvitation value)?  dismissInvitation,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _SwitchTab() when switchTab != null:
return switchTab(_that);case _CreateRoom() when createRoom != null:
return createRoom(_that);case _CancelRoom() when cancelRoom != null:
return cancelRoom(_that);case _JoinRoom() when joinRoom != null:
return joinRoom(_that);case _InviteRival() when inviteRival != null:
return inviteRival(_that);case _AcceptInvitation() when acceptInvitation != null:
return acceptInvitation(_that);case _DismissInvitation() when dismissInvitation != null:
return dismissInvitation(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String uid)?  init,TResult Function( int tabIndex)?  switchTab,TResult Function()?  createRoom,TResult Function()?  cancelRoom,TResult Function( String roomCode,  void Function(String) onJoined)?  joinRoom,TResult Function( String targetUid)?  inviteRival,TResult Function( String invitationId,  void Function(String) onAccepted)?  acceptInvitation,TResult Function( String invitationId)?  dismissInvitation,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.uid);case _SwitchTab() when switchTab != null:
return switchTab(_that.tabIndex);case _CreateRoom() when createRoom != null:
return createRoom();case _CancelRoom() when cancelRoom != null:
return cancelRoom();case _JoinRoom() when joinRoom != null:
return joinRoom(_that.roomCode,_that.onJoined);case _InviteRival() when inviteRival != null:
return inviteRival(_that.targetUid);case _AcceptInvitation() when acceptInvitation != null:
return acceptInvitation(_that.invitationId,_that.onAccepted);case _DismissInvitation() when dismissInvitation != null:
return dismissInvitation(_that.invitationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String uid)  init,required TResult Function( int tabIndex)  switchTab,required TResult Function()  createRoom,required TResult Function()  cancelRoom,required TResult Function( String roomCode,  void Function(String) onJoined)  joinRoom,required TResult Function( String targetUid)  inviteRival,required TResult Function( String invitationId,  void Function(String) onAccepted)  acceptInvitation,required TResult Function( String invitationId)  dismissInvitation,}) {final _that = this;
switch (_that) {
case _Init():
return init(_that.uid);case _SwitchTab():
return switchTab(_that.tabIndex);case _CreateRoom():
return createRoom();case _CancelRoom():
return cancelRoom();case _JoinRoom():
return joinRoom(_that.roomCode,_that.onJoined);case _InviteRival():
return inviteRival(_that.targetUid);case _AcceptInvitation():
return acceptInvitation(_that.invitationId,_that.onAccepted);case _DismissInvitation():
return dismissInvitation(_that.invitationId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String uid)?  init,TResult? Function( int tabIndex)?  switchTab,TResult? Function()?  createRoom,TResult? Function()?  cancelRoom,TResult? Function( String roomCode,  void Function(String) onJoined)?  joinRoom,TResult? Function( String targetUid)?  inviteRival,TResult? Function( String invitationId,  void Function(String) onAccepted)?  acceptInvitation,TResult? Function( String invitationId)?  dismissInvitation,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.uid);case _SwitchTab() when switchTab != null:
return switchTab(_that.tabIndex);case _CreateRoom() when createRoom != null:
return createRoom();case _CancelRoom() when cancelRoom != null:
return cancelRoom();case _JoinRoom() when joinRoom != null:
return joinRoom(_that.roomCode,_that.onJoined);case _InviteRival() when inviteRival != null:
return inviteRival(_that.targetUid);case _AcceptInvitation() when acceptInvitation != null:
return acceptInvitation(_that.invitationId,_that.onAccepted);case _DismissInvitation() when dismissInvitation != null:
return dismissInvitation(_that.invitationId);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements ChallengeRoomEvent {
  const _Init({required this.uid});
  

 final  String uid;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid);
}

@override
String toString() {
    return 'ChallengeRoomEvent.init(uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $ChallengeRoomEventCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@useResult
$Res call({
 String uid
});




}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(_Init(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SwitchTab implements ChallengeRoomEvent {
  const _SwitchTab(this.tabIndex);
  

 final  int tabIndex;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchTabCopyWith<_SwitchTab> get copyWith => __$SwitchTabCopyWithImpl<_SwitchTab>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwitchTab&&(identical(other.tabIndex, tabIndex) || other.tabIndex == tabIndex));
}


@override
int get hashCode {
    return Object.hash(runtimeType,tabIndex);
}

@override
String toString() {
    return 'ChallengeRoomEvent.switchTab(tabIndex: $tabIndex)';
}


}

/// @nodoc
abstract mixin class _$SwitchTabCopyWith<$Res> implements $ChallengeRoomEventCopyWith<$Res> {
  factory _$SwitchTabCopyWith(_SwitchTab value, $Res Function(_SwitchTab) _then) = __$SwitchTabCopyWithImpl;
@useResult
$Res call({
 int tabIndex
});




}
/// @nodoc
class __$SwitchTabCopyWithImpl<$Res>
    implements _$SwitchTabCopyWith<$Res> {
  __$SwitchTabCopyWithImpl(this._self, this._then);

  final _SwitchTab _self;
  final $Res Function(_SwitchTab) _then;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tabIndex = null,}) {
  return _then(_SwitchTab(
null == tabIndex ? _self.tabIndex : tabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CreateRoom implements ChallengeRoomEvent {
  const _CreateRoom();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateRoom);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChallengeRoomEvent.createRoom()';
}


}




/// @nodoc


class _CancelRoom implements ChallengeRoomEvent {
  const _CancelRoom();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelRoom);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChallengeRoomEvent.cancelRoom()';
}


}




/// @nodoc


class _JoinRoom implements ChallengeRoomEvent {
  const _JoinRoom({required this.roomCode, required this.onJoined});
  

 final  String roomCode;
 final  void Function(String) onJoined;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinRoomCopyWith<_JoinRoom> get copyWith => __$JoinRoomCopyWithImpl<_JoinRoom>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinRoom&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.onJoined, onJoined) || other.onJoined == onJoined));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,onJoined);
}

@override
String toString() {
    return 'ChallengeRoomEvent.joinRoom(roomCode: $roomCode, onJoined: $onJoined)';
}


}

/// @nodoc
abstract mixin class _$JoinRoomCopyWith<$Res> implements $ChallengeRoomEventCopyWith<$Res> {
  factory _$JoinRoomCopyWith(_JoinRoom value, $Res Function(_JoinRoom) _then) = __$JoinRoomCopyWithImpl;
@useResult
$Res call({
 String roomCode, void Function(String) onJoined
});




}
/// @nodoc
class __$JoinRoomCopyWithImpl<$Res>
    implements _$JoinRoomCopyWith<$Res> {
  __$JoinRoomCopyWithImpl(this._self, this._then);

  final _JoinRoom _self;
  final $Res Function(_JoinRoom) _then;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomCode = null,Object? onJoined = null,}) {
  return _then(_JoinRoom(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,onJoined: null == onJoined ? _self.onJoined : onJoined // ignore: cast_nullable_to_non_nullable
as void Function(String),
  ));
}


}

/// @nodoc


class _InviteRival implements ChallengeRoomEvent {
  const _InviteRival({required this.targetUid});
  

 final  String targetUid;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InviteRivalCopyWith<_InviteRival> get copyWith => __$InviteRivalCopyWithImpl<_InviteRival>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InviteRival&&(identical(other.targetUid, targetUid) || other.targetUid == targetUid));
}


@override
int get hashCode {
    return Object.hash(runtimeType,targetUid);
}

@override
String toString() {
    return 'ChallengeRoomEvent.inviteRival(targetUid: $targetUid)';
}


}

/// @nodoc
abstract mixin class _$InviteRivalCopyWith<$Res> implements $ChallengeRoomEventCopyWith<$Res> {
  factory _$InviteRivalCopyWith(_InviteRival value, $Res Function(_InviteRival) _then) = __$InviteRivalCopyWithImpl;
@useResult
$Res call({
 String targetUid
});




}
/// @nodoc
class __$InviteRivalCopyWithImpl<$Res>
    implements _$InviteRivalCopyWith<$Res> {
  __$InviteRivalCopyWithImpl(this._self, this._then);

  final _InviteRival _self;
  final $Res Function(_InviteRival) _then;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? targetUid = null,}) {
  return _then(_InviteRival(
targetUid: null == targetUid ? _self.targetUid : targetUid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AcceptInvitation implements ChallengeRoomEvent {
  const _AcceptInvitation({required this.invitationId, required this.onAccepted});
  

 final  String invitationId;
 final  void Function(String) onAccepted;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcceptInvitationCopyWith<_AcceptInvitation> get copyWith => __$AcceptInvitationCopyWithImpl<_AcceptInvitation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AcceptInvitation&&(identical(other.invitationId, invitationId) || other.invitationId == invitationId)&&(identical(other.onAccepted, onAccepted) || other.onAccepted == onAccepted));
}


@override
int get hashCode {
    return Object.hash(runtimeType,invitationId,onAccepted);
}

@override
String toString() {
    return 'ChallengeRoomEvent.acceptInvitation(invitationId: $invitationId, onAccepted: $onAccepted)';
}


}

/// @nodoc
abstract mixin class _$AcceptInvitationCopyWith<$Res> implements $ChallengeRoomEventCopyWith<$Res> {
  factory _$AcceptInvitationCopyWith(_AcceptInvitation value, $Res Function(_AcceptInvitation) _then) = __$AcceptInvitationCopyWithImpl;
@useResult
$Res call({
 String invitationId, void Function(String) onAccepted
});




}
/// @nodoc
class __$AcceptInvitationCopyWithImpl<$Res>
    implements _$AcceptInvitationCopyWith<$Res> {
  __$AcceptInvitationCopyWithImpl(this._self, this._then);

  final _AcceptInvitation _self;
  final $Res Function(_AcceptInvitation) _then;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? invitationId = null,Object? onAccepted = null,}) {
  return _then(_AcceptInvitation(
invitationId: null == invitationId ? _self.invitationId : invitationId // ignore: cast_nullable_to_non_nullable
as String,onAccepted: null == onAccepted ? _self.onAccepted : onAccepted // ignore: cast_nullable_to_non_nullable
as void Function(String),
  ));
}


}

/// @nodoc


class _DismissInvitation implements ChallengeRoomEvent {
  const _DismissInvitation({required this.invitationId});
  

 final  String invitationId;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DismissInvitationCopyWith<_DismissInvitation> get copyWith => __$DismissInvitationCopyWithImpl<_DismissInvitation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DismissInvitation&&(identical(other.invitationId, invitationId) || other.invitationId == invitationId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,invitationId);
}

@override
String toString() {
    return 'ChallengeRoomEvent.dismissInvitation(invitationId: $invitationId)';
}


}

/// @nodoc
abstract mixin class _$DismissInvitationCopyWith<$Res> implements $ChallengeRoomEventCopyWith<$Res> {
  factory _$DismissInvitationCopyWith(_DismissInvitation value, $Res Function(_DismissInvitation) _then) = __$DismissInvitationCopyWithImpl;
@useResult
$Res call({
 String invitationId
});




}
/// @nodoc
class __$DismissInvitationCopyWithImpl<$Res>
    implements _$DismissInvitationCopyWith<$Res> {
  __$DismissInvitationCopyWithImpl(this._self, this._then);

  final _DismissInvitation _self;
  final $Res Function(_DismissInvitation) _then;

/// Create a copy of ChallengeRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? invitationId = null,}) {
  return _then(_DismissInvitation(
invitationId: null == invitationId ? _self.invitationId : invitationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChallengeRoomState {

 ChallengeRoomTab get currentTab; bool get isLoading; bool get isActionLoading; String? get createdRoomCode; RoomInfo? get joinedRoom; SocialState? get socialState; String? get errorMessage; String? get successMessage; String? get currentUid;
/// Create a copy of ChallengeRoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChallengeRoomStateCopyWith<ChallengeRoomState> get copyWith => _$ChallengeRoomStateCopyWithImpl<ChallengeRoomState>(this as ChallengeRoomState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChallengeRoomState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChallengeRoomState&&(identical(other.currentTab, _this.currentTab) || other.currentTab == _this.currentTab)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isActionLoading, _this.isActionLoading) || other.isActionLoading == _this.isActionLoading)&&(identical(other.createdRoomCode, _this.createdRoomCode) || other.createdRoomCode == _this.createdRoomCode)&&(identical(other.joinedRoom, _this.joinedRoom) || other.joinedRoom == _this.joinedRoom)&&(identical(other.socialState, _this.socialState) || other.socialState == _this.socialState)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.successMessage, _this.successMessage) || other.successMessage == _this.successMessage)&&(identical(other.currentUid, _this.currentUid) || other.currentUid == _this.currentUid));
}


@override
int get hashCode {
  final _this = this as ChallengeRoomState;
  return Object.hash(runtimeType,_this.currentTab,_this.isLoading,_this.isActionLoading,_this.createdRoomCode,_this.joinedRoom,_this.socialState,_this.errorMessage,_this.successMessage,_this.currentUid);
}

@override
String toString() {
  final _this = this as ChallengeRoomState;
  return 'ChallengeRoomState(currentTab: ${_this.currentTab}, isLoading: ${_this.isLoading}, isActionLoading: ${_this.isActionLoading}, createdRoomCode: ${_this.createdRoomCode}, joinedRoom: ${_this.joinedRoom}, socialState: ${_this.socialState}, errorMessage: ${_this.errorMessage}, successMessage: ${_this.successMessage}, currentUid: ${_this.currentUid})';
}


}

/// @nodoc
abstract mixin class $ChallengeRoomStateCopyWith<$Res>  {
  factory $ChallengeRoomStateCopyWith(ChallengeRoomState value, $Res Function(ChallengeRoomState) _then) = _$ChallengeRoomStateCopyWithImpl;
@useResult
$Res call({
 ChallengeRoomTab currentTab, bool isLoading, bool isActionLoading, String? createdRoomCode, RoomInfo? joinedRoom, SocialState? socialState, String? errorMessage, String? successMessage, String? currentUid
});


$RoomInfoCopyWith<$Res>? get joinedRoom;$SocialStateCopyWith<$Res>? get socialState;

}
/// @nodoc
class _$ChallengeRoomStateCopyWithImpl<$Res>
    implements $ChallengeRoomStateCopyWith<$Res> {
  _$ChallengeRoomStateCopyWithImpl(this._self, this._then);

  final ChallengeRoomState _self;
  final $Res Function(ChallengeRoomState) _then;

/// Create a copy of ChallengeRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentTab = null,Object? isLoading = null,Object? isActionLoading = null,Object? createdRoomCode = freezed,Object? joinedRoom = freezed,Object? socialState = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,Object? currentUid = freezed,}) {
  return _then(ChallengeRoomState(
currentTab: null == currentTab ? _self.currentTab : currentTab // ignore: cast_nullable_to_non_nullable
as ChallengeRoomTab,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isActionLoading: null == isActionLoading ? _self.isActionLoading : isActionLoading // ignore: cast_nullable_to_non_nullable
as bool,createdRoomCode: freezed == createdRoomCode ? _self.createdRoomCode : createdRoomCode // ignore: cast_nullable_to_non_nullable
as String?,joinedRoom: freezed == joinedRoom ? _self.joinedRoom : joinedRoom // ignore: cast_nullable_to_non_nullable
as RoomInfo?,socialState: freezed == socialState ? _self.socialState : socialState // ignore: cast_nullable_to_non_nullable
as SocialState?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,currentUid: freezed == currentUid ? _self.currentUid : currentUid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ChallengeRoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomInfoCopyWith<$Res>? get joinedRoom {
    if (_self.joinedRoom == null) {
    return null;
  }

  return $RoomInfoCopyWith<$Res>(_self.joinedRoom!, (value) {
    return _then(_self.copyWith(joinedRoom: value));
  });
}/// Create a copy of ChallengeRoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialStateCopyWith<$Res>? get socialState {
    if (_self.socialState == null) {
    return null;
  }

  return $SocialStateCopyWith<$Res>(_self.socialState!, (value) {
    return _then(_self.copyWith(socialState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChallengeRoomState].
extension ChallengeRoomStatePatterns on ChallengeRoomState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChallengeRoomState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChallengeRoomState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChallengeRoomState value)  $default,){
final _that = this;
switch (_that) {
case _ChallengeRoomState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChallengeRoomState value)?  $default,){
final _that = this;
switch (_that) {
case _ChallengeRoomState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChallengeRoomTab currentTab,  bool isLoading,  bool isActionLoading,  String? createdRoomCode,  RoomInfo? joinedRoom,  SocialState? socialState,  String? errorMessage,  String? successMessage,  String? currentUid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChallengeRoomState() when $default != null:
return $default(_that.currentTab,_that.isLoading,_that.isActionLoading,_that.createdRoomCode,_that.joinedRoom,_that.socialState,_that.errorMessage,_that.successMessage,_that.currentUid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChallengeRoomTab currentTab,  bool isLoading,  bool isActionLoading,  String? createdRoomCode,  RoomInfo? joinedRoom,  SocialState? socialState,  String? errorMessage,  String? successMessage,  String? currentUid)  $default,) {final _that = this;
switch (_that) {
case _ChallengeRoomState():
return $default(_that.currentTab,_that.isLoading,_that.isActionLoading,_that.createdRoomCode,_that.joinedRoom,_that.socialState,_that.errorMessage,_that.successMessage,_that.currentUid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChallengeRoomTab currentTab,  bool isLoading,  bool isActionLoading,  String? createdRoomCode,  RoomInfo? joinedRoom,  SocialState? socialState,  String? errorMessage,  String? successMessage,  String? currentUid)?  $default,) {final _that = this;
switch (_that) {
case _ChallengeRoomState() when $default != null:
return $default(_that.currentTab,_that.isLoading,_that.isActionLoading,_that.createdRoomCode,_that.joinedRoom,_that.socialState,_that.errorMessage,_that.successMessage,_that.currentUid);case _:
  return null;

}
}

}

/// @nodoc


class _ChallengeRoomState implements ChallengeRoomState {
  const _ChallengeRoomState({this.currentTab = ChallengeRoomTab.join, this.isLoading = false, this.isActionLoading = false, this.createdRoomCode, this.joinedRoom, this.socialState, this.errorMessage, this.successMessage, this.currentUid});
  

@override@JsonKey() final  ChallengeRoomTab currentTab;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isActionLoading;
@override final  String? createdRoomCode;
@override final  RoomInfo? joinedRoom;
@override final  SocialState? socialState;
@override final  String? errorMessage;
@override final  String? successMessage;
@override final  String? currentUid;

/// Create a copy of ChallengeRoomState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChallengeRoomStateCopyWith<_ChallengeRoomState> get copyWith => __$ChallengeRoomStateCopyWithImpl<_ChallengeRoomState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChallengeRoomState&&(identical(other.currentTab, currentTab) || other.currentTab == currentTab)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isActionLoading, isActionLoading) || other.isActionLoading == isActionLoading)&&(identical(other.createdRoomCode, createdRoomCode) || other.createdRoomCode == createdRoomCode)&&(identical(other.joinedRoom, joinedRoom) || other.joinedRoom == joinedRoom)&&(identical(other.socialState, socialState) || other.socialState == socialState)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.currentUid, currentUid) || other.currentUid == currentUid));
}


@override
int get hashCode {
    return Object.hash(runtimeType,currentTab,isLoading,isActionLoading,createdRoomCode,joinedRoom,socialState,errorMessage,successMessage,currentUid);
}

@override
String toString() {
    return 'ChallengeRoomState(currentTab: $currentTab, isLoading: $isLoading, isActionLoading: $isActionLoading, createdRoomCode: $createdRoomCode, joinedRoom: $joinedRoom, socialState: $socialState, errorMessage: $errorMessage, successMessage: $successMessage, currentUid: $currentUid)';
}


}

/// @nodoc
abstract mixin class _$ChallengeRoomStateCopyWith<$Res> implements $ChallengeRoomStateCopyWith<$Res> {
  factory _$ChallengeRoomStateCopyWith(_ChallengeRoomState value, $Res Function(_ChallengeRoomState) _then) = __$ChallengeRoomStateCopyWithImpl;
@override @useResult
$Res call({
 ChallengeRoomTab currentTab, bool isLoading, bool isActionLoading, String? createdRoomCode, RoomInfo? joinedRoom, SocialState? socialState, String? errorMessage, String? successMessage, String? currentUid
});


@override $RoomInfoCopyWith<$Res>? get joinedRoom;@override $SocialStateCopyWith<$Res>? get socialState;

}
/// @nodoc
class __$ChallengeRoomStateCopyWithImpl<$Res>
    implements _$ChallengeRoomStateCopyWith<$Res> {
  __$ChallengeRoomStateCopyWithImpl(this._self, this._then);

  final _ChallengeRoomState _self;
  final $Res Function(_ChallengeRoomState) _then;

/// Create a copy of ChallengeRoomState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentTab = null,Object? isLoading = null,Object? isActionLoading = null,Object? createdRoomCode = freezed,Object? joinedRoom = freezed,Object? socialState = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,Object? currentUid = freezed,}) {
  return _then(_ChallengeRoomState(
currentTab: null == currentTab ? _self.currentTab : currentTab // ignore: cast_nullable_to_non_nullable
as ChallengeRoomTab,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isActionLoading: null == isActionLoading ? _self.isActionLoading : isActionLoading // ignore: cast_nullable_to_non_nullable
as bool,createdRoomCode: freezed == createdRoomCode ? _self.createdRoomCode : createdRoomCode // ignore: cast_nullable_to_non_nullable
as String?,joinedRoom: freezed == joinedRoom ? _self.joinedRoom : joinedRoom // ignore: cast_nullable_to_non_nullable
as RoomInfo?,socialState: freezed == socialState ? _self.socialState : socialState // ignore: cast_nullable_to_non_nullable
as SocialState?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,currentUid: freezed == currentUid ? _self.currentUid : currentUid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ChallengeRoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomInfoCopyWith<$Res>? get joinedRoom {
    if (_self.joinedRoom == null) {
    return null;
  }

  return $RoomInfoCopyWith<$Res>(_self.joinedRoom!, (value) {
    return _then(_self.copyWith(joinedRoom: value));
  });
}/// Create a copy of ChallengeRoomState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialStateCopyWith<$Res>? get socialState {
    if (_self.socialState == null) {
    return null;
  }

  return $SocialStateCopyWith<$Res>(_self.socialState!, (value) {
    return _then(_self.copyWith(socialState: value));
  });
}
}

// dart format on
