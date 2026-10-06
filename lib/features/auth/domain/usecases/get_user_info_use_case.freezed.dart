// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_info_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetUserInfoInput {

 String get uid;
/// Create a copy of GetUserInfoInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserInfoInputCopyWith<GetUserInfoInput> get copyWith => _$GetUserInfoInputCopyWithImpl<GetUserInfoInput>(this as GetUserInfoInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetUserInfoInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserInfoInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid));
}


@override
int get hashCode {
  final _this = this as GetUserInfoInput;
  return Object.hash(runtimeType,_this.uid);
}

@override
String toString() {
  final _this = this as GetUserInfoInput;
  return 'GetUserInfoInput(uid: ${_this.uid})';
}


}

/// @nodoc
abstract mixin class $GetUserInfoInputCopyWith<$Res>  {
  factory $GetUserInfoInputCopyWith(GetUserInfoInput value, $Res Function(GetUserInfoInput) _then) = _$GetUserInfoInputCopyWithImpl;
@useResult
$Res call({
 String uid
});




}
/// @nodoc
class _$GetUserInfoInputCopyWithImpl<$Res>
    implements $GetUserInfoInputCopyWith<$Res> {
  _$GetUserInfoInputCopyWithImpl(this._self, this._then);

  final GetUserInfoInput _self;
  final $Res Function(GetUserInfoInput) _then;

/// Create a copy of GetUserInfoInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,}) {
  return _then(GetUserInfoInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetUserInfoInput].
extension GetUserInfoInputPatterns on GetUserInfoInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetUserInfoInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserInfoInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetUserInfoInput value)  $default,){
final _that = this;
switch (_that) {
case _GetUserInfoInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetUserInfoInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetUserInfoInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserInfoInput() when $default != null:
return $default(_that.uid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid)  $default,) {final _that = this;
switch (_that) {
case _GetUserInfoInput():
return $default(_that.uid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid)?  $default,) {final _that = this;
switch (_that) {
case _GetUserInfoInput() when $default != null:
return $default(_that.uid);case _:
  return null;

}
}

}

/// @nodoc


class _GetUserInfoInput extends GetUserInfoInput {
  const _GetUserInfoInput({required this.uid}): super._();
  

@override final  String uid;

/// Create a copy of GetUserInfoInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserInfoInputCopyWith<_GetUserInfoInput> get copyWith => __$GetUserInfoInputCopyWithImpl<_GetUserInfoInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserInfoInput&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid);
}

@override
String toString() {
    return 'GetUserInfoInput(uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$GetUserInfoInputCopyWith<$Res> implements $GetUserInfoInputCopyWith<$Res> {
  factory _$GetUserInfoInputCopyWith(_GetUserInfoInput value, $Res Function(_GetUserInfoInput) _then) = __$GetUserInfoInputCopyWithImpl;
@override @useResult
$Res call({
 String uid
});




}
/// @nodoc
class __$GetUserInfoInputCopyWithImpl<$Res>
    implements _$GetUserInfoInputCopyWith<$Res> {
  __$GetUserInfoInputCopyWithImpl(this._self, this._then);

  final _GetUserInfoInput _self;
  final $Res Function(_GetUserInfoInput) _then;

/// Create a copy of GetUserInfoInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(_GetUserInfoInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetUserInfoOutput {

 User? get user;
/// Create a copy of GetUserInfoOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserInfoOutputCopyWith<GetUserInfoOutput> get copyWith => _$GetUserInfoOutputCopyWithImpl<GetUserInfoOutput>(this as GetUserInfoOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetUserInfoOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserInfoOutput&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as GetUserInfoOutput;
  return Object.hash(runtimeType,_this.user);
}

@override
String toString() {
  final _this = this as GetUserInfoOutput;
  return 'GetUserInfoOutput(user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $GetUserInfoOutputCopyWith<$Res>  {
  factory $GetUserInfoOutputCopyWith(GetUserInfoOutput value, $Res Function(GetUserInfoOutput) _then) = _$GetUserInfoOutputCopyWithImpl;
@useResult
$Res call({
 User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$GetUserInfoOutputCopyWithImpl<$Res>
    implements $GetUserInfoOutputCopyWith<$Res> {
  _$GetUserInfoOutputCopyWithImpl(this._self, this._then);

  final GetUserInfoOutput _self;
  final $Res Function(GetUserInfoOutput) _then;

/// Create a copy of GetUserInfoOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,}) {
  return _then(GetUserInfoOutput(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of GetUserInfoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetUserInfoOutput].
extension GetUserInfoOutputPatterns on GetUserInfoOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetUserInfoOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserInfoOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetUserInfoOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetUserInfoOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetUserInfoOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetUserInfoOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserInfoOutput() when $default != null:
return $default(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User? user)  $default,) {final _that = this;
switch (_that) {
case _GetUserInfoOutput():
return $default(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User? user)?  $default,) {final _that = this;
switch (_that) {
case _GetUserInfoOutput() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _GetUserInfoOutput extends GetUserInfoOutput {
  const _GetUserInfoOutput(this.user): super._();
  

@override final  User? user;

/// Create a copy of GetUserInfoOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserInfoOutputCopyWith<_GetUserInfoOutput> get copyWith => __$GetUserInfoOutputCopyWithImpl<_GetUserInfoOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserInfoOutput&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'GetUserInfoOutput(user: $user)';
}


}

/// @nodoc
abstract mixin class _$GetUserInfoOutputCopyWith<$Res> implements $GetUserInfoOutputCopyWith<$Res> {
  factory _$GetUserInfoOutputCopyWith(_GetUserInfoOutput value, $Res Function(_GetUserInfoOutput) _then) = __$GetUserInfoOutputCopyWithImpl;
@override @useResult
$Res call({
 User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$GetUserInfoOutputCopyWithImpl<$Res>
    implements _$GetUserInfoOutputCopyWith<$Res> {
  __$GetUserInfoOutputCopyWithImpl(this._self, this._then);

  final _GetUserInfoOutput _self;
  final $Res Function(_GetUserInfoOutput) _then;

/// Create a copy of GetUserInfoOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_GetUserInfoOutput(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of GetUserInfoOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
