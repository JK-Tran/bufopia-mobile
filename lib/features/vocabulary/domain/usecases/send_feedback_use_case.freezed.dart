// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_feedback_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendFeedbackInput {

 String get uid; String get userName; String get category; String get message; String? get contact; String? get page;
/// Create a copy of SendFeedbackInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendFeedbackInputCopyWith<SendFeedbackInput> get copyWith => _$SendFeedbackInputCopyWithImpl<SendFeedbackInput>(this as SendFeedbackInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SendFeedbackInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendFeedbackInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.userName, _this.userName) || other.userName == _this.userName)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.contact, _this.contact) || other.contact == _this.contact)&&(identical(other.page, _this.page) || other.page == _this.page));
}


@override
int get hashCode {
  final _this = this as SendFeedbackInput;
  return Object.hash(runtimeType,_this.uid,_this.userName,_this.category,_this.message,_this.contact,_this.page);
}

@override
String toString() {
  final _this = this as SendFeedbackInput;
  return 'SendFeedbackInput(uid: ${_this.uid}, userName: ${_this.userName}, category: ${_this.category}, message: ${_this.message}, contact: ${_this.contact}, page: ${_this.page})';
}


}

/// @nodoc
abstract mixin class $SendFeedbackInputCopyWith<$Res>  {
  factory $SendFeedbackInputCopyWith(SendFeedbackInput value, $Res Function(SendFeedbackInput) _then) = _$SendFeedbackInputCopyWithImpl;
@useResult
$Res call({
 String uid, String userName, String category, String message, String? contact, String? page
});




}
/// @nodoc
class _$SendFeedbackInputCopyWithImpl<$Res>
    implements $SendFeedbackInputCopyWith<$Res> {
  _$SendFeedbackInputCopyWithImpl(this._self, this._then);

  final SendFeedbackInput _self;
  final $Res Function(SendFeedbackInput) _then;

/// Create a copy of SendFeedbackInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? userName = null,Object? category = null,Object? message = null,Object? contact = freezed,Object? page = freezed,}) {
  return _then(SendFeedbackInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SendFeedbackInput].
extension SendFeedbackInputPatterns on SendFeedbackInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendFeedbackInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendFeedbackInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendFeedbackInput value)  $default,){
final _that = this;
switch (_that) {
case _SendFeedbackInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendFeedbackInput value)?  $default,){
final _that = this;
switch (_that) {
case _SendFeedbackInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String userName,  String category,  String message,  String? contact,  String? page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendFeedbackInput() when $default != null:
return $default(_that.uid,_that.userName,_that.category,_that.message,_that.contact,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String userName,  String category,  String message,  String? contact,  String? page)  $default,) {final _that = this;
switch (_that) {
case _SendFeedbackInput():
return $default(_that.uid,_that.userName,_that.category,_that.message,_that.contact,_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String userName,  String category,  String message,  String? contact,  String? page)?  $default,) {final _that = this;
switch (_that) {
case _SendFeedbackInput() when $default != null:
return $default(_that.uid,_that.userName,_that.category,_that.message,_that.contact,_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _SendFeedbackInput extends SendFeedbackInput {
  const _SendFeedbackInput({required this.uid, required this.userName, required this.category, required this.message, this.contact, this.page}): super._();
  

@override final  String uid;
@override final  String userName;
@override final  String category;
@override final  String message;
@override final  String? contact;
@override final  String? page;

/// Create a copy of SendFeedbackInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendFeedbackInputCopyWith<_SendFeedbackInput> get copyWith => __$SendFeedbackInputCopyWithImpl<_SendFeedbackInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendFeedbackInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.category, category) || other.category == category)&&(identical(other.message, message) || other.message == message)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,userName,category,message,contact,page);
}

@override
String toString() {
    return 'SendFeedbackInput(uid: $uid, userName: $userName, category: $category, message: $message, contact: $contact, page: $page)';
}


}

/// @nodoc
abstract mixin class _$SendFeedbackInputCopyWith<$Res> implements $SendFeedbackInputCopyWith<$Res> {
  factory _$SendFeedbackInputCopyWith(_SendFeedbackInput value, $Res Function(_SendFeedbackInput) _then) = __$SendFeedbackInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String userName, String category, String message, String? contact, String? page
});




}
/// @nodoc
class __$SendFeedbackInputCopyWithImpl<$Res>
    implements _$SendFeedbackInputCopyWith<$Res> {
  __$SendFeedbackInputCopyWithImpl(this._self, this._then);

  final _SendFeedbackInput _self;
  final $Res Function(_SendFeedbackInput) _then;

/// Create a copy of SendFeedbackInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? userName = null,Object? category = null,Object? message = null,Object? contact = freezed,Object? page = freezed,}) {
  return _then(_SendFeedbackInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SendFeedbackOutput {

 Feedback get feedback;
/// Create a copy of SendFeedbackOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendFeedbackOutputCopyWith<SendFeedbackOutput> get copyWith => _$SendFeedbackOutputCopyWithImpl<SendFeedbackOutput>(this as SendFeedbackOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SendFeedbackOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendFeedbackOutput&&(identical(other.feedback, _this.feedback) || other.feedback == _this.feedback));
}


@override
int get hashCode {
  final _this = this as SendFeedbackOutput;
  return Object.hash(runtimeType,_this.feedback);
}

@override
String toString() {
  final _this = this as SendFeedbackOutput;
  return 'SendFeedbackOutput(feedback: ${_this.feedback})';
}


}

/// @nodoc
abstract mixin class $SendFeedbackOutputCopyWith<$Res>  {
  factory $SendFeedbackOutputCopyWith(SendFeedbackOutput value, $Res Function(SendFeedbackOutput) _then) = _$SendFeedbackOutputCopyWithImpl;
@useResult
$Res call({
 Feedback feedback
});


$FeedbackCopyWith<$Res> get feedback;

}
/// @nodoc
class _$SendFeedbackOutputCopyWithImpl<$Res>
    implements $SendFeedbackOutputCopyWith<$Res> {
  _$SendFeedbackOutputCopyWithImpl(this._self, this._then);

  final SendFeedbackOutput _self;
  final $Res Function(SendFeedbackOutput) _then;

/// Create a copy of SendFeedbackOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? feedback = null,}) {
  return _then(SendFeedbackOutput(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as Feedback,
  ));
}
/// Create a copy of SendFeedbackOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackCopyWith<$Res> get feedback {
  
  return $FeedbackCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}


/// Adds pattern-matching-related methods to [SendFeedbackOutput].
extension SendFeedbackOutputPatterns on SendFeedbackOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendFeedbackOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendFeedbackOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendFeedbackOutput value)  $default,){
final _that = this;
switch (_that) {
case _SendFeedbackOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendFeedbackOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SendFeedbackOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Feedback feedback)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendFeedbackOutput() when $default != null:
return $default(_that.feedback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Feedback feedback)  $default,) {final _that = this;
switch (_that) {
case _SendFeedbackOutput():
return $default(_that.feedback);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Feedback feedback)?  $default,) {final _that = this;
switch (_that) {
case _SendFeedbackOutput() when $default != null:
return $default(_that.feedback);case _:
  return null;

}
}

}

