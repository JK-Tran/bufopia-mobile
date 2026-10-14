// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_record_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchRecordData {

@JsonKey(name: 'roomCode') String? get roomCode;@JsonKey(name: 'playerIndex') int? get playerIndex;@JsonKey(name: 'rivalName') String? get rivalName;@JsonKey(name: 'rivalAvatar') String? get rivalAvatar;@JsonKey(name: 'relaxed') bool? get relaxed;@JsonKey(name: 'state') GameStateData? get state;
/// Create a copy of MatchRecordData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchRecordDataCopyWith<MatchRecordData> get copyWith => _$MatchRecordDataCopyWithImpl<MatchRecordData>(this as MatchRecordData, _$identity);

  /// Serializes this MatchRecordData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MatchRecordData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRecordData&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.playerIndex, _this.playerIndex) || other.playerIndex == _this.playerIndex)&&(identical(other.rivalName, _this.rivalName) || other.rivalName == _this.rivalName)&&(identical(other.rivalAvatar, _this.rivalAvatar) || other.rivalAvatar == _this.rivalAvatar)&&(identical(other.relaxed, _this.relaxed) || other.relaxed == _this.relaxed)&&(identical(other.state, _this.state) || other.state == _this.state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MatchRecordData;
  return Object.hash(runtimeType,_this.roomCode,_this.playerIndex,_this.rivalName,_this.rivalAvatar,_this.relaxed,_this.state);
}

@override
String toString() {
  final _this = this as MatchRecordData;
  return 'MatchRecordData(roomCode: ${_this.roomCode}, playerIndex: ${_this.playerIndex}, rivalName: ${_this.rivalName}, rivalAvatar: ${_this.rivalAvatar}, relaxed: ${_this.relaxed}, state: ${_this.state})';
}


}

/// @nodoc
abstract mixin class $MatchRecordDataCopyWith<$Res>  {
  factory $MatchRecordDataCopyWith(MatchRecordData value, $Res Function(MatchRecordData) _then) = _$MatchRecordDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'playerIndex') int? playerIndex,@JsonKey(name: 'rivalName') String? rivalName,@JsonKey(name: 'rivalAvatar') String? rivalAvatar,@JsonKey(name: 'relaxed') bool? relaxed,@JsonKey(name: 'state') GameStateData? state
});


$GameStateDataCopyWith<$Res>? get state;

}
/// @nodoc
class _$MatchRecordDataCopyWithImpl<$Res>
    implements $MatchRecordDataCopyWith<$Res> {
  _$MatchRecordDataCopyWithImpl(this._self, this._then);

  final MatchRecordData _self;
  final $Res Function(MatchRecordData) _then;

/// Create a copy of MatchRecordData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomCode = freezed,Object? playerIndex = freezed,Object? rivalName = freezed,Object? rivalAvatar = freezed,Object? relaxed = freezed,Object? state = freezed,}) {
  return _then(MatchRecordData(
roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,playerIndex: freezed == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int?,rivalName: freezed == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String?,rivalAvatar: freezed == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String?,relaxed: freezed == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameStateData?,
  ));
}
/// Create a copy of MatchRecordData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateDataCopyWith<$Res>? get state {
    if (_self.state == null) {
    return null;
  }

  return $GameStateDataCopyWith<$Res>(_self.state!, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchRecordData].
