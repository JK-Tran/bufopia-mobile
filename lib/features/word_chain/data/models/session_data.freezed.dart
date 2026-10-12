// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionData {

@JsonKey(name: 'sessionId') String get sessionId;
/// Create a copy of SessionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionDataCopyWith<SessionData> get copyWith => _$SessionDataCopyWithImpl<SessionData>(this as SessionData, _$identity);

  /// Serializes this SessionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SessionData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionData&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SessionData;
  return Object.hash(runtimeType,_this.sessionId);
}

@override
String toString() {
  final _this = this as SessionData;
  return 'SessionData(sessionId: ${_this.sessionId})';
}


}

/// @nodoc
abstract mixin class $SessionDataCopyWith<$Res>  {
  factory $SessionDataCopyWith(SessionData value, $Res Function(SessionData) _then) = _$SessionDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sessionId') String sessionId
});




}
/// @nodoc
class _$SessionDataCopyWithImpl<$Res>
    implements $SessionDataCopyWith<$Res> {
  _$SessionDataCopyWithImpl(this._self, this._then);

  final SessionData _self;
  final $Res Function(SessionData) _then;

/// Create a copy of SessionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,}) {
  return _then(SessionData(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionData].
extension SessionDataPatterns on SessionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionData value)  $default,){
final _that = this;
switch (_that) {
case _SessionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionData value)?  $default,){
final _that = this;
switch (_that) {
case _SessionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sessionId')  String sessionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionData() when $default != null:
return $default(_that.sessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sessionId')  String sessionId)  $default,) {final _that = this;
switch (_that) {
case _SessionData():
return $default(_that.sessionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sessionId')  String sessionId)?  $default,) {final _that = this;
switch (_that) {
case _SessionData() when $default != null:
return $default(_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionData extends SessionData {
  const _SessionData({@JsonKey(name: 'sessionId') required this.sessionId}): super._();
  factory _SessionData.fromJson(Map<String, dynamic> json) => _$SessionDataFromJson(json);

@override@JsonKey(name: 'sessionId') final  String sessionId;

/// Create a copy of SessionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionDataCopyWith<_SessionData> get copyWith => __$SessionDataCopyWithImpl<_SessionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionData&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,sessionId);
}

@override
String toString() {
    return 'SessionData(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$SessionDataCopyWith<$Res> implements $SessionDataCopyWith<$Res> {
  factory _$SessionDataCopyWith(_SessionData value, $Res Function(_SessionData) _then) = __$SessionDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sessionId') String sessionId
});




}
/// @nodoc
class __$SessionDataCopyWithImpl<$Res>
    implements _$SessionDataCopyWith<$Res> {
  __$SessionDataCopyWithImpl(this._self, this._then);

  final _SessionData _self;
  final $Res Function(_SessionData) _then;

/// Create a copy of SessionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(_SessionData(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
