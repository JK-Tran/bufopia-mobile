// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateUserProfileInput {

 String get uid; String get displayName; String? get avatarUrl;
/// Create a copy of UpdateUserProfileInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserProfileInputCopyWith<UpdateUserProfileInput> get copyWith => _$UpdateUserProfileInputCopyWithImpl<UpdateUserProfileInput>(this as UpdateUserProfileInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateUserProfileInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserProfileInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl));
}


@override
int get hashCode {
  final _this = this as UpdateUserProfileInput;
  return Object.hash(runtimeType,_this.uid,_this.displayName,_this.avatarUrl);
}

@override
String toString() {
  final _this = this as UpdateUserProfileInput;
  return 'UpdateUserProfileInput(uid: ${_this.uid}, displayName: ${_this.displayName}, avatarUrl: ${_this.avatarUrl})';
}


}

/// @nodoc
abstract mixin class $UpdateUserProfileInputCopyWith<$Res>  {
  factory $UpdateUserProfileInputCopyWith(UpdateUserProfileInput value, $Res Function(UpdateUserProfileInput) _then) = _$UpdateUserProfileInputCopyWithImpl;
@useResult
$Res call({
 String uid, String displayName, String? avatarUrl
});




}
/// @nodoc
class _$UpdateUserProfileInputCopyWithImpl<$Res>
    implements $UpdateUserProfileInputCopyWith<$Res> {
  _$UpdateUserProfileInputCopyWithImpl(this._self, this._then);

  final UpdateUserProfileInput _self;
  final $Res Function(UpdateUserProfileInput) _then;

/// Create a copy of UpdateUserProfileInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? displayName = null,Object? avatarUrl = freezed,}) {
  return _then(UpdateUserProfileInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUserProfileInput].
extension UpdateUserProfileInputPatterns on UpdateUserProfileInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserProfileInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserProfileInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserProfileInput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserProfileInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserProfileInput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserProfileInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String displayName,  String? avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserProfileInput() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String displayName,  String? avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserProfileInput():
return $default(_that.uid,_that.displayName,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String displayName,  String? avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserProfileInput() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateUserProfileInput extends UpdateUserProfileInput {
  const _UpdateUserProfileInput({required this.uid, required this.displayName, this.avatarUrl}): super._();
  

@override final  String uid;
@override final  String displayName;
@override final  String? avatarUrl;

/// Create a copy of UpdateUserProfileInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserProfileInputCopyWith<_UpdateUserProfileInput> get copyWith => __$UpdateUserProfileInputCopyWithImpl<_UpdateUserProfileInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserProfileInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,displayName,avatarUrl);
}

@override
String toString() {
    return 'UpdateUserProfileInput(uid: $uid, displayName: $displayName, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserProfileInputCopyWith<$Res> implements $UpdateUserProfileInputCopyWith<$Res> {
  factory _$UpdateUserProfileInputCopyWith(_UpdateUserProfileInput value, $Res Function(_UpdateUserProfileInput) _then) = __$UpdateUserProfileInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String displayName, String? avatarUrl
});




}
/// @nodoc
class __$UpdateUserProfileInputCopyWithImpl<$Res>
    implements _$UpdateUserProfileInputCopyWith<$Res> {
  __$UpdateUserProfileInputCopyWithImpl(this._self, this._then);

  final _UpdateUserProfileInput _self;
  final $Res Function(_UpdateUserProfileInput) _then;

/// Create a copy of UpdateUserProfileInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? displayName = null,Object? avatarUrl = freezed,}) {
  return _then(_UpdateUserProfileInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$UpdateUserProfileOutput {

 User? get user;
/// Create a copy of UpdateUserProfileOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserProfileOutputCopyWith<UpdateUserProfileOutput> get copyWith => _$UpdateUserProfileOutputCopyWithImpl<UpdateUserProfileOutput>(this as UpdateUserProfileOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateUserProfileOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserProfileOutput&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as UpdateUserProfileOutput;
  return Object.hash(runtimeType,_this.user);
}

@override
String toString() {
  final _this = this as UpdateUserProfileOutput;
  return 'UpdateUserProfileOutput(user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $UpdateUserProfileOutputCopyWith<$Res>  {
  factory $UpdateUserProfileOutputCopyWith(UpdateUserProfileOutput value, $Res Function(UpdateUserProfileOutput) _then) = _$UpdateUserProfileOutputCopyWithImpl;
@useResult
$Res call({
 User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$UpdateUserProfileOutputCopyWithImpl<$Res>
    implements $UpdateUserProfileOutputCopyWith<$Res> {
  _$UpdateUserProfileOutputCopyWithImpl(this._self, this._then);

  final UpdateUserProfileOutput _self;
  final $Res Function(UpdateUserProfileOutput) _then;

/// Create a copy of UpdateUserProfileOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,}) {
  return _then(UpdateUserProfileOutput(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of UpdateUserProfileOutput
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


/// Adds pattern-matching-related methods to [UpdateUserProfileOutput].
extension UpdateUserProfileOutputPatterns on UpdateUserProfileOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserProfileOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserProfileOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserProfileOutput value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserProfileOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserProfileOutput value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserProfileOutput() when $default != null:
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
case _UpdateUserProfileOutput() when $default != null:
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
case _UpdateUserProfileOutput():
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
case _UpdateUserProfileOutput() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateUserProfileOutput extends UpdateUserProfileOutput {
  const _UpdateUserProfileOutput(this.user): super._();
  

@override final  User? user;

/// Create a copy of UpdateUserProfileOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserProfileOutputCopyWith<_UpdateUserProfileOutput> get copyWith => __$UpdateUserProfileOutputCopyWithImpl<_UpdateUserProfileOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserProfileOutput&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'UpdateUserProfileOutput(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserProfileOutputCopyWith<$Res> implements $UpdateUserProfileOutputCopyWith<$Res> {
  factory _$UpdateUserProfileOutputCopyWith(_UpdateUserProfileOutput value, $Res Function(_UpdateUserProfileOutput) _then) = __$UpdateUserProfileOutputCopyWithImpl;
@override @useResult
$Res call({
 User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$UpdateUserProfileOutputCopyWithImpl<$Res>
    implements _$UpdateUserProfileOutputCopyWith<$Res> {
  __$UpdateUserProfileOutputCopyWithImpl(this._self, this._then);

  final _UpdateUserProfileOutput _self;
  final $Res Function(_UpdateUserProfileOutput) _then;

/// Create a copy of UpdateUserProfileOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_UpdateUserProfileOutput(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of UpdateUserProfileOutput
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