extension MatchRecordDataPatterns on MatchRecordData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchRecordData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchRecordData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchRecordData value)  $default,){
final _that = this;
switch (_that) {
case _MatchRecordData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchRecordData value)?  $default,){
final _that = this;
switch (_that) {
case _MatchRecordData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'rivalName')  String? rivalName, @JsonKey(name: 'rivalAvatar')  String? rivalAvatar, @JsonKey(name: 'relaxed')  bool? relaxed, @JsonKey(name: 'state')  GameStateData? state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchRecordData() when $default != null:
return $default(_that.roomCode,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.relaxed,_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'rivalName')  String? rivalName, @JsonKey(name: 'rivalAvatar')  String? rivalAvatar, @JsonKey(name: 'relaxed')  bool? relaxed, @JsonKey(name: 'state')  GameStateData? state)  $default,) {final _that = this;
switch (_that) {
case _MatchRecordData():
return $default(_that.roomCode,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.relaxed,_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'playerIndex')  int? playerIndex, @JsonKey(name: 'rivalName')  String? rivalName, @JsonKey(name: 'rivalAvatar')  String? rivalAvatar, @JsonKey(name: 'relaxed')  bool? relaxed, @JsonKey(name: 'state')  GameStateData? state)?  $default,) {final _that = this;
switch (_that) {
case _MatchRecordData() when $default != null:
return $default(_that.roomCode,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.relaxed,_that.state);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchRecordData extends MatchRecordData {
  const _MatchRecordData({@JsonKey(name: 'roomCode') this.roomCode, @JsonKey(name: 'playerIndex') this.playerIndex, @JsonKey(name: 'rivalName') this.rivalName, @JsonKey(name: 'rivalAvatar') this.rivalAvatar, @JsonKey(name: 'relaxed') this.relaxed, @JsonKey(name: 'state') this.state}): super._();
  factory _MatchRecordData.fromJson(Map<String, dynamic> json) => _$MatchRecordDataFromJson(json);

@override@JsonKey(name: 'roomCode') final  String? roomCode;
@override@JsonKey(name: 'playerIndex') final  int? playerIndex;
@override@JsonKey(name: 'rivalName') final  String? rivalName;
@override@JsonKey(name: 'rivalAvatar') final  String? rivalAvatar;
@override@JsonKey(name: 'relaxed') final  bool? relaxed;
@override@JsonKey(name: 'state') final  GameStateData? state;

/// Create a copy of MatchRecordData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchRecordDataCopyWith<_MatchRecordData> get copyWith => __$MatchRecordDataCopyWithImpl<_MatchRecordData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchRecordDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchRecordData&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar)&&(identical(other.relaxed, relaxed) || other.relaxed == relaxed)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,playerIndex,rivalName,rivalAvatar,relaxed,state);
}

@override
String toString() {
    return 'MatchRecordData(roomCode: $roomCode, playerIndex: $playerIndex, rivalName: $rivalName, rivalAvatar: $rivalAvatar, relaxed: $relaxed, state: $state)';
}


}

/// @nodoc
abstract mixin class _$MatchRecordDataCopyWith<$Res> implements $MatchRecordDataCopyWith<$Res> {
  factory _$MatchRecordDataCopyWith(_MatchRecordData value, $Res Function(_MatchRecordData) _then) = __$MatchRecordDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'playerIndex') int? playerIndex,@JsonKey(name: 'rivalName') String? rivalName,@JsonKey(name: 'rivalAvatar') String? rivalAvatar,@JsonKey(name: 'relaxed') bool? relaxed,@JsonKey(name: 'state') GameStateData? state
});


@override $GameStateDataCopyWith<$Res>? get state;

}
/// @nodoc
class __$MatchRecordDataCopyWithImpl<$Res>
    implements _$MatchRecordDataCopyWith<$Res> {
  __$MatchRecordDataCopyWithImpl(this._self, this._then);

  final _MatchRecordData _self;
  final $Res Function(_MatchRecordData) _then;

/// Create a copy of MatchRecordData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomCode = freezed,Object? playerIndex = freezed,Object? rivalName = freezed,Object? rivalAvatar = freezed,Object? relaxed = freezed,Object? state = freezed,}) {
  return _then(_MatchRecordData(
roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,playerIndex: freezed == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int?,rivalName: freezed == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String?,rivalAvatar: freezed == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String?,relaxed: freezed == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameStateData?,
  ));
}

/// Create a copy of MatchRecordData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateDataCopyWith<$Res>? get state {
    if (_self.state == null) {
    return null;
  }

  return $GameStateDataCopyWith<$Res>(_self.state!, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

// dart format on
