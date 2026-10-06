// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoomInfoEntity {

 String get roomCode; String get matchId; String get hostUid; String get hostName; String get topicId; String get status; List<RoomPlayerEntity> get players;
/// Create a copy of RoomInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomInfoEntityCopyWith<RoomInfoEntity> get copyWith => _$RoomInfoEntityCopyWithImpl<RoomInfoEntity>(this as RoomInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RoomInfoEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomInfoEntity&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.matchId, _this.matchId) || other.matchId == _this.matchId)&&(identical(other.hostUid, _this.hostUid) || other.hostUid == _this.hostUid)&&(identical(other.hostName, _this.hostName) || other.hostName == _this.hostName)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.players, _this.players));
}


@override
int get hashCode {
  final _this = this as RoomInfoEntity;
  return Object.hash(runtimeType,_this.roomCode,_this.matchId,_this.hostUid,_this.hostName,_this.topicId,_this.status,const DeepCollectionEquality().hash(_this.players));
}

@override
String toString() {
  final _this = this as RoomInfoEntity;
  return 'RoomInfoEntity(roomCode: ${_this.roomCode}, matchId: ${_this.matchId}, hostUid: ${_this.hostUid}, hostName: ${_this.hostName}, topicId: ${_this.topicId}, status: ${_this.status}, players: ${_this.players})';
}


}

/// @nodoc
abstract mixin class $RoomInfoEntityCopyWith<$Res>  {
  factory $RoomInfoEntityCopyWith(RoomInfoEntity value, $Res Function(RoomInfoEntity) _then) = _$RoomInfoEntityCopyWithImpl;
@useResult
$Res call({
 String roomCode, String matchId, String hostUid, String hostName, String topicId, String status, List<RoomPlayerEntity> players
});




}
/// @nodoc
class _$RoomInfoEntityCopyWithImpl<$Res>
    implements $RoomInfoEntityCopyWith<$Res> {
  _$RoomInfoEntityCopyWithImpl(this._self, this._then);

  final RoomInfoEntity _self;
  final $Res Function(RoomInfoEntity) _then;

/// Create a copy of RoomInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomCode = null,Object? matchId = null,Object? hostUid = null,Object? hostName = null,Object? topicId = null,Object? status = null,Object? players = null,}) {
  return _then(RoomInfoEntity(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,hostUid: null == hostUid ? _self.hostUid : hostUid // ignore: cast_nullable_to_non_nullable
as String,hostName: null == hostName ? _self.hostName : hostName // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayerEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomInfoEntity].
extension RoomInfoEntityPatterns on RoomInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _RoomInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RoomInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomCode,  String matchId,  String hostUid,  String hostName,  String topicId,  String status,  List<RoomPlayerEntity> players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomInfoEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomCode,  String matchId,  String hostUid,  String hostName,  String topicId,  String status,  List<RoomPlayerEntity> players)  $default,) {final _that = this;
switch (_that) {
case _RoomInfoEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomCode,  String matchId,  String hostUid,  String hostName,  String topicId,  String status,  List<RoomPlayerEntity> players)?  $default,) {final _that = this;
switch (_that) {
case _RoomInfoEntity() when $default != null:
return $default(_that.roomCode,_that.matchId,_that.hostUid,_that.hostName,_that.topicId,_that.status,_that.players);case _:
  return null;

}
}

}

/// @nodoc


class _RoomInfoEntity implements RoomInfoEntity {
  const _RoomInfoEntity({this.roomCode = '', this.matchId = '', this.hostUid = '', this.hostName = '', this.topicId = 'daily', this.status = 'waiting',  List<RoomPlayerEntity> players = const []}): _players = players;
  

@override@JsonKey() final  String roomCode;
@override@JsonKey() final  String matchId;
@override@JsonKey() final  String hostUid;
@override@JsonKey() final  String hostName;
@override@JsonKey() final  String topicId;
@override@JsonKey() final  String status;
 final  List<RoomPlayerEntity> _players;
@override@JsonKey() List<RoomPlayerEntity> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}


/// Create a copy of RoomInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomInfoEntityCopyWith<_RoomInfoEntity> get copyWith => __$RoomInfoEntityCopyWithImpl<_RoomInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomInfoEntity&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.hostUid, hostUid) || other.hostUid == hostUid)&&(identical(other.hostName, hostName) || other.hostName == hostName)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.players, _players));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,matchId,hostUid,hostName,topicId,status,const DeepCollectionEquality().hash(_players));
}

