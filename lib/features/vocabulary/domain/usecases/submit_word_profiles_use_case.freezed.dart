// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_word_profiles_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitWordProfilesInput {

 String get uid; List<WordProfileEntity> get profiles;
/// Create a copy of SubmitWordProfilesInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitWordProfilesInputCopyWith<SubmitWordProfilesInput> get copyWith => _$SubmitWordProfilesInputCopyWithImpl<SubmitWordProfilesInput>(this as SubmitWordProfilesInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitWordProfilesInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitWordProfilesInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}


@override
int get hashCode {
  final _this = this as SubmitWordProfilesInput;
  return Object.hash(runtimeType,_this.uid,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as SubmitWordProfilesInput;
  return 'SubmitWordProfilesInput(uid: ${_this.uid}, profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $SubmitWordProfilesInputCopyWith<$Res>  {
  factory $SubmitWordProfilesInputCopyWith(SubmitWordProfilesInput value, $Res Function(SubmitWordProfilesInput) _then) = _$SubmitWordProfilesInputCopyWithImpl;
@useResult
$Res call({
 String uid, List<WordProfileEntity> profiles
});




}
/// @nodoc
class _$SubmitWordProfilesInputCopyWithImpl<$Res>
    implements $SubmitWordProfilesInputCopyWith<$Res> {
  _$SubmitWordProfilesInputCopyWithImpl(this._self, this._then);

  final SubmitWordProfilesInput _self;
  final $Res Function(SubmitWordProfilesInput) _then;

/// Create a copy of SubmitWordProfilesInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? profiles = null,}) {
  return _then(SubmitWordProfilesInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,profiles: null == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitWordProfilesInput].
extension SubmitWordProfilesInputPatterns on SubmitWordProfilesInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitWordProfilesInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitWordProfilesInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitWordProfilesInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitWordProfilesInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitWordProfilesInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitWordProfilesInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  List<WordProfileEntity> profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitWordProfilesInput() when $default != null:
return $default(_that.uid,_that.profiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  List<WordProfileEntity> profiles)  $default,) {final _that = this;
switch (_that) {
case _SubmitWordProfilesInput():
return $default(_that.uid,_that.profiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  List<WordProfileEntity> profiles)?  $default,) {final _that = this;
switch (_that) {
case _SubmitWordProfilesInput() when $default != null:
return $default(_that.uid,_that.profiles);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitWordProfilesInput extends SubmitWordProfilesInput {
  const _SubmitWordProfilesInput({required this.uid, required  List<WordProfileEntity> profiles}): _profiles = profiles,super._();
  

@override final  String uid;
 final  List<WordProfileEntity> _profiles;
@override List<WordProfileEntity> get profiles {
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profiles);
}


/// Create a copy of SubmitWordProfilesInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitWordProfilesInputCopyWith<_SubmitWordProfilesInput> get copyWith => __$SubmitWordProfilesInputCopyWithImpl<_SubmitWordProfilesInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitWordProfilesInput&&(identical(other.uid, uid) || other.uid == uid)&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'SubmitWordProfilesInput(uid: $uid, profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$SubmitWordProfilesInputCopyWith<$Res> implements $SubmitWordProfilesInputCopyWith<$Res> {
  factory _$SubmitWordProfilesInputCopyWith(_SubmitWordProfilesInput value, $Res Function(_SubmitWordProfilesInput) _then) = __$SubmitWordProfilesInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, List<WordProfileEntity> profiles
});




}
/// @nodoc
class __$SubmitWordProfilesInputCopyWithImpl<$Res>
    implements _$SubmitWordProfilesInputCopyWith<$Res> {
  __$SubmitWordProfilesInputCopyWithImpl(this._self, this._then);

  final _SubmitWordProfilesInput _self;
  final $Res Function(_SubmitWordProfilesInput) _then;

/// Create a copy of SubmitWordProfilesInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? profiles = null,}) {
  return _then(_SubmitWordProfilesInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,profiles: null == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileEntity>,
  ));
}


}

/// @nodoc
mixin _$SubmitWordProfilesOutput {

 bool get success;
/// Create a copy of SubmitWordProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitWordProfilesOutputCopyWith<SubmitWordProfilesOutput> get copyWith => _$SubmitWordProfilesOutputCopyWithImpl<SubmitWordProfilesOutput>(this as SubmitWordProfilesOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitWordProfilesOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitWordProfilesOutput&&(identical(other.success, _this.success) || other.success == _this.success));
}


@override
int get hashCode {
  final _this = this as SubmitWordProfilesOutput;
  return Object.hash(runtimeType,_this.success);
}

@override
String toString() {
  final _this = this as SubmitWordProfilesOutput;
  return 'SubmitWordProfilesOutput(success: ${_this.success})';
}


}

/// @nodoc
abstract mixin class $SubmitWordProfilesOutputCopyWith<$Res>  {
  factory $SubmitWordProfilesOutputCopyWith(SubmitWordProfilesOutput value, $Res Function(SubmitWordProfilesOutput) _then) = _$SubmitWordProfilesOutputCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$SubmitWordProfilesOutputCopyWithImpl<$Res>
    implements $SubmitWordProfilesOutputCopyWith<$Res> {
  _$SubmitWordProfilesOutputCopyWithImpl(this._self, this._then);

  final SubmitWordProfilesOutput _self;
  final $Res Function(SubmitWordProfilesOutput) _then;

/// Create a copy of SubmitWordProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(SubmitWordProfilesOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitWordProfilesOutput].
extension SubmitWordProfilesOutputPatterns on SubmitWordProfilesOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitWordProfilesOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitWordProfilesOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitWordProfilesOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitWordProfilesOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitWordProfilesOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitWordProfilesOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitWordProfilesOutput() when $default != null:
return $default(_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success)  $default,) {final _that = this;
switch (_that) {
case _SubmitWordProfilesOutput():
return $default(_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success)?  $default,) {final _that = this;
switch (_that) {
case _SubmitWordProfilesOutput() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitWordProfilesOutput extends SubmitWordProfilesOutput {
  const _SubmitWordProfilesOutput({this.success = true}): super._();
  

@override@JsonKey() final  bool success;

/// Create a copy of SubmitWordProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitWordProfilesOutputCopyWith<_SubmitWordProfilesOutput> get copyWith => __$SubmitWordProfilesOutputCopyWithImpl<_SubmitWordProfilesOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitWordProfilesOutput&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success);
}

@override
String toString() {
    return 'SubmitWordProfilesOutput(success: $success)';
}


}

/// @nodoc
abstract mixin class _$SubmitWordProfilesOutputCopyWith<$Res> implements $SubmitWordProfilesOutputCopyWith<$Res> {
  factory _$SubmitWordProfilesOutputCopyWith(_SubmitWordProfilesOutput value, $Res Function(_SubmitWordProfilesOutput) _then) = __$SubmitWordProfilesOutputCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$SubmitWordProfilesOutputCopyWithImpl<$Res>
    implements _$SubmitWordProfilesOutputCopyWith<$Res> {
  __$SubmitWordProfilesOutputCopyWithImpl(this._self, this._then);

  final _SubmitWordProfilesOutput _self;
  final $Res Function(_SubmitWordProfilesOutput) _then;

/// Create a copy of SubmitWordProfilesOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_SubmitWordProfilesOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
