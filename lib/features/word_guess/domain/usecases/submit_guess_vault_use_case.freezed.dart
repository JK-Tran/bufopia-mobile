// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_guess_vault_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitGuessVaultInput {

 String get uid; String get title; List<Map<String, dynamic>> get words; String? get description; String? get token;
/// Create a copy of SubmitGuessVaultInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitGuessVaultInputCopyWith<SubmitGuessVaultInput> get copyWith => _$SubmitGuessVaultInputCopyWithImpl<SubmitGuessVaultInput>(this as SubmitGuessVaultInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitGuessVaultInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitGuessVaultInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.title, _this.title) || other.title == _this.title)&&const DeepCollectionEquality().equals(other.words, _this.words)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as SubmitGuessVaultInput;
  return Object.hash(runtimeType,_this.uid,_this.title,const DeepCollectionEquality().hash(_this.words),_this.description,_this.token);
}

@override
String toString() {
  final _this = this as SubmitGuessVaultInput;
  return 'SubmitGuessVaultInput(uid: ${_this.uid}, title: ${_this.title}, words: ${_this.words}, description: ${_this.description}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $SubmitGuessVaultInputCopyWith<$Res>  {
  factory $SubmitGuessVaultInputCopyWith(SubmitGuessVaultInput value, $Res Function(SubmitGuessVaultInput) _then) = _$SubmitGuessVaultInputCopyWithImpl;
@useResult
$Res call({
 String uid, String title, List<Map<String, dynamic>> words, String? description, String? token
});




}
/// @nodoc
class _$SubmitGuessVaultInputCopyWithImpl<$Res>
    implements $SubmitGuessVaultInputCopyWith<$Res> {
  _$SubmitGuessVaultInputCopyWithImpl(this._self, this._then);

  final SubmitGuessVaultInput _self;
  final $Res Function(SubmitGuessVaultInput) _then;

/// Create a copy of SubmitGuessVaultInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? title = null,Object? words = null,Object? description = freezed,Object? token = freezed,}) {
  return _then(SubmitGuessVaultInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitGuessVaultInput].
extension SubmitGuessVaultInputPatterns on SubmitGuessVaultInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitGuessVaultInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitGuessVaultInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitGuessVaultInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessVaultInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitGuessVaultInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessVaultInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String title,  List<Map<String, dynamic>> words,  String? description,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitGuessVaultInput() when $default != null:
return $default(_that.uid,_that.title,_that.words,_that.description,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String title,  List<Map<String, dynamic>> words,  String? description,  String? token)  $default,) {final _that = this;
switch (_that) {
case _SubmitGuessVaultInput():
return $default(_that.uid,_that.title,_that.words,_that.description,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String title,  List<Map<String, dynamic>> words,  String? description,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _SubmitGuessVaultInput() when $default != null:
return $default(_that.uid,_that.title,_that.words,_that.description,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitGuessVaultInput extends SubmitGuessVaultInput {
  const _SubmitGuessVaultInput({required this.uid, required this.title, required  List<Map<String, dynamic>> words, this.description, this.token}): _words = words,super._();
  

@override final  String uid;
@override final  String title;
 final  List<Map<String, dynamic>> _words;
@override List<Map<String, dynamic>> get words {
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_words);
}

@override final  String? description;
@override final  String? token;

/// Create a copy of SubmitGuessVaultInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitGuessVaultInputCopyWith<_SubmitGuessVaultInput> get copyWith => __$SubmitGuessVaultInputCopyWithImpl<_SubmitGuessVaultInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitGuessVaultInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.words, _words)&&(identical(other.description, description) || other.description == description)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,title,const DeepCollectionEquality().hash(_words),description,token);
}

@override
String toString() {
    return 'SubmitGuessVaultInput(uid: $uid, title: $title, words: $words, description: $description, token: $token)';
}


}

/// @nodoc
abstract mixin class _$SubmitGuessVaultInputCopyWith<$Res> implements $SubmitGuessVaultInputCopyWith<$Res> {
  factory _$SubmitGuessVaultInputCopyWith(_SubmitGuessVaultInput value, $Res Function(_SubmitGuessVaultInput) _then) = __$SubmitGuessVaultInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String title, List<Map<String, dynamic>> words, String? description, String? token
});




}
/// @nodoc
class __$SubmitGuessVaultInputCopyWithImpl<$Res>
    implements _$SubmitGuessVaultInputCopyWith<$Res> {
  __$SubmitGuessVaultInputCopyWithImpl(this._self, this._then);

  final _SubmitGuessVaultInput _self;
  final $Res Function(_SubmitGuessVaultInput) _then;

/// Create a copy of SubmitGuessVaultInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? title = null,Object? words = null,Object? description = freezed,Object? token = freezed,}) {
  return _then(_SubmitGuessVaultInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SubmitGuessVaultOutput {

 bool get success;
/// Create a copy of SubmitGuessVaultOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitGuessVaultOutputCopyWith<SubmitGuessVaultOutput> get copyWith => _$SubmitGuessVaultOutputCopyWithImpl<SubmitGuessVaultOutput>(this as SubmitGuessVaultOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitGuessVaultOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitGuessVaultOutput&&(identical(other.success, _this.success) || other.success == _this.success));
}


@override
int get hashCode {
  final _this = this as SubmitGuessVaultOutput;
  return Object.hash(runtimeType,_this.success);
}

@override
String toString() {
  final _this = this as SubmitGuessVaultOutput;
  return 'SubmitGuessVaultOutput(success: ${_this.success})';
}


}

/// @nodoc
abstract mixin class $SubmitGuessVaultOutputCopyWith<$Res>  {
  factory $SubmitGuessVaultOutputCopyWith(SubmitGuessVaultOutput value, $Res Function(SubmitGuessVaultOutput) _then) = _$SubmitGuessVaultOutputCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$SubmitGuessVaultOutputCopyWithImpl<$Res>
    implements $SubmitGuessVaultOutputCopyWith<$Res> {
  _$SubmitGuessVaultOutputCopyWithImpl(this._self, this._then);

  final SubmitGuessVaultOutput _self;
  final $Res Function(SubmitGuessVaultOutput) _then;

/// Create a copy of SubmitGuessVaultOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(SubmitGuessVaultOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitGuessVaultOutput].
extension SubmitGuessVaultOutputPatterns on SubmitGuessVaultOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitGuessVaultOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitGuessVaultOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitGuessVaultOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessVaultOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitGuessVaultOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessVaultOutput() when $default != null:
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
case _SubmitGuessVaultOutput() when $default != null:
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
case _SubmitGuessVaultOutput():
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
case _SubmitGuessVaultOutput() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitGuessVaultOutput extends SubmitGuessVaultOutput {
  const _SubmitGuessVaultOutput({this.success = false}): super._();
  

@override@JsonKey() final  bool success;

/// Create a copy of SubmitGuessVaultOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitGuessVaultOutputCopyWith<_SubmitGuessVaultOutput> get copyWith => __$SubmitGuessVaultOutputCopyWithImpl<_SubmitGuessVaultOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitGuessVaultOutput&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success);
}

@override
String toString() {
    return 'SubmitGuessVaultOutput(success: $success)';
}


}

/// @nodoc
abstract mixin class _$SubmitGuessVaultOutputCopyWith<$Res> implements $SubmitGuessVaultOutputCopyWith<$Res> {
  factory _$SubmitGuessVaultOutputCopyWith(_SubmitGuessVaultOutput value, $Res Function(_SubmitGuessVaultOutput) _then) = __$SubmitGuessVaultOutputCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$SubmitGuessVaultOutputCopyWithImpl<$Res>
    implements _$SubmitGuessVaultOutputCopyWith<$Res> {
  __$SubmitGuessVaultOutputCopyWithImpl(this._self, this._then);

  final _SubmitGuessVaultOutput _self;
  final $Res Function(_SubmitGuessVaultOutput) _then;

/// Create a copy of SubmitGuessVaultOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_SubmitGuessVaultOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
