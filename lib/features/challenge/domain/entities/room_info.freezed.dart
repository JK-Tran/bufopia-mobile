// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomInfo {

 String get roomCode; String get matchId; String get hostUid; String get hostName; String get topicId; String get status; List<RoomPlayer> get players;
/// Create a copy of RoomInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomInfoCopyWith<RoomInfo> get copyWith => _$RoomInfoCopyWithImpl<RoomInfo>(this as RoomInfo, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RoomInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomInfo&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.matchId, _this.matchId) || other.matchId == _this.matchId)&&(identical(other.hostUid, _this.hostUid) || other.hostUid == _this.hostUid)&&(identical(other.hostName, _this.hostName) || other.hostName == _this.hostName)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.players, _this.players));
}


@override
int get hashCode {
  final _this = this as RoomInfo;
  return Object.hash(runtimeType,_this.roomCode,_this.matchId,_this.hostUid,_this.hostName,_this.topicId,_this.status,const DeepCollectionEquality().hash(_this.players));
}

@override
String toString() {
  final _this = this as RoomInfo;
  return 'RoomInfo(roomCode: ${_this.roomCode}, matchId: ${_this.matchId}, hostUid: ${_this.hostUid}, hostName: ${_this.hostName}, topicId: ${_this.topicId}, status: ${_this.status}, players: ${_this.players})';
}


}

/// @nodoc
abstract mixin class $RoomInfoCopyWith<$Res>  {
  factory $RoomInfoCopyWith(RoomInfo value, $Res Function(RoomInfo) _then) = _$RoomInfoCopyWithImpl;
@useResult
$Res call({
 String roomCode, String matchId, String hostUid, String hostName, String topicId, String status, List<RoomPlayer> players
});




}
/// @nodoc
class _$RoomInfoCopyWithImpl<$Res>
    implements $RoomInfoCopyWith<$Res> {
  _$RoomInfoCopyWithImpl(this._self, this._then);

  final RoomInfo _self;
  final $Res Function(RoomInfo) _then;

/// Create a copy of RoomInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomCode = null,Object? matchId = null,Object? hostUid = null,Object? hostName = null,Object? topicId = null,Object? status = null,Object? players = null,}) {
  return _then(RoomInfo(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,hostUid: null == hostUid ? _self.hostUid : hostUid // ignore: cast_nullable_to_non_nullable
as String,hostName: null == hostName ? _self.hostName : hostName // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayer>,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomInfo].
extension RoomInfoPatterns on RoomInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomInfo value)  $default,){
final _that = this;
switch (_that) {
case _RoomInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomInfo value)?  $default,){
final _that = this;
switch (_that) {
case _RoomInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomCode,  String matchId,  String hostUid,  String hostName,  String topicId,  String status,  List<RoomPlayer> players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomInfo() when $default != null:
return $default(_that.roomCode,_that.matchId,_that.hostUid,_that.hostName,_that.topicId,_that.status,_that.players);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomCode,  String matchId,  String hostUid,  String hostName,  String topicId,  String status,  List<RoomPlayer> players)  $default,) {final _that = this;
switch (_that) {
case _RoomInfo():
return $default(_that.roomCode,_that.matchId,_that.hostUid,_that.hostName,_that.topicId,_that.status,_that.players);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomCode,  String matchId,  String hostUid,  String hostName,  String topicId,  String status,  List<RoomPlayer> players)?  $default,) {final _that = this;
switch (_that) {
case _RoomInfo() when $default != null:
return $default(_that.roomCode,_that.matchId,_that.hostUid,_that.hostName,_that.topicId,_that.status,_that.players);case _:
  return null;

}
}

}

/// @nodoc


