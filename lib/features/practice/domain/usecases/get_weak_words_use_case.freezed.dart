// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_weak_words_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetWeakWordsInput {

 String get uid; String? get token;
/// Create a copy of GetWeakWordsInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWeakWordsInputCopyWith<GetWeakWordsInput> get copyWith => _$GetWeakWordsInputCopyWithImpl<GetWeakWordsInput>(this as GetWeakWordsInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetWeakWordsInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWeakWordsInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as GetWeakWordsInput;
  return Object.hash(runtimeType,_this.uid,_this.token);
}

@override
String toString() {
  final _this = this as GetWeakWordsInput;
  return 'GetWeakWordsInput(uid: ${_this.uid}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $GetWeakWordsInputCopyWith<$Res>  {
  factory $GetWeakWordsInputCopyWith(GetWeakWordsInput value, $Res Function(GetWeakWordsInput) _then) = _$GetWeakWordsInputCopyWithImpl;
@useResult
$Res call({
 String uid, String? token
});




}
/// @nodoc
class _$GetWeakWordsInputCopyWithImpl<$Res>
    implements $GetWeakWordsInputCopyWith<$Res> {
  _$GetWeakWordsInputCopyWithImpl(this._self, this._then);

  final GetWeakWordsInput _self;
  final $Res Function(GetWeakWordsInput) _then;

/// Create a copy of GetWeakWordsInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? token = freezed,}) {
  return _then(GetWeakWordsInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetWeakWordsInput].
extension GetWeakWordsInputPatterns on GetWeakWordsInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWeakWordsInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWeakWordsInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWeakWordsInput value)  $default,){
final _that = this;
switch (_that) {
case _GetWeakWordsInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWeakWordsInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetWeakWordsInput() when $default != null:
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
case _GetWeakWordsInput() when $default != null:
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
case _GetWeakWordsInput():
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
case _GetWeakWordsInput() when $default != null:
return $default(_that.uid,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _GetWeakWordsInput extends GetWeakWordsInput {
  const _GetWeakWordsInput({required this.uid, this.token}): super._();
  

@override final  String uid;
@override final  String? token;

/// Create a copy of GetWeakWordsInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWeakWordsInputCopyWith<_GetWeakWordsInput> get copyWith => __$GetWeakWordsInputCopyWithImpl<_GetWeakWordsInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWeakWordsInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,token);
}

@override
String toString() {
    return 'GetWeakWordsInput(uid: $uid, token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetWeakWordsInputCopyWith<$Res> implements $GetWeakWordsInputCopyWith<$Res> {
  factory _$GetWeakWordsInputCopyWith(_GetWeakWordsInput value, $Res Function(_GetWeakWordsInput) _then) = __$GetWeakWordsInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String? token
});




}
/// @nodoc
class __$GetWeakWordsInputCopyWithImpl<$Res>
    implements _$GetWeakWordsInputCopyWith<$Res> {
  __$GetWeakWordsInputCopyWithImpl(this._self, this._then);

  final _GetWeakWordsInput _self;
  final $Res Function(_GetWeakWordsInput) _then;

/// Create a copy of GetWeakWordsInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? token = freezed,}) {
  return _then(_GetWeakWordsInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$GetWeakWordsOutput {

 List<WordMemory> get weakWords;
/// Create a copy of GetWeakWordsOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWeakWordsOutputCopyWith<GetWeakWordsOutput> get copyWith => _$GetWeakWordsOutputCopyWithImpl<GetWeakWordsOutput>(this as GetWeakWordsOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetWeakWordsOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWeakWordsOutput&&const DeepCollectionEquality().equals(other.weakWords, _this.weakWords));
}


@override
int get hashCode {
  final _this = this as GetWeakWordsOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.weakWords));
}

@override
String toString() {
  final _this = this as GetWeakWordsOutput;
  return 'GetWeakWordsOutput(weakWords: ${_this.weakWords})';
}


}

/// @nodoc
abstract mixin class $GetWeakWordsOutputCopyWith<$Res>  {
  factory $GetWeakWordsOutputCopyWith(GetWeakWordsOutput value, $Res Function(GetWeakWordsOutput) _then) = _$GetWeakWordsOutputCopyWithImpl;
@useResult
$Res call({
 List<WordMemory> weakWords
});




}
/// @nodoc
class _$GetWeakWordsOutputCopyWithImpl<$Res>
    implements $GetWeakWordsOutputCopyWith<$Res> {
  _$GetWeakWordsOutputCopyWithImpl(this._self, this._then);

  final GetWeakWordsOutput _self;
  final $Res Function(GetWeakWordsOutput) _then;

/// Create a copy of GetWeakWordsOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weakWords = null,}) {
  return _then(GetWeakWordsOutput(
weakWords: null == weakWords ? _self.weakWords : weakWords // ignore: cast_nullable_to_non_nullable
as List<WordMemory>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetWeakWordsOutput].
extension GetWeakWordsOutputPatterns on GetWeakWordsOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetWeakWordsOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetWeakWordsOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetWeakWordsOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetWeakWordsOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetWeakWordsOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetWeakWordsOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WordMemory> weakWords)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetWeakWordsOutput() when $default != null:
return $default(_that.weakWords);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WordMemory> weakWords)  $default,) {final _that = this;
switch (_that) {
case _GetWeakWordsOutput():
return $default(_that.weakWords);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WordMemory> weakWords)?  $default,) {final _that = this;
switch (_that) {
case _GetWeakWordsOutput() when $default != null:
return $default(_that.weakWords);case _:
  return null;

}
}

}

/// @nodoc


class _GetWeakWordsOutput extends GetWeakWordsOutput {
  const _GetWeakWordsOutput({ List<WordMemory> weakWords = const []}): _weakWords = weakWords,super._();
  

 final  List<WordMemory> _weakWords;
@override@JsonKey() List<WordMemory> get weakWords {
  if (_weakWords is EqualUnmodifiableListView) return _weakWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weakWords);
}


/// Create a copy of GetWeakWordsOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetWeakWordsOutputCopyWith<_GetWeakWordsOutput> get copyWith => __$GetWeakWordsOutputCopyWithImpl<_GetWeakWordsOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetWeakWordsOutput&&const DeepCollectionEquality().equals(other.weakWords, _weakWords));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_weakWords));
}

@override
String toString() {
    return 'GetWeakWordsOutput(weakWords: $weakWords)';
}


}

/// @nodoc
abstract mixin class _$GetWeakWordsOutputCopyWith<$Res> implements $GetWeakWordsOutputCopyWith<$Res> {
  factory _$GetWeakWordsOutputCopyWith(_GetWeakWordsOutput value, $Res Function(_GetWeakWordsOutput) _then) = __$GetWeakWordsOutputCopyWithImpl;
@override @useResult
$Res call({
 List<WordMemory> weakWords
});




}
/// @nodoc
class __$GetWeakWordsOutputCopyWithImpl<$Res>
    implements _$GetWeakWordsOutputCopyWith<$Res> {
  __$GetWeakWordsOutputCopyWithImpl(this._self, this._then);

  final _GetWeakWordsOutput _self;
  final $Res Function(_GetWeakWordsOutput) _then;

/// Create a copy of GetWeakWordsOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weakWords = null,}) {
  return _then(_GetWeakWordsOutput(
weakWords: null == weakWords ? _self._weakWords : weakWords // ignore: cast_nullable_to_non_nullable
as List<WordMemory>,
  ));
}


}

// dart format on
