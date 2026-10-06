// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_word_profiles_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetWordProfilesInput {

 String get uid;
/// Create a copy of GetWordProfilesInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWordProfilesInputCopyWith<GetWordProfilesInput> get copyWith => _$GetWordProfilesInputCopyWithImpl<GetWordProfilesInput>(this as GetWordProfilesInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetWordProfilesInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWordProfilesInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid));
}


@override
int get hashCode {
  final _this = this as GetWordProfilesInput;
  return Object.hash(runtimeType,_this.uid);
}

@override
String toString() {
  final _this = this as GetWordProfilesInput;
  return 'GetWordProfilesInput(uid: ${_this.uid})';
}


}

/// @nodoc
abstract mixin class $GetWordProfilesInputCopyWith<$Res>  {
  factory $GetWordProfilesInputCopyWith(GetWordProfilesInput value, $Res Function(GetWordProfilesInput) _then) = _$GetWordProfilesInputCopyWithImpl;
@useResult
$Res call({
 String uid
});




}
/// @nodoc
class _$GetWordProfilesInputCopyWithImpl<$Res>
    implements $GetWordProfilesInputCopyWith<$Res> {
  _$GetWordProfilesInputCopyWithImpl(this._self, this._then);

  final GetWordProfilesInput _self;
  final $Res Function(GetWordProfilesInput) _then;

/// Create a copy of GetWordProfilesInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,}) {
  return _then(GetWordProfilesInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetWordProfilesInput].
extension GetWordProfilesInputPatterns on GetWordProfilesInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWordProfilesInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWordProfilesInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWordProfilesInput value)  $default,){
final _that = this;
switch (_that) {
case _GetWordProfilesInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWordProfilesInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetWordProfilesInput() when $default != null:
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
case _GetWordProfilesInput() when $default != null:
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
case _GetWordProfilesInput():
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
case _GetWordProfilesInput() when $default != null:
return $default(_that.uid);case _:
  return null;

}
}

}

/// @nodoc


class _GetWordProfilesInput extends GetWordProfilesInput {
  const _GetWordProfilesInput({required this.uid}): super._();
  

@override final  String uid;

/// Create a copy of GetWordProfilesInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWordProfilesInputCopyWith<_GetWordProfilesInput> get copyWith => __$GetWordProfilesInputCopyWithImpl<_GetWordProfilesInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWordProfilesInput&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid);
}

@override
String toString() {
    return 'GetWordProfilesInput(uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$GetWordProfilesInputCopyWith<$Res> implements $GetWordProfilesInputCopyWith<$Res> {
  factory _$GetWordProfilesInputCopyWith(_GetWordProfilesInput value, $Res Function(_GetWordProfilesInput) _then) = __$GetWordProfilesInputCopyWithImpl;
@override @useResult
$Res call({
 String uid
});




}
/// @nodoc
class __$GetWordProfilesInputCopyWithImpl<$Res>
    implements _$GetWordProfilesInputCopyWith<$Res> {
  __$GetWordProfilesInputCopyWithImpl(this._self, this._then);

  final _GetWordProfilesInput _self;
  final $Res Function(_GetWordProfilesInput) _then;

/// Create a copy of GetWordProfilesInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(_GetWordProfilesInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetWordProfilesOutput {

 List<WordProfileEntity> get profiles;
/// Create a copy of GetWordProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWordProfilesOutputCopyWith<GetWordProfilesOutput> get copyWith => _$GetWordProfilesOutputCopyWithImpl<GetWordProfilesOutput>(this as GetWordProfilesOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetWordProfilesOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWordProfilesOutput&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}


@override
int get hashCode {
  final _this = this as GetWordProfilesOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as GetWordProfilesOutput;
  return 'GetWordProfilesOutput(profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $GetWordProfilesOutputCopyWith<$Res>  {
  factory $GetWordProfilesOutputCopyWith(GetWordProfilesOutput value, $Res Function(GetWordProfilesOutput) _then) = _$GetWordProfilesOutputCopyWithImpl;
@useResult
$Res call({
 List<WordProfileEntity> profiles
});




}
/// @nodoc
class _$GetWordProfilesOutputCopyWithImpl<$Res>
    implements $GetWordProfilesOutputCopyWith<$Res> {
  _$GetWordProfilesOutputCopyWithImpl(this._self, this._then);

  final GetWordProfilesOutput _self;
  final $Res Function(GetWordProfilesOutput) _then;

/// Create a copy of GetWordProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profiles = null,}) {
  return _then(GetWordProfilesOutput(
profiles: null == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetWordProfilesOutput].
extension GetWordProfilesOutputPatterns on GetWordProfilesOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWordProfilesOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWordProfilesOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWordProfilesOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetWordProfilesOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWordProfilesOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetWordProfilesOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WordProfileEntity> profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetWordProfilesOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WordProfileEntity> profiles)  $default,) {final _that = this;
switch (_that) {
case _GetWordProfilesOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WordProfileEntity> profiles)?  $default,) {final _that = this;
switch (_that) {
case _GetWordProfilesOutput() when $default != null:
return $default(_that.profiles);case _:
  return null;

}
}

}

/// @nodoc


class _GetWordProfilesOutput extends GetWordProfilesOutput {
  const _GetWordProfilesOutput({ List<WordProfileEntity> profiles = const []}): _profiles = profiles,super._();
  

 final  List<WordProfileEntity> _profiles;
@override@JsonKey() List<WordProfileEntity> get profiles {
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profiles);
}


/// Create a copy of GetWordProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWordProfilesOutputCopyWith<_GetWordProfilesOutput> get copyWith => __$GetWordProfilesOutputCopyWithImpl<_GetWordProfilesOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWordProfilesOutput&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'GetWordProfilesOutput(profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$GetWordProfilesOutputCopyWith<$Res> implements $GetWordProfilesOutputCopyWith<$Res> {
  factory _$GetWordProfilesOutputCopyWith(_GetWordProfilesOutput value, $Res Function(_GetWordProfilesOutput) _then) = __$GetWordProfilesOutputCopyWithImpl;
@override @useResult
$Res call({
 List<WordProfileEntity> profiles
});




}
/// @nodoc
class __$GetWordProfilesOutputCopyWithImpl<$Res>
    implements _$GetWordProfilesOutputCopyWith<$Res> {
  __$GetWordProfilesOutputCopyWithImpl(this._self, this._then);

  final _GetWordProfilesOutput _self;
  final $Res Function(_GetWordProfilesOutput) _then;

/// Create a copy of GetWordProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profiles = null,}) {
  return _then(_GetWordProfilesOutput(
profiles: null == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileEntity>,
  ));
}


}

// dart format on