@override
String toString() {
    return 'RoomInfoEntity(roomCode: $roomCode, matchId: $matchId, hostUid: $hostUid, hostName: $hostName, topicId: $topicId, status: $status, players: $players)';
}


}

/// @nodoc
abstract mixin class _$RoomInfoEntityCopyWith<$Res> implements $RoomInfoEntityCopyWith<$Res> {
  factory _$RoomInfoEntityCopyWith(_RoomInfoEntity value, $Res Function(_RoomInfoEntity) _then) = __$RoomInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String roomCode, String matchId, String hostUid, String hostName, String topicId, String status, List<RoomPlayerEntity> players
});




}
/// @nodoc
class __$RoomInfoEntityCopyWithImpl<$Res>
    implements _$RoomInfoEntityCopyWith<$Res> {
  __$RoomInfoEntityCopyWithImpl(this._self, this._then);

  final _RoomInfoEntity _self;
  final $Res Function(_RoomInfoEntity) _then;

/// Create a copy of RoomInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomCode = null,Object? matchId = null,Object? hostUid = null,Object? hostName = null,Object? topicId = null,Object? status = null,Object? players = null,}) {
  return _then(_RoomInfoEntity(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,matchId: null == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String,hostUid: null == hostUid ? _self.hostUid : hostUid // ignore: cast_nullable_to_non_nullable
as String,hostName: null == hostName ? _self.hostName : hostName // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayerEntity>,
  ));
}


}

/// @nodoc
mixin _$RoomPlayerEntity {

 String get uid; String get name; String? get avatar;
/// Create a copy of RoomPlayerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomPlayerEntityCopyWith<RoomPlayerEntity> get copyWith => _$RoomPlayerEntityCopyWithImpl<RoomPlayerEntity>(this as RoomPlayerEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RoomPlayerEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomPlayerEntity&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}


@override
int get hashCode {
  final _this = this as RoomPlayerEntity;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar);
}

@override
String toString() {
  final _this = this as RoomPlayerEntity;
  return 'RoomPlayerEntity(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $RoomPlayerEntityCopyWith<$Res>  {
  factory $RoomPlayerEntityCopyWith(RoomPlayerEntity value, $Res Function(RoomPlayerEntity) _then) = _$RoomPlayerEntityCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String? avatar
});




}
/// @nodoc
class _$RoomPlayerEntityCopyWithImpl<$Res>
    implements $RoomPlayerEntityCopyWith<$Res> {
  _$RoomPlayerEntityCopyWithImpl(this._self, this._then);

  final RoomPlayerEntity _self;
  final $Res Function(RoomPlayerEntity) _then;

/// Create a copy of RoomPlayerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(RoomPlayerEntity(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomPlayerEntity].
extension RoomPlayerEntityPatterns on RoomPlayerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomPlayerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomPlayerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomPlayerEntity value)  $default,){
final _that = this;
switch (_that) {
case _RoomPlayerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomPlayerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RoomPlayerEntity() when $default != null:
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
case _RoomPlayerEntity() when $default != null:
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
case _RoomPlayerEntity():
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
case _RoomPlayerEntity() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _RoomPlayerEntity implements RoomPlayerEntity {
  const _RoomPlayerEntity({this.uid = '', this.name = '', this.avatar});
  

@override@JsonKey() final  String uid;
@override@JsonKey() final  String name;
@override final  String? avatar;

/// Create a copy of RoomPlayerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomPlayerEntityCopyWith<_RoomPlayerEntity> get copyWith => __$RoomPlayerEntityCopyWithImpl<_RoomPlayerEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomPlayerEntity&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar);
}

@override
String toString() {
    return 'RoomPlayerEntity(uid: $uid, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$RoomPlayerEntityCopyWith<$Res> implements $RoomPlayerEntityCopyWith<$Res> {
  factory _$RoomPlayerEntityCopyWith(_RoomPlayerEntity value, $Res Function(_RoomPlayerEntity) _then) = __$RoomPlayerEntityCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name, String? avatar
});




}
/// @nodoc
class __$RoomPlayerEntityCopyWithImpl<$Res>
    implements _$RoomPlayerEntityCopyWith<$Res> {
  __$RoomPlayerEntityCopyWithImpl(this._self, this._then);

  final _RoomPlayerEntity _self;
  final $Res Function(_RoomPlayerEntity) _then;

/// Create a copy of RoomPlayerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_RoomPlayerEntity(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
