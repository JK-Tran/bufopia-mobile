// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'turn_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TurnMessage {

 int get actor; Word get entry; int get time;
/// Create a copy of TurnMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TurnMessageCopyWith<TurnMessage> get copyWith => _$TurnMessageCopyWithImpl<TurnMessage>(this as TurnMessage, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TurnMessage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TurnMessage&&(identical(other.actor, _this.actor) || other.actor == _this.actor)&&(identical(other.entry, _this.entry) || other.entry == _this.entry)&&(identical(other.time, _this.time) || other.time == _this.time));
}


@override
int get hashCode {
  final _this = this as TurnMessage;
  return Object.hash(runtimeType,_this.actor,_this.entry,_this.time);
}

@override
String toString() {
  final _this = this as TurnMessage;
  return 'TurnMessage(actor: ${_this.actor}, entry: ${_this.entry}, time: ${_this.time})';
}


}

/// @nodoc
abstract mixin class $TurnMessageCopyWith<$Res>  {
  factory $TurnMessageCopyWith(TurnMessage value, $Res Function(TurnMessage) _then) = _$TurnMessageCopyWithImpl;
@useResult
$Res call({
 int actor, Word entry, int time
});


$WordCopyWith<$Res> get entry;

}
/// @nodoc
class _$TurnMessageCopyWithImpl<$Res>
    implements $TurnMessageCopyWith<$Res> {
  _$TurnMessageCopyWithImpl(this._self, this._then);

  final TurnMessage _self;
  final $Res Function(TurnMessage) _then;

/// Create a copy of TurnMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? actor = null,Object? entry = null,Object? time = null,}) {
  return _then(TurnMessage(
actor: null == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as int,entry: null == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as Word,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of TurnMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordCopyWith<$Res> get entry {
  
  return $WordCopyWith<$Res>(_self.entry, (value) {
    return _then(_self.copyWith(entry: value));
  });
}
}


/// Adds pattern-matching-related methods to [TurnMessage].
extension TurnMessagePatterns on TurnMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TurnMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TurnMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TurnMessage value)  $default,){
final _that = this;
switch (_that) {
case _TurnMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TurnMessage value)?  $default,){
final _that = this;
switch (_that) {
case _TurnMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int actor,  Word entry,  int time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TurnMessage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int actor,  Word entry,  int time)  $default,) {final _that = this;
switch (_that) {
case _TurnMessage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int actor,  Word entry,  int time)?  $default,) {final _that = this;
switch (_that) {
case _TurnMessage() when $default != null:
return $default(_that.actor,_that.entry,_that.time);case _:
  return null;

}
}

}

/// @nodoc


class _TurnMessage implements TurnMessage {
  const _TurnMessage({this.actor = 0, this.entry = const Word(), this.time = 0});
  

@override@JsonKey() final  int actor;
@override@JsonKey() final  Word entry;
@override@JsonKey() final  int time;

/// Create a copy of TurnMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TurnMessageCopyWith<_TurnMessage> get copyWith => __$TurnMessageCopyWithImpl<_TurnMessage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TurnMessage&&(identical(other.actor, actor) || other.actor == actor)&&(identical(other.entry, entry) || other.entry == entry)&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode {
    return Object.hash(runtimeType,actor,entry,time);
}

@override
String toString() {
    return 'TurnMessage(actor: $actor, entry: $entry, time: $time)';
}


}

/// @nodoc
abstract mixin class _$TurnMessageCopyWith<$Res> implements $TurnMessageCopyWith<$Res> {
  factory _$TurnMessageCopyWith(_TurnMessage value, $Res Function(_TurnMessage) _then) = __$TurnMessageCopyWithImpl;
@override @useResult
$Res call({
 int actor, Word entry, int time
});


@override $WordCopyWith<$Res> get entry;

}
/// @nodoc
class __$TurnMessageCopyWithImpl<$Res>
    implements _$TurnMessageCopyWith<$Res> {
  __$TurnMessageCopyWithImpl(this._self, this._then);

  final _TurnMessage _self;
  final $Res Function(_TurnMessage) _then;

/// Create a copy of TurnMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? actor = null,Object? entry = null,Object? time = null,}) {
  return _then(_TurnMessage(
actor: null == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as int,entry: null == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as Word,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of TurnMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordCopyWith<$Res> get entry {
  
  return $WordCopyWith<$Res>(_self.entry, (value) {
    return _then(_self.copyWith(entry: value));
  });
}
}

// dart format on
