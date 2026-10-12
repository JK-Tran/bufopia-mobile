// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turn_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TurnMessageData {

@JsonKey(name: 'actor') int get actor;@JsonKey(name: 'entry') WordData get entry;@JsonKey(name: 'time') int? get time;
/// Create a copy of TurnMessageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TurnMessageDataCopyWith<TurnMessageData> get copyWith => _$TurnMessageDataCopyWithImpl<TurnMessageData>(this as TurnMessageData, _$identity);

  /// Serializes this TurnMessageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TurnMessageData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TurnMessageData&&(identical(other.actor, _this.actor) || other.actor == _this.actor)&&(identical(other.entry, _this.entry) || other.entry == _this.entry)&&(identical(other.time, _this.time) || other.time == _this.time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TurnMessageData;
  return Object.hash(runtimeType,_this.actor,_this.entry,_this.time);
}

@override
String toString() {
  final _this = this as TurnMessageData;
  return 'TurnMessageData(actor: ${_this.actor}, entry: ${_this.entry}, time: ${_this.time})';
}


}

/// @nodoc
abstract mixin class $TurnMessageDataCopyWith<$Res>  {
  factory $TurnMessageDataCopyWith(TurnMessageData value, $Res Function(TurnMessageData) _then) = _$TurnMessageDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'actor') int actor,@JsonKey(name: 'entry') WordData entry,@JsonKey(name: 'time') int? time
});


$WordDataCopyWith<$Res> get entry;

}
/// @nodoc
class _$TurnMessageDataCopyWithImpl<$Res>
    implements $TurnMessageDataCopyWith<$Res> {
  _$TurnMessageDataCopyWithImpl(this._self, this._then);

  final TurnMessageData _self;
  final $Res Function(TurnMessageData) _then;

/// Create a copy of TurnMessageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? actor = null,Object? entry = null,Object? time = freezed,}) {
  return _then(TurnMessageData(
actor: null == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as int,entry: null == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as WordData,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of TurnMessageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordDataCopyWith<$Res> get entry {
  
  return $WordDataCopyWith<$Res>(_self.entry, (value) {
    return _then(_self.copyWith(entry: value));
  });
}
}


/// Adds pattern-matching-related methods to [TurnMessageData].
extension TurnMessageDataPatterns on TurnMessageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TurnMessageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TurnMessageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TurnMessageData value)  $default,){
final _that = this;
switch (_that) {
case _TurnMessageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TurnMessageData value)?  $default,){
final _that = this;
switch (_that) {
case _TurnMessageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'actor')  int actor, @JsonKey(name: 'entry')  WordData entry, @JsonKey(name: 'time')  int? time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TurnMessageData() when $default != null:
return $default(_that.actor,_that.entry,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'actor')  int actor, @JsonKey(name: 'entry')  WordData entry, @JsonKey(name: 'time')  int? time)  $default,) {final _that = this;
switch (_that) {
case _TurnMessageData():
return $default(_that.actor,_that.entry,_that.time);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'actor')  int actor, @JsonKey(name: 'entry')  WordData entry, @JsonKey(name: 'time')  int? time)?  $default,) {final _that = this;
switch (_that) {
case _TurnMessageData() when $default != null:
return $default(_that.actor,_that.entry,_that.time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TurnMessageData extends TurnMessageData {
  const _TurnMessageData({@JsonKey(name: 'actor') required this.actor, @JsonKey(name: 'entry') required this.entry, @JsonKey(name: 'time') this.time}): super._();
  factory _TurnMessageData.fromJson(Map<String, dynamic> json) => _$TurnMessageDataFromJson(json);

@override@JsonKey(name: 'actor') final  int actor;
@override@JsonKey(name: 'entry') final  WordData entry;
@override@JsonKey(name: 'time') final  int? time;

/// Create a copy of TurnMessageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TurnMessageDataCopyWith<_TurnMessageData> get copyWith => __$TurnMessageDataCopyWithImpl<_TurnMessageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TurnMessageDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TurnMessageData&&(identical(other.actor, actor) || other.actor == actor)&&(identical(other.entry, entry) || other.entry == entry)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,actor,entry,time);
}

@override
String toString() {
    return 'TurnMessageData(actor: $actor, entry: $entry, time: $time)';
}


}

/// @nodoc
abstract mixin class _$TurnMessageDataCopyWith<$Res> implements $TurnMessageDataCopyWith<$Res> {
  factory _$TurnMessageDataCopyWith(_TurnMessageData value, $Res Function(_TurnMessageData) _then) = __$TurnMessageDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'actor') int actor,@JsonKey(name: 'entry') WordData entry,@JsonKey(name: 'time') int? time
});


@override $WordDataCopyWith<$Res> get entry;

}
/// @nodoc
class __$TurnMessageDataCopyWithImpl<$Res>
    implements _$TurnMessageDataCopyWith<$Res> {
  __$TurnMessageDataCopyWithImpl(this._self, this._then);

  final _TurnMessageData _self;
  final $Res Function(_TurnMessageData) _then;

/// Create a copy of TurnMessageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? actor = null,Object? entry = null,Object? time = freezed,}) {
  return _then(_TurnMessageData(
actor: null == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as int,entry: null == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as WordData,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of TurnMessageData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordDataCopyWith<$Res> get entry {
  
  return $WordDataCopyWith<$Res>(_self.entry, (value) {
    return _then(_self.copyWith(entry: value));
  });
}
}

// dart format on
