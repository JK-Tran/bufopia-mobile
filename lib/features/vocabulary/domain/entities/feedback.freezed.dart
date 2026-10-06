// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Feedback {

 bool get success; String? get id; int? get createdAt; String? get message;
/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackCopyWith<Feedback> get copyWith => _$FeedbackCopyWithImpl<Feedback>(this as Feedback, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Feedback;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feedback&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as Feedback;
  return Object.hash(runtimeType,_this.success,_this.id,_this.createdAt,_this.message);
}

@override
String toString() {
  final _this = this as Feedback;
  return 'Feedback(success: ${_this.success}, id: ${_this.id}, createdAt: ${_this.createdAt}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $FeedbackCopyWith<$Res>  {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) _then) = _$FeedbackCopyWithImpl;
@useResult
$Res call({
 bool success, String? id, int? createdAt, String? message
});




}
/// @nodoc
class _$FeedbackCopyWithImpl<$Res>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._self, this._then);

  final Feedback _self;
  final $Res Function(Feedback) _then;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? id = freezed,Object? createdAt = freezed,Object? message = freezed,}) {
  return _then(Feedback(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Feedback].
extension FeedbackPatterns on Feedback {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Feedback value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Feedback() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Feedback value)  $default,){
final _that = this;
switch (_that) {
case _Feedback():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Feedback value)?  $default,){
final _that = this;
switch (_that) {
case _Feedback() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? id,  int? createdAt,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Feedback() when $default != null:
return $default(_that.success,_that.id,_that.createdAt,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? id,  int? createdAt,  String? message)  $default,) {final _that = this;
switch (_that) {
case _Feedback():
return $default(_that.success,_that.id,_that.createdAt,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? id,  int? createdAt,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _Feedback() when $default != null:
return $default(_that.success,_that.id,_that.createdAt,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Feedback implements Feedback {
  const _Feedback({this.success = false, this.id, this.createdAt, this.message});
  

@override@JsonKey() final  bool success;
@override final  String? id;
@override final  int? createdAt;
@override final  String? message;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackCopyWith<_Feedback> get copyWith => __$FeedbackCopyWithImpl<_Feedback>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Feedback&&(identical(other.success, success) || other.success == success)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success,id,createdAt,message);
}

@override
String toString() {
    return 'Feedback(success: $success, id: $id, createdAt: $createdAt, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FeedbackCopyWith<$Res> implements $FeedbackCopyWith<$Res> {
  factory _$FeedbackCopyWith(_Feedback value, $Res Function(_Feedback) _then) = __$FeedbackCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? id, int? createdAt, String? message
});




}
/// @nodoc
class __$FeedbackCopyWithImpl<$Res>
    implements _$FeedbackCopyWith<$Res> {
  __$FeedbackCopyWithImpl(this._self, this._then);

  final _Feedback _self;
  final $Res Function(_Feedback) _then;

/// Create a copy of Feedback
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? id = freezed,Object? createdAt = freezed,Object? message = freezed,}) {
  return _then(_Feedback(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
