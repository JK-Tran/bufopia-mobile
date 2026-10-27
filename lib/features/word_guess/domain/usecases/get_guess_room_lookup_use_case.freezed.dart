// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_guess_room_lookup_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetGuessRoomLookupInput {

 String get roomCode; String get uid; String? get token;
/// Create a copy of GetGuessRoomLookupInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGuessRoomLookupInputCopyWith<GetGuessRoomLookupInput> get copyWith => _$GetGuessRoomLookupInputCopyWithImpl<GetGuessRoomLookupInput>(this as GetGuessRoomLookupInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetGuessRoomLookupInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGuessRoomLookupInput&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as GetGuessRoomLookupInput;
  return Object.hash(runtimeType,_this.roomCode,_this.uid,_this.token);
}

@override
String toString() {
  final _this = this as GetGuessRoomLookupInput;
  return 'GetGuessRoomLookupInput(roomCode: ${_this.roomCode}, uid: ${_this.uid}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $GetGuessRoomLookupInputCopyWith<$Res>  {
  factory $GetGuessRoomLookupInputCopyWith(GetGuessRoomLookupInput value, $Res Function(GetGuessRoomLookupInput) _then) = _$GetGuessRoomLookupInputCopyWithImpl;
@useResult
$Res call({
 String roomCode, String uid, String? token
});




}
/// @nodoc
class _$GetGuessRoomLookupInputCopyWithImpl<$Res>
    implements $GetGuessRoomLookupInputCopyWith<$Res> {
  _$GetGuessRoomLookupInputCopyWithImpl(this._self, this._then);

  final GetGuessRoomLookupInput _self;
  final $Res Function(GetGuessRoomLookupInput) _then;

/// Create a copy of GetGuessRoomLookupInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomCode = null,Object? uid = null,Object? token = freezed,}) {
  return _then(GetGuessRoomLookupInput(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGuessRoomLookupInput].
extension GetGuessRoomLookupInputPatterns on GetGuessRoomLookupInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGuessRoomLookupInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGuessRoomLookupInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGuessRoomLookupInput value)  $default,){
final _that = this;
switch (_that) {
case _GetGuessRoomLookupInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGuessRoomLookupInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetGuessRoomLookupInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roomCode,  String uid,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGuessRoomLookupInput() when $default != null:
return $default(_that.roomCode,_that.uid,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roomCode,  String uid,  String? token)  $default,) {final _that = this;
switch (_that) {
case _GetGuessRoomLookupInput():
return $default(_that.roomCode,_that.uid,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roomCode,  String uid,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _GetGuessRoomLookupInput() when $default != null:
return $default(_that.roomCode,_that.uid,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _GetGuessRoomLookupInput extends GetGuessRoomLookupInput {
  const _GetGuessRoomLookupInput({required this.roomCode, required this.uid, this.token}): super._();
  

@override final  String roomCode;
@override final  String uid;
@override final  String? token;

/// Create a copy of GetGuessRoomLookupInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGuessRoomLookupInputCopyWith<_GetGuessRoomLookupInput> get copyWith => __$GetGuessRoomLookupInputCopyWithImpl<_GetGuessRoomLookupInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGuessRoomLookupInput&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode,uid,token);
}

@override
String toString() {
    return 'GetGuessRoomLookupInput(roomCode: $roomCode, uid: $uid, token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetGuessRoomLookupInputCopyWith<$Res> implements $GetGuessRoomLookupInputCopyWith<$Res> {
  factory _$GetGuessRoomLookupInputCopyWith(_GetGuessRoomLookupInput value, $Res Function(_GetGuessRoomLookupInput) _then) = __$GetGuessRoomLookupInputCopyWithImpl;
@override @useResult
$Res call({
 String roomCode, String uid, String? token
});




}
/// @nodoc
class __$GetGuessRoomLookupInputCopyWithImpl<$Res>
    implements _$GetGuessRoomLookupInputCopyWith<$Res> {
  __$GetGuessRoomLookupInputCopyWithImpl(this._self, this._then);

  final _GetGuessRoomLookupInput _self;
  final $Res Function(_GetGuessRoomLookupInput) _then;

/// Create a copy of GetGuessRoomLookupInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomCode = null,Object? uid = null,Object? token = freezed,}) {
  return _then(_GetGuessRoomLookupInput(
roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$GetGuessRoomLookupOutput {

 bool get isJoinable; String? get reason; Map<String, dynamic>? get rawResponse;
/// Create a copy of GetGuessRoomLookupOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGuessRoomLookupOutputCopyWith<GetGuessRoomLookupOutput> get copyWith => _$GetGuessRoomLookupOutputCopyWithImpl<GetGuessRoomLookupOutput>(this as GetGuessRoomLookupOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetGuessRoomLookupOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGuessRoomLookupOutput&&(identical(other.isJoinable, _this.isJoinable) || other.isJoinable == _this.isJoinable)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&const DeepCollectionEquality().equals(other.rawResponse, _this.rawResponse));
}


@override
int get hashCode {
  final _this = this as GetGuessRoomLookupOutput;
  return Object.hash(runtimeType,_this.isJoinable,_this.reason,const DeepCollectionEquality().hash(_this.rawResponse));
}

@override
String toString() {
  final _this = this as GetGuessRoomLookupOutput;
  return 'GetGuessRoomLookupOutput(isJoinable: ${_this.isJoinable}, reason: ${_this.reason}, rawResponse: ${_this.rawResponse})';
}


}

/// @nodoc
abstract mixin class $GetGuessRoomLookupOutputCopyWith<$Res>  {
  factory $GetGuessRoomLookupOutputCopyWith(GetGuessRoomLookupOutput value, $Res Function(GetGuessRoomLookupOutput) _then) = _$GetGuessRoomLookupOutputCopyWithImpl;
@useResult
$Res call({
 bool isJoinable, String? reason, Map<String, dynamic>? rawResponse
});




}
/// @nodoc
class _$GetGuessRoomLookupOutputCopyWithImpl<$Res>
    implements $GetGuessRoomLookupOutputCopyWith<$Res> {
  _$GetGuessRoomLookupOutputCopyWithImpl(this._self, this._then);

  final GetGuessRoomLookupOutput _self;
  final $Res Function(GetGuessRoomLookupOutput) _then;

/// Create a copy of GetGuessRoomLookupOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isJoinable = null,Object? reason = freezed,Object? rawResponse = freezed,}) {
  return _then(GetGuessRoomLookupOutput(
isJoinable: null == isJoinable ? _self.isJoinable : isJoinable // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,rawResponse: freezed == rawResponse ? _self.rawResponse : rawResponse // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGuessRoomLookupOutput].
extension GetGuessRoomLookupOutputPatterns on GetGuessRoomLookupOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGuessRoomLookupOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGuessRoomLookupOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGuessRoomLookupOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetGuessRoomLookupOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGuessRoomLookupOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetGuessRoomLookupOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isJoinable,  String? reason,  Map<String, dynamic>? rawResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGuessRoomLookupOutput() when $default != null:
return $default(_that.isJoinable,_that.reason,_that.rawResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isJoinable,  String? reason,  Map<String, dynamic>? rawResponse)  $default,) {final _that = this;
switch (_that) {
case _GetGuessRoomLookupOutput():
return $default(_that.isJoinable,_that.reason,_that.rawResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isJoinable,  String? reason,  Map<String, dynamic>? rawResponse)?  $default,) {final _that = this;
switch (_that) {
case _GetGuessRoomLookupOutput() when $default != null:
return $default(_that.isJoinable,_that.reason,_that.rawResponse);case _:
  return null;

}
}

}

/// @nodoc


class _GetGuessRoomLookupOutput extends GetGuessRoomLookupOutput {
  const _GetGuessRoomLookupOutput({this.isJoinable = false, this.reason,  Map<String, dynamic>? rawResponse}): _rawResponse = rawResponse,super._();
  

@override@JsonKey() final  bool isJoinable;
@override final  String? reason;
 final  Map<String, dynamic>? _rawResponse;
@override Map<String, dynamic>? get rawResponse {
  final value = _rawResponse;
  if (value == null) return null;
  if (_rawResponse is EqualUnmodifiableMapView) return _rawResponse;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of GetGuessRoomLookupOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGuessRoomLookupOutputCopyWith<_GetGuessRoomLookupOutput> get copyWith => __$GetGuessRoomLookupOutputCopyWithImpl<_GetGuessRoomLookupOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGuessRoomLookupOutput&&(identical(other.isJoinable, isJoinable) || other.isJoinable == isJoinable)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.rawResponse, _rawResponse));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isJoinable,reason,const DeepCollectionEquality().hash(_rawResponse));
}

@override
String toString() {
    return 'GetGuessRoomLookupOutput(isJoinable: $isJoinable, reason: $reason, rawResponse: $rawResponse)';
}


}

/// @nodoc
abstract mixin class _$GetGuessRoomLookupOutputCopyWith<$Res> implements $GetGuessRoomLookupOutputCopyWith<$Res> {
  factory _$GetGuessRoomLookupOutputCopyWith(_GetGuessRoomLookupOutput value, $Res Function(_GetGuessRoomLookupOutput) _then) = __$GetGuessRoomLookupOutputCopyWithImpl;
@override @useResult
$Res call({
 bool isJoinable, String? reason, Map<String, dynamic>? rawResponse
});




}
/// @nodoc
class __$GetGuessRoomLookupOutputCopyWithImpl<$Res>
    implements _$GetGuessRoomLookupOutputCopyWith<$Res> {
  __$GetGuessRoomLookupOutputCopyWithImpl(this._self, this._then);

  final _GetGuessRoomLookupOutput _self;
  final $Res Function(_GetGuessRoomLookupOutput) _then;

/// Create a copy of GetGuessRoomLookupOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isJoinable = null,Object? reason = freezed,Object? rawResponse = freezed,}) {
  return _then(_GetGuessRoomLookupOutput(
isJoinable: null == isJoinable ? _self.isJoinable : isJoinable // ignore: cast_nullable_to_non_nullable
as bool,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,rawResponse: freezed == rawResponse ? _self._rawResponse : rawResponse // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
