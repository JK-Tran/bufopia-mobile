// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_player_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoomPlayerData {

@JsonKey(name: 'uid') String? get uid;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'avatar') String? get avatar;@JsonKey(name: 'score') int? get score;@JsonKey(name: 'foundCount') int? get foundCount;@JsonKey(name: 'isReady') bool? get isReady;@JsonKey(name: 'isHost') bool? get isHost;@JsonKey(name: 'ended') bool? get ended;@JsonKey(name: 'playerIndex') int? get playerIndex;@JsonKey(name: 'online') bool? get online;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomPlayerData&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.score, _this.score) || other.score == _this.score)&&(identical(other.foundCount, _this.foundCount) || other.foundCount == _this.foundCount)&&(identical(other.isReady, _this.isReady) || other.isReady == _this.isReady)&&(identical(other.isHost, _this.isHost) || other.isHost == _this.isHost)&&(identical(other.ended, _this.ended) || other.ended == _this.ended)&&(identical(other.playerIndex, _this.playerIndex) || other.playerIndex == _this.playerIndex)&&(identical(other.online, _this.online) || other.online == _this.online));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RoomPlayerData;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar,_this.score,_this.foundCount,_this.isReady,_this.isHost,_this.ended,_this.playerIndex,_this.online);
}

@override
String toString() {
  final _this = this as RoomPlayerData;
  return 'RoomPlayerData(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar}, score: ${_this.score}, foundCount: ${_this.foundCount}, isReady: ${_this.isReady}, isHost: ${_this.isHost}, ended: ${_this.ended}, playerIndex: ${_this.playerIndex}, online: ${_this.online})';
}


}

/// @nodoc
abstract mixin class $RoomPlayerDataCopyWith<$Res>  {
  factory $RoomPlayerDataCopyWith(RoomPlayerData value, $Res Function(RoomPlayerData) _then) = _$RoomPlayerDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar,@JsonKey(name: 'score') int? score,@JsonKey(name: 'foundCount') int? foundCount,@JsonKey(name: 'isReady') bool? isReady,@JsonKey(name: 'isHost') bool? isHost,@JsonKey(name: 'ended') bool? ended,@JsonKey(name: 'playerIndex') int? playerIndex,@JsonKey(name: 'online') bool? online
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
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? name = freezed,Object? avatar = freezed,Object? score = freezed,Object? foundCount = freezed,Object? isReady = freezed,Object? isHost = freezed,Object? ended = freezed,Object? playerIndex = freezed,Object? online = freezed,}) {
  return _then(RoomPlayerData(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,foundCount: freezed == foundCount ? _self.foundCount : foundCount // ignore: cast_nullable_to_non_nullable
as int?,isReady: freezed == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool?,isHost: freezed == isHost ? _self.isHost : isHost // ignore: cast_nullable_to_non_nullable
as bool?,ended: freezed == ended ? _self.ended : ended // ignore: cast_nullable_to_non_nullable
as bool?,playerIndex: freezed == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int?,online: freezed == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as bool?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'foundCount')  int? foundCount, @JsonKey(name: 'isReady')  bool? isReady, @JsonKey(name: 'isHost')  bool? isHost, @JsonKey(name: 'ended')  bool? ended, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'online')  bool? online)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoomPlayerData() when $default != null:
return $default(_that.uid,_that.name,_that.avatar,_that.score,_that.foundCount,_that.isReady,_that.isHost,_that.ended,_that.playerIndex,_that.online);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'foundCount')  int? foundCount, @JsonKey(name: 'isReady')  bool? isReady, @JsonKey(name: 'isHost')  bool? isHost, @JsonKey(name: 'ended')  bool? ended, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'online')  bool? online)  $default,) {final _that = this;
switch (_that) {
case _RoomPlayerData():
return $default(_that.uid,_that.name,_that.avatar,_that.score,_that.foundCount,_that.isReady,_that.isHost,_that.ended,_that.playerIndex,_that.online);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'score')  int? score, @JsonKey(name: 'foundCount')  int? foundCount, @JsonKey(name: 'isReady')  bool? isReady, @JsonKey(name: 'isHost')  bool? isHost, @JsonKey(name: 'ended')  bool? ended, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'online')  bool? online)?  $default,) {final _that = this;
switch (_that) {
case _RoomPlayerData() when $default != null:
return $default(_that.uid,_that.name,_that.avatar,_that.score,_that.foundCount,_that.isReady,_that.isHost,_that.ended,_that.playerIndex,_that.online);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RoomPlayerData extends RoomPlayerData {
  const _RoomPlayerData({@JsonKey(name: 'uid') this.uid, @JsonKey(name: 'name') this.name, @JsonKey(name: 'avatar') this.avatar, @JsonKey(name: 'score') this.score, @JsonKey(name: 'foundCount') this.foundCount, @JsonKey(name: 'isReady') this.isReady, @JsonKey(name: 'isHost') this.isHost, @JsonKey(name: 'ended') this.ended, @JsonKey(name: 'playerIndex') this.playerIndex, @JsonKey(name: 'online') this.online}): super._();
  factory _RoomPlayerData.fromJson(Map<String, dynamic> json) => _$RoomPlayerDataFromJson(json);

@override@JsonKey(name: 'uid') final  String? uid;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'avatar') final  String? avatar;
@override@JsonKey(name: 'score') final  int? score;
@override@JsonKey(name: 'foundCount') final  int? foundCount;
@override@JsonKey(name: 'isReady') final  bool? isReady;
@override@JsonKey(name: 'isHost') final  bool? isHost;
@override@JsonKey(name: 'ended') final  bool? ended;
@override@JsonKey(name: 'playerIndex') final  int? playerIndex;
@override@JsonKey(name: 'online') final  bool? online;

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
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoomPlayerData&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.score, score) || other.score == score)&&(identical(other.foundCount, foundCount) || other.foundCount == foundCount)&&(identical(other.isReady, isReady) || other.isReady == isReady)&&(identical(other.isHost, isHost) || other.isHost == isHost)&&(identical(other.ended, ended) || other.ended == ended)&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.online, online) || other.online == online));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar,score,foundCount,isReady,isHost,ended,playerIndex,online);
}

