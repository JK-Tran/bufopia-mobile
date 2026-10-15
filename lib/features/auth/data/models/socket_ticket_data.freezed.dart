// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_ticket_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketTicketData {

@JsonKey(name: 'ticket') String get ticket;@JsonKey(name: 'expiresAt') int? get expiresAt;
/// Create a copy of SocketTicketData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketTicketDataCopyWith<SocketTicketData> get copyWith => _$SocketTicketDataCopyWithImpl<SocketTicketData>(this as SocketTicketData, _$identity);

  /// Serializes this SocketTicketData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SocketTicketData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketTicketData&&(identical(other.ticket, _this.ticket) || other.ticket == _this.ticket)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SocketTicketData;
  return Object.hash(runtimeType,_this.ticket,_this.expiresAt);
}

@override
String toString() {
  final _this = this as SocketTicketData;
  return 'SocketTicketData(ticket: ${_this.ticket}, expiresAt: ${_this.expiresAt})';
}


}

/// @nodoc
abstract mixin class $SocketTicketDataCopyWith<$Res>  {
  factory $SocketTicketDataCopyWith(SocketTicketData value, $Res Function(SocketTicketData) _then) = _$SocketTicketDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ticket') String ticket,@JsonKey(name: 'expiresAt') int? expiresAt
});




}
/// @nodoc
class _$SocketTicketDataCopyWithImpl<$Res>
    implements $SocketTicketDataCopyWith<$Res> {
  _$SocketTicketDataCopyWithImpl(this._self, this._then);

  final SocketTicketData _self;
  final $Res Function(SocketTicketData) _then;

/// Create a copy of SocketTicketData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticket = null,Object? expiresAt = freezed,}) {
  return _then(SocketTicketData(
ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocketTicketData].
extension SocketTicketDataPatterns on SocketTicketData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocketTicketData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocketTicketData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocketTicketData value)  $default,){
final _that = this;
switch (_that) {
case _SocketTicketData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocketTicketData value)?  $default,){
final _that = this;
switch (_that) {
case _SocketTicketData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket')  String ticket, @JsonKey(name: 'expiresAt')  int? expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocketTicketData() when $default != null:
return $default(_that.ticket,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ticket')  String ticket, @JsonKey(name: 'expiresAt')  int? expiresAt)  $default,) {final _that = this;
switch (_that) {
case _SocketTicketData():
return $default(_that.ticket,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ticket')  String ticket, @JsonKey(name: 'expiresAt')  int? expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _SocketTicketData() when $default != null:
return $default(_that.ticket,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocketTicketData extends SocketTicketData {
  const _SocketTicketData({@JsonKey(name: 'ticket') this.ticket = '', @JsonKey(name: 'expiresAt') this.expiresAt}): super._();
  factory _SocketTicketData.fromJson(Map<String, dynamic> json) => _$SocketTicketDataFromJson(json);

@override@JsonKey(name: 'ticket') final  String ticket;
@override@JsonKey(name: 'expiresAt') final  int? expiresAt;

/// Create a copy of SocketTicketData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketTicketDataCopyWith<_SocketTicketData> get copyWith => __$SocketTicketDataCopyWithImpl<_SocketTicketData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocketTicketDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketTicketData&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ticket,expiresAt);
}

@override
String toString() {
    return 'SocketTicketData(ticket: $ticket, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$SocketTicketDataCopyWith<$Res> implements $SocketTicketDataCopyWith<$Res> {
  factory _$SocketTicketDataCopyWith(_SocketTicketData value, $Res Function(_SocketTicketData) _then) = __$SocketTicketDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ticket') String ticket,@JsonKey(name: 'expiresAt') int? expiresAt
});




}
/// @nodoc
class __$SocketTicketDataCopyWithImpl<$Res>
    implements _$SocketTicketDataCopyWith<$Res> {
  __$SocketTicketDataCopyWithImpl(this._self, this._then);

  final _SocketTicketData _self;
  final $Res Function(_SocketTicketData) _then;

/// Create a copy of SocketTicketData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticket = null,Object? expiresAt = freezed,}) {
  return _then(_SocketTicketData(
ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
