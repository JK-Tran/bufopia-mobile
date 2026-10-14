// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatchRecord {

 String get roomCode; int get playerIndex; String get rivalName; String get rivalAvatar; bool get relaxed; GameState? get state;
/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchRecordCopyWith<MatchRecord> get copyWith => _$MatchRecordCopyWithImpl<MatchRecord>(this as MatchRecord, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MatchRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchRecord&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.playerIndex, _this.playerIndex) || other.playerIndex == _this.playerIndex)&&(identical(other.rivalName, _this.rivalName) || other.rivalName == _this.rivalName)&&(identical(other.rivalAvatar, _this.rivalAvatar) || other.rivalAvatar == _this.rivalAvatar)&&(identical(other.relaxed, _this.relaxed) || other.relaxed == _this.relaxed)&&(identical(other.state, _this.state) || other.state == _this.state));
}


@override
int get hashCode {
  final _this = this as MatchRecord;
  return Object.hash(runtimeType,_this.roomCode,_this.playerIndex,_this.rivalName,_this.rivalAvatar,_this.relaxed,_this.state);
}

@override
String toString() {
  final _this = this as MatchRecord;
  return 'MatchRecord(roomCode: ${_this.roomCode}, playerIndex: ${_this.playerIndex}, rivalName: ${_this.rivalName}, rivalAvatar: ${_this.rivalAvatar}, relaxed: ${_this.relaxed}, state: ${_this.state})';
}


}

/// @nodoc
abstract mixin class $MatchRecordCopyWith<$Res>  {
  factory $MatchRecordCopyWith(MatchRecord value, $Res Function(MatchRecord) _then) = _$MatchRecordCopyWithImpl;
@useResult
$Res call({
 String roomCode, int playerIndex, String rivalName, String rivalAvatar, bool relaxed, GameState? state
});


$GameStateCopyWith<$Res>? get state;

}
/// @nodoc
class _$MatchRecordCopyWithImpl<$Res>
    implements $MatchRecordCopyWith<$Res> {
  _$MatchRecordCopyWithImpl(this._self, this._then);

  final MatchRecord _self;
  final $Res Function(MatchRecord) _then;

/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomCode = null,Object? playerIndex = null,Object? rivalName = null,Object? rivalAvatar = null,Object? relaxed = null,Object? state = freezed,}) {
  return _then(MatchRecord(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,rivalName: null == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String,rivalAvatar: null == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameState?,
  ));
}
/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateCopyWith<$Res>? get state {
    if (_self.state == null) {
    return null;
  }

  return $GameStateCopyWith<$Res>(_self.state!, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchRecord].
extension MatchRecordPatterns on MatchRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchRecord value)  $default,){
final _that = this;
switch (_that) {
case _MatchRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchRecord value)?  $default,){
final _that = this;
switch (_that) {
case _MatchRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomCode,  int playerIndex,  String rivalName,  String rivalAvatar,  bool relaxed,  GameState? state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchRecord() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomCode,  int playerIndex,  String rivalName,  String rivalAvatar,  bool relaxed,  GameState? state)  $default,) {final _that = this;
switch (_that) {
case _MatchRecord():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomCode,  int playerIndex,  String rivalName,  String rivalAvatar,  bool relaxed,  GameState? state)?  $default,) {final _that = this;
switch (_that) {
case _MatchRecord() when $default != null:
return $default(_that.roomCode,_that.playerIndex,_that.rivalName,_that.rivalAvatar,_that.relaxed,_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _MatchRecord implements MatchRecord {
  const _MatchRecord({this.roomCode = '', this.playerIndex = 0, this.rivalName = '', this.rivalAvatar = '', this.relaxed = false, this.state});
  

@override@JsonKey() final  String roomCode;
@override@JsonKey() final  int playerIndex;
@override@JsonKey() final  String rivalName;
@override@JsonKey() final  String rivalAvatar;
@override@JsonKey() final  bool relaxed;
@override final  GameState? state;

/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchRecordCopyWith<_MatchRecord> get copyWith => __$MatchRecordCopyWithImpl<_MatchRecord>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchRecord&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.playerIndex, playerIndex) || other.playerIndex == playerIndex)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar)&&(identical(other.relaxed, relaxed) || other.relaxed == relaxed)&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,playerIndex,rivalName,rivalAvatar,relaxed,state);
}

@override
String toString() {
    return 'MatchRecord(roomCode: $roomCode, playerIndex: $playerIndex, rivalName: $rivalName, rivalAvatar: $rivalAvatar, relaxed: $relaxed, state: $state)';
}


}

/// @nodoc
abstract mixin class _$MatchRecordCopyWith<$Res> implements $MatchRecordCopyWith<$Res> {
  factory _$MatchRecordCopyWith(_MatchRecord value, $Res Function(_MatchRecord) _then) = __$MatchRecordCopyWithImpl;
@override @useResult
$Res call({
 String roomCode, int playerIndex, String rivalName, String rivalAvatar, bool relaxed, GameState? state
});


@override $GameStateCopyWith<$Res>? get state;

}
/// @nodoc
class __$MatchRecordCopyWithImpl<$Res>
    implements _$MatchRecordCopyWith<$Res> {
  __$MatchRecordCopyWithImpl(this._self, this._then);

  final _MatchRecord _self;
  final $Res Function(_MatchRecord) _then;

/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomCode = null,Object? playerIndex = null,Object? rivalName = null,Object? rivalAvatar = null,Object? relaxed = null,Object? state = freezed,}) {
  return _then(_MatchRecord(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,playerIndex: null == playerIndex ? _self.playerIndex : playerIndex // ignore: cast_nullable_to_non_nullable
as int,rivalName: null == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String,rivalAvatar: null == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as GameState?,
  ));
}

/// Create a copy of MatchRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStateCopyWith<$Res>? get state {
    if (_self.state == null) {
    return null;
  }

  return $GameStateCopyWith<$Res>(_self.state!, (value) {
    return _then(_self.copyWith(state: value));
  });
}
}

// dart format on
