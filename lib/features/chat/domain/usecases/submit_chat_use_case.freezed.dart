// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_chat_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitChatInput {

 String get message;
/// Create a copy of SubmitChatInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitChatInputCopyWith<SubmitChatInput> get copyWith => _$SubmitChatInputCopyWithImpl<SubmitChatInput>(this as SubmitChatInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitChatInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitChatInput&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as SubmitChatInput;
  return Object.hash(runtimeType,_this.message);
}

@override
String toString() {
  final _this = this as SubmitChatInput;
  return 'SubmitChatInput(message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $SubmitChatInputCopyWith<$Res>  {
  factory $SubmitChatInputCopyWith(SubmitChatInput value, $Res Function(SubmitChatInput) _then) = _$SubmitChatInputCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SubmitChatInputCopyWithImpl<$Res>
    implements $SubmitChatInputCopyWith<$Res> {
  _$SubmitChatInputCopyWithImpl(this._self, this._then);

  final SubmitChatInput _self;
  final $Res Function(SubmitChatInput) _then;

/// Create a copy of SubmitChatInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(SubmitChatInput(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitChatInput].
extension SubmitChatInputPatterns on SubmitChatInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitChatInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitChatInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitChatInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitChatInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitChatInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitChatInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitChatInput() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _SubmitChatInput():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _SubmitChatInput() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitChatInput extends SubmitChatInput {
  const _SubmitChatInput({required this.message}): super._();
  

@override final  String message;

/// Create a copy of SubmitChatInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitChatInputCopyWith<_SubmitChatInput> get copyWith => __$SubmitChatInputCopyWithImpl<_SubmitChatInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitChatInput&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'SubmitChatInput(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SubmitChatInputCopyWith<$Res> implements $SubmitChatInputCopyWith<$Res> {
  factory _$SubmitChatInputCopyWith(_SubmitChatInput value, $Res Function(_SubmitChatInput) _then) = __$SubmitChatInputCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SubmitChatInputCopyWithImpl<$Res>
    implements _$SubmitChatInputCopyWith<$Res> {
  __$SubmitChatInputCopyWithImpl(this._self, this._then);

  final _SubmitChatInput _self;
  final $Res Function(_SubmitChatInput) _then;

/// Create a copy of SubmitChatInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SubmitChatInput(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SubmitChatOutput {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitChatOutput);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SubmitChatOutput()';
}


}

/// @nodoc
class $SubmitChatOutputCopyWith<$Res>  {
$SubmitChatOutputCopyWith(SubmitChatOutput _, $Res Function(SubmitChatOutput) __);
}


/// Adds pattern-matching-related methods to [SubmitChatOutput].
extension SubmitChatOutputPatterns on SubmitChatOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitChatOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitChatOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitChatOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitChatOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitChatOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitChatOutput() when $default != null:
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
case _SubmitChatOutput() when $default != null:
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
case _SubmitChatOutput():
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
case _SubmitChatOutput() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc


class _SubmitChatOutput extends SubmitChatOutput {
  const _SubmitChatOutput(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitChatOutput);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SubmitChatOutput()';
}


}




// dart format on
