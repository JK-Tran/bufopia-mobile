// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomInfoData {

@JsonKey(name: 'roomCode') String? get roomCode;@JsonKey(name: 'matchId') String? get matchId;@JsonKey(name: 'hostUid') String? get hostUid;@JsonKey(name: 'hostName') String? get hostName;@JsonKey(name: 'topicId') String? get topicId;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'players') List<RoomPlayerData>? get players;
/// Create a copy of RoomInfoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomInfoDataCopyWith<RoomInfoData> get copyWith => _$RoomInfoDataCopyWithImpl<RoomInfoData>(this as RoomInfoData, _$identity);

  /// Serializes this RoomInfoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RoomInfoData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomInfoData&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.matchId, _this.matchId) || other.matchId == _this.matchId)&&(identical(other.hostUid, _this.hostUid) || other.hostUid == _this.hostUid)&&(identical(other.hostName, _this.hostName) || other.hostName == _this.hostName)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.players, _this.players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RoomInfoData;
  return Object.hash(runtimeType,_this.roomCode,_this.matchId,_this.hostUid,_this.hostName,_this.topicId,_this.status,const DeepCollectionEquality().hash(_this.players));
}

@override
String toString() {
  final _this = this as RoomInfoData;
  return 'RoomInfoData(roomCode: ${_this.roomCode}, matchId: ${_this.matchId}, hostUid: ${_this.hostUid}, hostName: ${_this.hostName}, topicId: ${_this.topicId}, status: ${_this.status}, players: ${_this.players})';
}


}

/// @nodoc
abstract mixin class $RoomInfoDataCopyWith<$Res>  {
  factory $RoomInfoDataCopyWith(RoomInfoData value, $Res Function(RoomInfoData) _then) = _$RoomInfoDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'matchId') String? matchId,@JsonKey(name: 'hostUid') String? hostUid,@JsonKey(name: 'hostName') String? hostName,@JsonKey(name: 'topicId') String? topicId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'players') List<RoomPlayerData>? players
});




}
/// @nodoc
class _$RoomInfoDataCopyWithImpl<$Res>
    implements $RoomInfoDataCopyWith<$Res> {
  _$RoomInfoDataCopyWithImpl(this._self, this._then);

  final RoomInfoData _self;
  final $Res Function(RoomInfoData) _then;

/// Create a copy of RoomInfoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomCode = freezed,Object? matchId = freezed,Object? hostUid = freezed,Object? hostName = freezed,Object? topicId = freezed,Object? status = freezed,Object? players = freezed,}) {
  return _then(RoomInfoData(
roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,matchId: freezed == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String?,hostUid: freezed == hostUid ? _self.hostUid : hostUid // ignore: cast_nullable_to_non_nullable
as String?,hostName: freezed == hostName ? _self.hostName : hostName // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,players: freezed == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayerData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomInfoData].
extension RoomInfoDataPatterns on RoomInfoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomInfoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomInfoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomInfoData value)  $default,){
final _that = this;
switch (_that) {
case _RoomInfoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomInfoData value)?  $default,){
final _that = this;
switch (_that) {
case _RoomInfoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'matchId')  String? matchId, @JsonKey(name: 'hostUid')  String? hostUid, @JsonKey(name: 'hostName')  String? hostName, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'players')  List<RoomPlayerData>? players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomInfoData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'matchId')  String? matchId, @JsonKey(name: 'hostUid')  String? hostUid, @JsonKey(name: 'hostName')  String? hostName, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'players')  List<RoomPlayerData>? players)  $default,) {final _that = this;
switch (_that) {
case _RoomInfoData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'matchId')  String? matchId, @JsonKey(name: 'hostUid')  String? hostUid, @JsonKey(name: 'hostName')  String? hostName, @JsonKey(name: 'topicId')  String? topicId, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'players')  List<RoomPlayerData>? players)?  $default,) {final _that = this;
switch (_that) {
case _RoomInfoData() when $default != null:
return $default(_that.roomCode,_that.matchId,_that.hostUid,_that.hostName,_that.topicId,_that.status,_that.players);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomInfoData extends RoomInfoData {
  const _RoomInfoData({@JsonKey(name: 'roomCode') this.roomCode, @JsonKey(name: 'matchId') this.matchId, @JsonKey(name: 'hostUid') this.hostUid, @JsonKey(name: 'hostName') this.hostName, @JsonKey(name: 'topicId') this.topicId, @JsonKey(name: 'status') this.status, @JsonKey(name: 'players')  List<RoomPlayerData>? players}): _players = players,super._();
  factory _RoomInfoData.fromJson(Map<String, dynamic> json) => _$RoomInfoDataFromJson(json);

@override@JsonKey(name: 'roomCode') final  String? roomCode;
@override@JsonKey(name: 'matchId') final  String? matchId;
@override@JsonKey(name: 'hostUid') final  String? hostUid;
@override@JsonKey(name: 'hostName') final  String? hostName;
@override@JsonKey(name: 'topicId') final  String? topicId;
@override@JsonKey(name: 'status') final  String? status;
 final  List<RoomPlayerData>? _players;
@override@JsonKey(name: 'players') List<RoomPlayerData>? get players {
  final value = _players;
  if (value == null) return null;
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RoomInfoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomInfoDataCopyWith<_RoomInfoData> get copyWith => __$RoomInfoDataCopyWithImpl<_RoomInfoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomInfoDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomInfoData&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.matchId, matchId) || other.matchId == matchId)&&(identical(other.hostUid, hostUid) || other.hostUid == hostUid)&&(identical(other.hostName, hostName) || other.hostName == hostName)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.players, _players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,matchId,hostUid,hostName,topicId,status,const DeepCollectionEquality().hash(_players));
}