@override
String toString() {
    return 'RoomPlayerData(uid: $uid, name: $name, avatar: $avatar, score: $score, foundCount: $foundCount, isReady: $isReady, isHost: $isHost, ended: $ended, playerIndex: $playerIndex, online: $online)';
}


}

/// @nodoc
abstract mixin class _$RoomPlayerDataCopyWith<$Res> implements $RoomPlayerDataCopyWith<$Res> {
  factory _$RoomPlayerDataCopyWith(_RoomPlayerData value, $Res Function(_RoomPlayerData) _then) = __$RoomPlayerDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar,@JsonKey(name: 'score') int? score,@JsonKey(name: 'foundCount') int? foundCount,@JsonKey(name: 'isReady') bool? isReady,@JsonKey(name: 'isHost') bool? isHost,@JsonKey(name: 'ended') bool? ended,@JsonKey(name: 'playerIndex') int? playerIndex,@JsonKey(name: 'online') bool? online
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
@override @pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? name = freezed,Object? avatar = freezed,Object? score = freezed,Object? foundCount = freezed,Object? isReady = freezed,Object? isHost = freezed,Object? ended = freezed,Object? playerIndex = freezed,Object? online = freezed,}) {
  return _then(_RoomPlayerData(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int?,foundCount: freezed == foundCount ? _self.foundCount : foundCount // ignore: cast_nullable_to_non_nullable
as int?,isReady: freezed == isReady ? _self.isReady : isReady // ignore: cast_nullable_to_non_nullable
as bool?,isHost: freezed == isHost ? _self.isHost : isHost // ignore: cast_nullable_to_non_nullable
as bool?,ended: freezed == ended ? _self.ended : ended // ignore: cast_nullable_to_non_nullable
as bool?,playerIndex: freezed == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int?,online: freezed == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
