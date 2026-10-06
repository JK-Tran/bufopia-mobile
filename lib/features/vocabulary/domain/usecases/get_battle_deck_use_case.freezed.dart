// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_battle_deck_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetBattleDeckInput {

 String get topic; String? get uid; String? get opponentUid; int get count; String? get recent;
/// Create a copy of GetBattleDeckInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBattleDeckInputCopyWith<GetBattleDeckInput> get copyWith => _$GetBattleDeckInputCopyWithImpl<GetBattleDeckInput>(this as GetBattleDeckInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetBattleDeckInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBattleDeckInput&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.opponentUid, _this.opponentUid) || other.opponentUid == _this.opponentUid)&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.recent, _this.recent) || other.recent == _this.recent));
}


@override
int get hashCode {
  final _this = this as GetBattleDeckInput;
  return Object.hash(runtimeType,_this.topic,_this.uid,_this.opponentUid,_this.count,_this.recent);
}

@override
String toString() {
  final _this = this as GetBattleDeckInput;
  return 'GetBattleDeckInput(topic: ${_this.topic}, uid: ${_this.uid}, opponentUid: ${_this.opponentUid}, count: ${_this.count}, recent: ${_this.recent})';
}


}

/// @nodoc
abstract mixin class $GetBattleDeckInputCopyWith<$Res>  {
  factory $GetBattleDeckInputCopyWith(GetBattleDeckInput value, $Res Function(GetBattleDeckInput) _then) = _$GetBattleDeckInputCopyWithImpl;
@useResult
$Res call({
 String topic, String? uid, String? opponentUid, int count, String? recent
});




}
/// @nodoc
class _$GetBattleDeckInputCopyWithImpl<$Res>
    implements $GetBattleDeckInputCopyWith<$Res> {
  _$GetBattleDeckInputCopyWithImpl(this._self, this._then);

  final GetBattleDeckInput _self;
  final $Res Function(GetBattleDeckInput) _then;

/// Create a copy of GetBattleDeckInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topic = null,Object? uid = freezed,Object? opponentUid = freezed,Object? count = null,Object? recent = freezed,}) {
  return _then(GetBattleDeckInput(
topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,opponentUid: freezed == opponentUid ? _self.opponentUid : opponentUid // ignore: cast_nullable_to_non_nullable
as String?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,recent: freezed == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBattleDeckInput].
extension GetBattleDeckInputPatterns on GetBattleDeckInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBattleDeckInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBattleDeckInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBattleDeckInput value)  $default,){
final _that = this;
switch (_that) {
case _GetBattleDeckInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBattleDeckInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetBattleDeckInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String topic,  String? uid,  String? opponentUid,  int count,  String? recent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBattleDeckInput() when $default != null:
return $default(_that.topic,_that.uid,_that.opponentUid,_that.count,_that.recent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String topic,  String? uid,  String? opponentUid,  int count,  String? recent)  $default,) {final _that = this;
switch (_that) {
case _GetBattleDeckInput():
return $default(_that.topic,_that.uid,_that.opponentUid,_that.count,_that.recent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String topic,  String? uid,  String? opponentUid,  int count,  String? recent)?  $default,) {final _that = this;
switch (_that) {
case _GetBattleDeckInput() when $default != null:
return $default(_that.topic,_that.uid,_that.opponentUid,_that.count,_that.recent);case _:
  return null;

}
}

}

/// @nodoc


class _GetBattleDeckInput extends GetBattleDeckInput {
  const _GetBattleDeckInput({this.topic = 'auto', this.uid, this.opponentUid, this.count = 15, this.recent}): super._();
  

@override@JsonKey() final  String topic;
@override final  String? uid;
@override final  String? opponentUid;
@override@JsonKey() final  int count;
@override final  String? recent;

/// Create a copy of GetBattleDeckInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBattleDeckInputCopyWith<_GetBattleDeckInput> get copyWith => __$GetBattleDeckInputCopyWithImpl<_GetBattleDeckInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBattleDeckInput&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.opponentUid, opponentUid) || other.opponentUid == opponentUid)&&(identical(other.count, count) || other.count == count)&&(identical(other.recent, recent) || other.recent == recent));
}


@override
int get hashCode {
    return Object.hash(runtimeType,topic,uid,opponentUid,count,recent);
}

@override
String toString() {
    return 'GetBattleDeckInput(topic: $topic, uid: $uid, opponentUid: $opponentUid, count: $count, recent: $recent)';
}


}

