// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_vocabulary_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetVocabularyInput {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GetVocabularyInput);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GetVocabularyInput()';
}


}

/// @nodoc
class $GetVocabularyInputCopyWith<$Res>  {
$GetVocabularyInputCopyWith(GetVocabularyInput _, $Res Function(GetVocabularyInput) __);
}


/// Adds pattern-matching-related methods to [GetVocabularyInput].
extension GetVocabularyInputPatterns on GetVocabularyInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetVocabularyInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetVocabularyInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetVocabularyInput value)  $default,){
final _that = this;
switch (_that) {
case _GetVocabularyInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetVocabularyInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetVocabularyInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetVocabularyInput() when $default != null:
return $default();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,) {final _that = this;
switch (_that) {
case _GetVocabularyInput():
return $default();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,) {final _that = this;
switch (_that) {
case _GetVocabularyInput() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc


class _GetVocabularyInput extends GetVocabularyInput {
  const _GetVocabularyInput(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetVocabularyInput);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'GetVocabularyInput()';
}


}




/// @nodoc
mixin _$GetVocabularyOutput {

 VocabularyEntity get vocabulary;
/// Create a copy of GetVocabularyOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetVocabularyOutputCopyWith<GetVocabularyOutput> get copyWith => _$GetVocabularyOutputCopyWithImpl<GetVocabularyOutput>(this as GetVocabularyOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetVocabularyOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetVocabularyOutput&&(identical(other.vocabulary, _this.vocabulary) || other.vocabulary == _this.vocabulary));
}


@override
int get hashCode {
  final _this = this as GetVocabularyOutput;
  return Object.hash(runtimeType,_this.vocabulary);
}

@override
String toString() {
  final _this = this as GetVocabularyOutput;
  return 'GetVocabularyOutput(vocabulary: ${_this.vocabulary})';
}


}

/// @nodoc
abstract mixin class $GetVocabularyOutputCopyWith<$Res>  {
  factory $GetVocabularyOutputCopyWith(GetVocabularyOutput value, $Res Function(GetVocabularyOutput) _then) = _$GetVocabularyOutputCopyWithImpl;
@useResult
$Res call({
 VocabularyEntity vocabulary
});


$VocabularyEntityCopyWith<$Res> get vocabulary;

}
/// @nodoc
class _$GetVocabularyOutputCopyWithImpl<$Res>
    implements $GetVocabularyOutputCopyWith<$Res> {
  _$GetVocabularyOutputCopyWithImpl(this._self, this._then);

  final GetVocabularyOutput _self;
  final $Res Function(GetVocabularyOutput) _then;

/// Create a copy of GetVocabularyOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vocabulary = null,}) {
  return _then(GetVocabularyOutput(
null == vocabulary ? _self.vocabulary : vocabulary // ignore: cast_nullable_to_non_nullable
as VocabularyEntity,
  ));
}
/// Create a copy of GetVocabularyOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VocabularyEntityCopyWith<$Res> get vocabulary {
  
  return $VocabularyEntityCopyWith<$Res>(_self.vocabulary, (value) {
    return _then(_self.copyWith(vocabulary: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetVocabularyOutput].
extension GetVocabularyOutputPatterns on GetVocabularyOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetVocabularyOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetVocabularyOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetVocabularyOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetVocabularyOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetVocabularyOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetVocabularyOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VocabularyEntity vocabulary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetVocabularyOutput() when $default != null:
return $default(_that.vocabulary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VocabularyEntity vocabulary)  $default,) {final _that = this;
switch (_that) {
case _GetVocabularyOutput():
return $default(_that.vocabulary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VocabularyEntity vocabulary)?  $default,) {final _that = this;
switch (_that) {
case _GetVocabularyOutput() when $default != null:
return $default(_that.vocabulary);case _:
  return null;

}
}

}

/// @nodoc


class _GetVocabularyOutput extends GetVocabularyOutput {
  const _GetVocabularyOutput(this.vocabulary): super._();
  

@override final  VocabularyEntity vocabulary;

/// Create a copy of GetVocabularyOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetVocabularyOutputCopyWith<_GetVocabularyOutput> get copyWith => __$GetVocabularyOutputCopyWithImpl<_GetVocabularyOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetVocabularyOutput&&(identical(other.vocabulary, vocabulary) || other.vocabulary == vocabulary));
}


@override
int get hashCode {
    return Object.hash(runtimeType,vocabulary);
}

@override
String toString() {
    return 'GetVocabularyOutput(vocabulary: $vocabulary)';
}


}

/// @nodoc
abstract mixin class _$GetVocabularyOutputCopyWith<$Res> implements $GetVocabularyOutputCopyWith<$Res> {
  factory _$GetVocabularyOutputCopyWith(_GetVocabularyOutput value, $Res Function(_GetVocabularyOutput) _then) = __$GetVocabularyOutputCopyWithImpl;
@override @useResult
$Res call({
 VocabularyEntity vocabulary
});


@override $VocabularyEntityCopyWith<$Res> get vocabulary;

}
/// @nodoc
class __$GetVocabularyOutputCopyWithImpl<$Res>
    implements _$GetVocabularyOutputCopyWith<$Res> {
  __$GetVocabularyOutputCopyWithImpl(this._self, this._then);

  final _GetVocabularyOutput _self;
  final $Res Function(_GetVocabularyOutput) _then;

/// Create a copy of GetVocabularyOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vocabulary = null,}) {
  return _then(_GetVocabularyOutput(
null == vocabulary ? _self.vocabulary : vocabulary // ignore: cast_nullable_to_non_nullable
as VocabularyEntity,
  ));
}

/// Create a copy of GetVocabularyOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VocabularyEntityCopyWith<$Res> get vocabulary {
  
  return $VocabularyEntityCopyWith<$Res>(_self.vocabulary, (value) {
    return _then(_self.copyWith(vocabulary: value));
  });
}
}

// dart format on
