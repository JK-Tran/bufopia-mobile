// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_room_info_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetRoomInfoInput {

 String get roomCode;
/// Create a copy of GetRoomInfoInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRoomInfoInputCopyWith<GetRoomInfoInput> get copyWith => _$GetRoomInfoInputCopyWithImpl<GetRoomInfoInput>(this as GetRoomInfoInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetRoomInfoInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRoomInfoInput&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode));
}


@override
int get hashCode {
  final _this = this as GetRoomInfoInput;
  return Object.hash(runtimeType,_this.roomCode);
}

@override
String toString() {
  final _this = this as GetRoomInfoInput;
  return 'GetRoomInfoInput(roomCode: ${_this.roomCode})';
}


}

/// @nodoc
abstract mixin class $GetRoomInfoInputCopyWith<$Res>  {
  factory $GetRoomInfoInputCopyWith(GetRoomInfoInput value, $Res Function(GetRoomInfoInput) _then) = _$GetRoomInfoInputCopyWithImpl;
@useResult
$Res call({
 String roomCode
});




}
/// @nodoc
class _$GetRoomInfoInputCopyWithImpl<$Res>
    implements $GetRoomInfoInputCopyWith<$Res> {
  _$GetRoomInfoInputCopyWithImpl(this._self, this._then);

  final GetRoomInfoInput _self;
  final $Res Function(GetRoomInfoInput) _then;

/// Create a copy of GetRoomInfoInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomCode = null,}) {
  return _then(GetRoomInfoInput(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetRoomInfoInput].
extension GetRoomInfoInputPatterns on GetRoomInfoInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetRoomInfoInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetRoomInfoInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetRoomInfoInput value)  $default,){
final _that = this;
switch (_that) {
case _GetRoomInfoInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetRoomInfoInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetRoomInfoInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetRoomInfoInput() when $default != null:
return $default(_that.roomCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomCode)  $default,) {final _that = this;
switch (_that) {
case _GetRoomInfoInput():
return $default(_that.roomCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomCode)?  $default,) {final _that = this;
switch (_that) {
case _GetRoomInfoInput() when $default != null:
return $default(_that.roomCode);case _:
  return null;

}
}

}

/// @nodoc


class _GetRoomInfoInput extends GetRoomInfoInput {
  const _GetRoomInfoInput({required this.roomCode}): super._();
  

@override final  String roomCode;

/// Create a copy of GetRoomInfoInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRoomInfoInputCopyWith<_GetRoomInfoInput> get copyWith => __$GetRoomInfoInputCopyWithImpl<_GetRoomInfoInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRoomInfoInput&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode);
}

@override
String toString() {
    return 'GetRoomInfoInput(roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class _$GetRoomInfoInputCopyWith<$Res> implements $GetRoomInfoInputCopyWith<$Res> {
  factory _$GetRoomInfoInputCopyWith(_GetRoomInfoInput value, $Res Function(_GetRoomInfoInput) _then) = __$GetRoomInfoInputCopyWithImpl;
@override @useResult
$Res call({
 String roomCode
});




}
/// @nodoc
class __$GetRoomInfoInputCopyWithImpl<$Res>
    implements _$GetRoomInfoInputCopyWith<$Res> {
  __$GetRoomInfoInputCopyWithImpl(this._self, this._then);

  final _GetRoomInfoInput _self;
  final $Res Function(_GetRoomInfoInput) _then;

/// Create a copy of GetRoomInfoInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomCode = null,}) {
  return _then(_GetRoomInfoInput(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetRoomInfoOutput {

 RoomInfo? get roomInfo;
/// Create a copy of GetRoomInfoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRoomInfoOutputCopyWith<GetRoomInfoOutput> get copyWith => _$GetRoomInfoOutputCopyWithImpl<GetRoomInfoOutput>(this as GetRoomInfoOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetRoomInfoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRoomInfoOutput&&(identical(other.roomInfo, _this.roomInfo) || other.roomInfo == _this.roomInfo));
}


@override
int get hashCode {
  final _this = this as GetRoomInfoOutput;
  return Object.hash(runtimeType,_this.roomInfo);
}

@override
String toString() {
  final _this = this as GetRoomInfoOutput;
  return 'GetRoomInfoOutput(roomInfo: ${_this.roomInfo})';
}


}

/// @nodoc
abstract mixin class $GetRoomInfoOutputCopyWith<$Res>  {
  factory $GetRoomInfoOutputCopyWith(GetRoomInfoOutput value, $Res Function(GetRoomInfoOutput) _then) = _$GetRoomInfoOutputCopyWithImpl;
@useResult
$Res call({
 RoomInfo? roomInfo
});


$RoomInfoCopyWith<$Res>? get roomInfo;

}
/// @nodoc
class _$GetRoomInfoOutputCopyWithImpl<$Res>
    implements $GetRoomInfoOutputCopyWith<$Res> {
  _$GetRoomInfoOutputCopyWithImpl(this._self, this._then);

  final GetRoomInfoOutput _self;
  final $Res Function(GetRoomInfoOutput) _then;

/// Create a copy of GetRoomInfoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomInfo = freezed,}) {
  return _then(GetRoomInfoOutput(
roomInfo: freezed == roomInfo ? _self.roomInfo : roomInfo // ignore: cast_nullable_to_non_nullable
as RoomInfo?,
  ));
}
/// Create a copy of GetRoomInfoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomInfoCopyWith<$Res>? get roomInfo {
    if (_self.roomInfo == null) {
    return null;
  }

  return $RoomInfoCopyWith<$Res>(_self.roomInfo!, (value) {
    return _then(_self.copyWith(roomInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetRoomInfoOutput].
extension GetRoomInfoOutputPatterns on GetRoomInfoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetRoomInfoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetRoomInfoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetRoomInfoOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetRoomInfoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetRoomInfoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetRoomInfoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RoomInfo? roomInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetRoomInfoOutput() when $default != null:
return $default(_that.roomInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RoomInfo? roomInfo)  $default,) {final _that = this;
switch (_that) {
case _GetRoomInfoOutput():
return $default(_that.roomInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RoomInfo? roomInfo)?  $default,) {final _that = this;
switch (_that) {
case _GetRoomInfoOutput() when $default != null:
return $default(_that.roomInfo);case _:
  return null;

}
}

}

/// @nodoc


class _GetRoomInfoOutput extends GetRoomInfoOutput {
  const _GetRoomInfoOutput({this.roomInfo}): super._();
  

@override final  RoomInfo? roomInfo;

/// Create a copy of GetRoomInfoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRoomInfoOutputCopyWith<_GetRoomInfoOutput> get copyWith => __$GetRoomInfoOutputCopyWithImpl<_GetRoomInfoOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRoomInfoOutput&&(identical(other.roomInfo, roomInfo) || other.roomInfo == roomInfo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomInfo);
}

@override
String toString() {
    return 'GetRoomInfoOutput(roomInfo: $roomInfo)';
}


}

/// @nodoc
abstract mixin class _$GetRoomInfoOutputCopyWith<$Res> implements $GetRoomInfoOutputCopyWith<$Res> {
  factory _$GetRoomInfoOutputCopyWith(_GetRoomInfoOutput value, $Res Function(_GetRoomInfoOutput) _then) = __$GetRoomInfoOutputCopyWithImpl;
@override @useResult
$Res call({
 RoomInfo? roomInfo
});


@override $RoomInfoCopyWith<$Res>? get roomInfo;

}
/// @nodoc
class __$GetRoomInfoOutputCopyWithImpl<$Res>
    implements _$GetRoomInfoOutputCopyWith<$Res> {
  __$GetRoomInfoOutputCopyWithImpl(this._self, this._then);

  final _GetRoomInfoOutput _self;
  final $Res Function(_GetRoomInfoOutput) _then;

/// Create a copy of GetRoomInfoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomInfo = freezed,}) {
  return _then(_GetRoomInfoOutput(
roomInfo: freezed == roomInfo ? _self.roomInfo : roomInfo // ignore: cast_nullable_to_non_nullable
as RoomInfo?,
  ));
}

/// Create a copy of GetRoomInfoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoomInfoCopyWith<$Res>? get roomInfo {
    if (_self.roomInfo == null) {
    return null;
  }

  return $RoomInfoCopyWith<$Res>(_self.roomInfo!, (value) {
    return _then(_self.copyWith(roomInfo: value));
  });
}
}

// dart format on