@override
String toString() {
    return 'RoomInfoData(roomCode: $roomCode, matchId: $matchId, hostUid: $hostUid, hostName: $hostName, topicId: $topicId, status: $status, players: $players)';
}


}

/// @nodoc
abstract mixin class _$RoomInfoDataCopyWith<$Res> implements $RoomInfoDataCopyWith<$Res> {
  factory _$RoomInfoDataCopyWith(_RoomInfoData value, $Res Function(_RoomInfoData) _then) = __$RoomInfoDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'matchId') String? matchId,@JsonKey(name: 'hostUid') String? hostUid,@JsonKey(name: 'hostName') String? hostName,@JsonKey(name: 'topicId') String? topicId,@JsonKey(name: 'status') String? status,@JsonKey(name: 'players') List<RoomPlayerData>? players
});




}
/// @nodoc
class __$RoomInfoDataCopyWithImpl<$Res>
    implements _$RoomInfoDataCopyWith<$Res> {
  __$RoomInfoDataCopyWithImpl(this._self, this._then);

  final _RoomInfoData _self;
  final $Res Function(_RoomInfoData) _then;

/// Create a copy of RoomInfoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomCode = freezed,Object? matchId = freezed,Object? hostUid = freezed,Object? hostName = freezed,Object? topicId = freezed,Object? status = freezed,Object? players = freezed,}) {
  return _then(_RoomInfoData(
roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,matchId: freezed == matchId ? _self.matchId : matchId // ignore: cast_nullable_to_non_nullable
as String?,hostUid: freezed == hostUid ? _self.hostUid : hostUid // ignore: cast_nullable_to_non_nullable
as String?,hostName: freezed == hostName ? _self.hostName : hostName // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,players: freezed == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<RoomPlayerData>?,
  ));
}


}


/// @nodoc
mixin _$RoomPlayerData {

@JsonKey(name: 'uid') String? get uid;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'avatar') String? get avatar;
/// Create a copy of RoomPlayerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomPlayerDataCopyWith<RoomPlayerData> get copyWith => _$RoomPlayerDataCopyWithImpl<RoomPlayerData>(this as RoomPlayerData, _$identity);

  /// Serializes this RoomPlayerData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RoomPlayerData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomPlayerData&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RoomPlayerData;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar);
}

@override
String toString() {
  final _this = this as RoomPlayerData;
  return 'RoomPlayerData(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $RoomPlayerDataCopyWith<$Res>  {
  factory $RoomPlayerDataCopyWith(RoomPlayerData value, $Res Function(RoomPlayerData) _then) = _$RoomPlayerDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar
});




}
/// @nodoc
class _$RoomPlayerDataCopyWithImpl<$Res>
    implements $RoomPlayerDataCopyWith<$Res> {
  _$RoomPlayerDataCopyWithImpl(this._self, this._then);

  final RoomPlayerData _self;
  final $Res Function(RoomPlayerData) _then;

/// Create a copy of RoomPlayerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? name = freezed,Object? avatar = freezed,}) {
  return _then(RoomPlayerData(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoomPlayerData].
extension RoomPlayerDataPatterns on RoomPlayerData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoomPlayerData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoomPlayerData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoomPlayerData value)  $default,){
final _that = this;
switch (_that) {
case _RoomPlayerData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoomPlayerData value)?  $default,){
final _that = this;
switch (_that) {
case _RoomPlayerData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomPlayerData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _RoomPlayerData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _RoomPlayerData() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomPlayerData extends RoomPlayerData {
  const _RoomPlayerData({@JsonKey(name: 'uid') this.uid, @JsonKey(name: 'name') this.name, @JsonKey(name: 'avatar') this.avatar}): super._();
  factory _RoomPlayerData.fromJson(Map<String, dynamic> json) => _$RoomPlayerDataFromJson(json);

@override@JsonKey(name: 'uid') final  String? uid;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'avatar') final  String? avatar;

/// Create a copy of RoomPlayerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoomPlayerDataCopyWith<_RoomPlayerData> get copyWith => __$RoomPlayerDataCopyWithImpl<_RoomPlayerData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoomPlayerDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomPlayerData&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar);
}

@override
String toString() {
    return 'RoomPlayerData(uid: $uid, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$RoomPlayerDataCopyWith<$Res> implements $RoomPlayerDataCopyWith<$Res> {
  factory _$RoomPlayerDataCopyWith(_RoomPlayerData value, $Res Function(_RoomPlayerData) _then) = __$RoomPlayerDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar
});




}
/// @nodoc
class __$RoomPlayerDataCopyWithImpl<$Res>
    implements _$RoomPlayerDataCopyWith<$Res> {
  __$RoomPlayerDataCopyWithImpl(this._self, this._then);

  final _RoomPlayerData _self;
  final $Res Function(_RoomPlayerData) _then;

/// Create a copy of RoomPlayerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? name = freezed,Object? avatar = freezed,}) {
  return _then(_RoomPlayerData(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
