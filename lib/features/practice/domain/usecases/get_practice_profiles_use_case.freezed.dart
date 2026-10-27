// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_practice_profiles_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetPracticeProfilesInput {

 String get uid; String? get token;
/// Create a copy of GetPracticeProfilesInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPracticeProfilesInputCopyWith<GetPracticeProfilesInput> get copyWith => _$GetPracticeProfilesInputCopyWithImpl<GetPracticeProfilesInput>(this as GetPracticeProfilesInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetPracticeProfilesInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPracticeProfilesInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as GetPracticeProfilesInput;
  return Object.hash(runtimeType,_this.uid,_this.token);
}

@override
String toString() {
  final _this = this as GetPracticeProfilesInput;
  return 'GetPracticeProfilesInput(uid: ${_this.uid}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $GetPracticeProfilesInputCopyWith<$Res>  {
  factory $GetPracticeProfilesInputCopyWith(GetPracticeProfilesInput value, $Res Function(GetPracticeProfilesInput) _then) = _$GetPracticeProfilesInputCopyWithImpl;
@useResult
$Res call({
 String uid, String? token
});




}
/// @nodoc
class _$GetPracticeProfilesInputCopyWithImpl<$Res>
    implements $GetPracticeProfilesInputCopyWith<$Res> {
  _$GetPracticeProfilesInputCopyWithImpl(this._self, this._then);

  final GetPracticeProfilesInput _self;
  final $Res Function(GetPracticeProfilesInput) _then;

/// Create a copy of GetPracticeProfilesInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? token = freezed,}) {
  return _then(GetPracticeProfilesInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetPracticeProfilesInput].
extension GetPracticeProfilesInputPatterns on GetPracticeProfilesInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPracticeProfilesInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPracticeProfilesInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPracticeProfilesInput value)  $default,){
final _that = this;
switch (_that) {
case _GetPracticeProfilesInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPracticeProfilesInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetPracticeProfilesInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPracticeProfilesInput() when $default != null:
return $default(_that.uid,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String? token)  $default,) {final _that = this;
switch (_that) {
case _GetPracticeProfilesInput():
return $default(_that.uid,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _GetPracticeProfilesInput() when $default != null:
return $default(_that.uid,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _GetPracticeProfilesInput extends GetPracticeProfilesInput {
  const _GetPracticeProfilesInput({required this.uid, this.token}): super._();
  

@override final  String uid;
@override final  String? token;

/// Create a copy of GetPracticeProfilesInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPracticeProfilesInputCopyWith<_GetPracticeProfilesInput> get copyWith => __$GetPracticeProfilesInputCopyWithImpl<_GetPracticeProfilesInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPracticeProfilesInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,token);
}

@override
String toString() {
    return 'GetPracticeProfilesInput(uid: $uid, token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetPracticeProfilesInputCopyWith<$Res> implements $GetPracticeProfilesInputCopyWith<$Res> {
  factory _$GetPracticeProfilesInputCopyWith(_GetPracticeProfilesInput value, $Res Function(_GetPracticeProfilesInput) _then) = __$GetPracticeProfilesInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String? token
});




}
/// @nodoc
class __$GetPracticeProfilesInputCopyWithImpl<$Res>
    implements _$GetPracticeProfilesInputCopyWith<$Res> {
  __$GetPracticeProfilesInputCopyWithImpl(this._self, this._then);

  final _GetPracticeProfilesInput _self;
  final $Res Function(_GetPracticeProfilesInput) _then;

/// Create a copy of GetPracticeProfilesInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? token = freezed,}) {
  return _then(_GetPracticeProfilesInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$GetPracticeProfilesOutput {

 Map<String, WordMemory> get profiles;
/// Create a copy of GetPracticeProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPracticeProfilesOutputCopyWith<GetPracticeProfilesOutput> get copyWith => _$GetPracticeProfilesOutputCopyWithImpl<GetPracticeProfilesOutput>(this as GetPracticeProfilesOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetPracticeProfilesOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPracticeProfilesOutput&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}


@override
int get hashCode {
  final _this = this as GetPracticeProfilesOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as GetPracticeProfilesOutput;
  return 'GetPracticeProfilesOutput(profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $GetPracticeProfilesOutputCopyWith<$Res>  {
  factory $GetPracticeProfilesOutputCopyWith(GetPracticeProfilesOutput value, $Res Function(GetPracticeProfilesOutput) _then) = _$GetPracticeProfilesOutputCopyWithImpl;
@useResult
$Res call({
 Map<String, WordMemory> profiles
});




}
/// @nodoc
class _$GetPracticeProfilesOutputCopyWithImpl<$Res>
    implements $GetPracticeProfilesOutputCopyWith<$Res> {
  _$GetPracticeProfilesOutputCopyWithImpl(this._self, this._then);

  final GetPracticeProfilesOutput _self;
  final $Res Function(GetPracticeProfilesOutput) _then;

/// Create a copy of GetPracticeProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profiles = null,}) {
  return _then(GetPracticeProfilesOutput(
profiles: null == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as Map<String, WordMemory>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetPracticeProfilesOutput].
extension GetPracticeProfilesOutputPatterns on GetPracticeProfilesOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetPracticeProfilesOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPracticeProfilesOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetPracticeProfilesOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetPracticeProfilesOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetPracticeProfilesOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetPracticeProfilesOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, WordMemory> profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPracticeProfilesOutput() when $default != null:
return $default(_that.profiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, WordMemory> profiles)  $default,) {final _that = this;
switch (_that) {
case _GetPracticeProfilesOutput():
return $default(_that.profiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, WordMemory> profiles)?  $default,) {final _that = this;
switch (_that) {
case _GetPracticeProfilesOutput() when $default != null:
return $default(_that.profiles);case _:
  return null;

}
}

}

/// @nodoc


class _GetPracticeProfilesOutput extends GetPracticeProfilesOutput {
  const _GetPracticeProfilesOutput({ Map<String, WordMemory> profiles = const {}}): _profiles = profiles,super._();
  

 final  Map<String, WordMemory> _profiles;
@override@JsonKey() Map<String, WordMemory> get profiles {
  if (_profiles is EqualUnmodifiableMapView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_profiles);
}


/// Create a copy of GetPracticeProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPracticeProfilesOutputCopyWith<_GetPracticeProfilesOutput> get copyWith => __$GetPracticeProfilesOutputCopyWithImpl<_GetPracticeProfilesOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPracticeProfilesOutput&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'GetPracticeProfilesOutput(profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$GetPracticeProfilesOutputCopyWith<$Res> implements $GetPracticeProfilesOutputCopyWith<$Res> {
  factory _$GetPracticeProfilesOutputCopyWith(_GetPracticeProfilesOutput value, $Res Function(_GetPracticeProfilesOutput) _then) = __$GetPracticeProfilesOutputCopyWithImpl;
@override @useResult
$Res call({
 Map<String, WordMemory> profiles
});




}
/// @nodoc
class __$GetPracticeProfilesOutputCopyWithImpl<$Res>
    implements _$GetPracticeProfilesOutputCopyWith<$Res> {
  __$GetPracticeProfilesOutputCopyWithImpl(this._self, this._then);

  final _GetPracticeProfilesOutput _self;
  final $Res Function(_GetPracticeProfilesOutput) _then;

/// Create a copy of GetPracticeProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profiles = null,}) {
  return _then(_GetPracticeProfilesOutput(
profiles: null == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as Map<String, WordMemory>,
  ));
}


}

// dart format on