class _RoomInfo implements RoomInfo {
  const _RoomInfo({this.roomCode = '', this.matchId = '', this.hostUid = '', this.hostName = '', this.topicId = 'daily', this.status = 'waiting',  List<RoomPlayer> players = const []}): _players = players;
  

@override@JsonKey() final  String roomCode;
@override@JsonKey() final  String matchId;
@override@JsonKey() final  String hostUid;
@override@JsonKey() final  String hostName;
@override@JsonKey() final  String topicId;
@override@JsonKey() final  String status;
 final  List<RoomPlayer> _players;
@override@JsonKey() List<RoomPlayer> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}


/// Create a copy of RoomInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomInfoCopyWith<_RoomInfo> get copyWith => __$RoomInfoCopyWithImpl<_RoomInfo>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomInfo&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.hostUid, hostUid) || other.hostUid == hostUid)&&(identical(other.hostName, hostName) || other.hostName == hostName)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.players, _players));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,matchId,hostUid,hostName,topicId,status,const DeepCollectionEquality().hash(_players));
}

@override
String toString() {
    return 'RoomInfo(roomCode: $roomCode, matchId: $matchId, hostUid: $hostUid, hostName: $hostName, topicId: $topicId, status: $status, players: $players)';
}


}

/// @nodoc
abstract mixin class _$RoomInfoCopyWith<$Res> implements $RoomInfoCopyWith<$Res> {
  factory _$RoomInfoCopyWith(_RoomInfo value, $Res Function(_RoomInfo) _then) = __$RoomInfoCopyWithImpl;
@override @useResult
$Res call({
 String roomCode, String matchId, String hostUid, String hostName, String topicId, String status, List<RoomPlayer> players
});




}
/// @nodoc
class __$RoomInfoCopyWithImpl<$Res>
    implements _$RoomInfoCopyWith<$Res> {
  __$RoomInfoCopyWithImpl(this._self, this._then);

  final _RoomInfo _self;
  final $Res Function(_RoomInfo) _then;

/// Create a copy of RoomInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomCode = null,Object? matchId = null,Object? hostUid = null,Object? hostName = null,Object? topicId = null,Object? status = null,Object? players = null,}) {
  return _then(_RoomInfo(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,hostUid: null == hostUid ? _self.hostUid : hostUid // ignore: cast_nullable_to_non_nullable
as String,hostName: null == hostName ? _self.hostName : hostName // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayer>,
  ));
}


}

/// @nodoc
mixin _$RoomPlayer {

 String get uid; String get name; String? get avatar;
/// Create a copy of RoomPlayer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomPlayerCopyWith<RoomPlayer> get copyWith => _$RoomPlayerCopyWithImpl<RoomPlayer>(this as RoomPlayer, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RoomPlayer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomPlayer&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}


@override
int get hashCode {
  final _this = this as RoomPlayer;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar);
}

@override
String toString() {
  final _this = this as RoomPlayer;
  return 'RoomPlayer(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $RoomPlayerCopyWith<$Res>  {
  factory $RoomPlayerCopyWith(RoomPlayer value, $Res Function(RoomPlayer) _then) = _$RoomPlayerCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String? avatar
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
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(RoomPlayer(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String name,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomPlayer() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String name,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _RoomPlayer():
return $default(_that.uid,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String name,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _RoomPlayer() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _RoomPlayer implements RoomPlayer {
  const _RoomPlayer({this.uid = '', this.name = '', this.avatar});
  

@override@JsonKey() final  String uid;
@override@JsonKey() final  String name;
@override final  String? avatar;

/// Create a copy of RoomPlayer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomPlayerCopyWith<_RoomPlayer> get copyWith => __$RoomPlayerCopyWithImpl<_RoomPlayer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomPlayer&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar);
}

@override
String toString() {
    return 'RoomPlayer(uid: $uid, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$RoomPlayerCopyWith<$Res> implements $RoomPlayerCopyWith<$Res> {
  factory _$RoomPlayerCopyWith(_RoomPlayer value, $Res Function(_RoomPlayer) _then) = __$RoomPlayerCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name, String? avatar
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
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_RoomPlayer(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