/// @nodoc


class _SendFeedbackOutput extends SendFeedbackOutput {
  const _SendFeedbackOutput(this.feedback): super._();
  

@override final  Feedback feedback;

/// Create a copy of SendFeedbackOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendFeedbackOutputCopyWith<_SendFeedbackOutput> get copyWith => __$SendFeedbackOutputCopyWithImpl<_SendFeedbackOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendFeedbackOutput&&(identical(other.feedback, feedback) || other.feedback == feedback));
}


@override
int get hashCode {
    return Object.hash(runtimeType,feedback);
}

@override
String toString() {
    return 'SendFeedbackOutput(feedback: $feedback)';
}


}

/// @nodoc
abstract mixin class _$SendFeedbackOutputCopyWith<$Res> implements $SendFeedbackOutputCopyWith<$Res> {
  factory _$SendFeedbackOutputCopyWith(_SendFeedbackOutput value, $Res Function(_SendFeedbackOutput) _then) = __$SendFeedbackOutputCopyWithImpl;
@override @useResult
$Res call({
 Feedback feedback
});


@override $FeedbackCopyWith<$Res> get feedback;

}
/// @nodoc
class __$SendFeedbackOutputCopyWithImpl<$Res>
    implements _$SendFeedbackOutputCopyWith<$Res> {
  __$SendFeedbackOutputCopyWithImpl(this._self, this._then);

  final _SendFeedbackOutput _self;
  final $Res Function(_SendFeedbackOutput) _then;

/// Create a copy of SendFeedbackOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? feedback = null,}) {
  return _then(_SendFeedbackOutput(
null == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as Feedback,
  ));
}

/// Create a copy of SendFeedbackOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackCopyWith<$Res> get feedback {
  
  return $FeedbackCopyWith<$Res>(_self.feedback, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}

// dart format on