/// @nodoc
abstract mixin class _$GetBattleDeckInputCopyWith<$Res> implements $GetBattleDeckInputCopyWith<$Res> {
  factory _$GetBattleDeckInputCopyWith(_GetBattleDeckInput value, $Res Function(_GetBattleDeckInput) _then) = __$GetBattleDeckInputCopyWithImpl;
@override @useResult
$Res call({
 String topic, String? uid, String? opponentUid, int count, String? recent
});




}
/// @nodoc
class __$GetBattleDeckInputCopyWithImpl<$Res>
    implements _$GetBattleDeckInputCopyWith<$Res> {
  __$GetBattleDeckInputCopyWithImpl(this._self, this._then);

  final _GetBattleDeckInput _self;
  final $Res Function(_GetBattleDeckInput) _then;

/// Create a copy of GetBattleDeckInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topic = null,Object? uid = freezed,Object? opponentUid = freezed,Object? count = null,Object? recent = freezed,}) {
  return _then(_GetBattleDeckInput(
topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,opponentUid: freezed == opponentUid ? _self.opponentUid : opponentUid // ignore: cast_nullable_to_non_nullable
as String?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,recent: freezed == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$GetBattleDeckOutput {

 BattleDeckEntity get deck;
/// Create a copy of GetBattleDeckOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBattleDeckOutputCopyWith<GetBattleDeckOutput> get copyWith => _$GetBattleDeckOutputCopyWithImpl<GetBattleDeckOutput>(this as GetBattleDeckOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetBattleDeckOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBattleDeckOutput&&(identical(other.deck, _this.deck) || other.deck == _this.deck));
}


@override
int get hashCode {
  final _this = this as GetBattleDeckOutput;
  return Object.hash(runtimeType,_this.deck);
}

@override
String toString() {
  final _this = this as GetBattleDeckOutput;
  return 'GetBattleDeckOutput(deck: ${_this.deck})';
}


}

/// @nodoc
abstract mixin class $GetBattleDeckOutputCopyWith<$Res>  {
  factory $GetBattleDeckOutputCopyWith(GetBattleDeckOutput value, $Res Function(GetBattleDeckOutput) _then) = _$GetBattleDeckOutputCopyWithImpl;
@useResult
$Res call({
 BattleDeckEntity deck
});


$BattleDeckEntityCopyWith<$Res> get deck;

}
/// @nodoc
class _$GetBattleDeckOutputCopyWithImpl<$Res>
    implements $GetBattleDeckOutputCopyWith<$Res> {
  _$GetBattleDeckOutputCopyWithImpl(this._self, this._then);

  final GetBattleDeckOutput _self;
  final $Res Function(GetBattleDeckOutput) _then;

/// Create a copy of GetBattleDeckOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deck = null,}) {
  return _then(GetBattleDeckOutput(
null == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as BattleDeckEntity,
  ));
}
/// Create a copy of GetBattleDeckOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleDeckEntityCopyWith<$Res> get deck {
  
  return $BattleDeckEntityCopyWith<$Res>(_self.deck, (value) {
    return _then(_self.copyWith(deck: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetBattleDeckOutput].
extension GetBattleDeckOutputPatterns on GetBattleDeckOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBattleDeckOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBattleDeckOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBattleDeckOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetBattleDeckOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBattleDeckOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetBattleDeckOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BattleDeckEntity deck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBattleDeckOutput() when $default != null:
return $default(_that.deck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BattleDeckEntity deck)  $default,) {final _that = this;
switch (_that) {
case _GetBattleDeckOutput():
return $default(_that.deck);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BattleDeckEntity deck)?  $default,) {final _that = this;
switch (_that) {
case _GetBattleDeckOutput() when $default != null:
return $default(_that.deck);case _:
  return null;

}
}

}

/// @nodoc


class _GetBattleDeckOutput extends GetBattleDeckOutput {
  const _GetBattleDeckOutput(this.deck): super._();
  

@override final  BattleDeckEntity deck;

/// Create a copy of GetBattleDeckOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBattleDeckOutputCopyWith<_GetBattleDeckOutput> get copyWith => __$GetBattleDeckOutputCopyWithImpl<_GetBattleDeckOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBattleDeckOutput&&(identical(other.deck, deck) || other.deck == deck));
}


@override
int get hashCode {
    return Object.hash(runtimeType,deck);
}

@override
String toString() {
    return 'GetBattleDeckOutput(deck: $deck)';
}


}

/// @nodoc
abstract mixin class _$GetBattleDeckOutputCopyWith<$Res> implements $GetBattleDeckOutputCopyWith<$Res> {
  factory _$GetBattleDeckOutputCopyWith(_GetBattleDeckOutput value, $Res Function(_GetBattleDeckOutput) _then) = __$GetBattleDeckOutputCopyWithImpl;
@override @useResult
$Res call({
 BattleDeckEntity deck
});


@override $BattleDeckEntityCopyWith<$Res> get deck;

}
/// @nodoc
class __$GetBattleDeckOutputCopyWithImpl<$Res>
    implements _$GetBattleDeckOutputCopyWith<$Res> {
  __$GetBattleDeckOutputCopyWithImpl(this._self, this._then);

  final _GetBattleDeckOutput _self;
  final $Res Function(_GetBattleDeckOutput) _then;

/// Create a copy of GetBattleDeckOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deck = null,}) {
  return _then(_GetBattleDeckOutput(
null == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as BattleDeckEntity,
  ));
}

/// Create a copy of GetBattleDeckOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleDeckEntityCopyWith<$Res> get deck {
  
  return $BattleDeckEntityCopyWith<$Res>(_self.deck, (value) {
    return _then(_self.copyWith(deck: value));
  });
}
}

// dart format on
