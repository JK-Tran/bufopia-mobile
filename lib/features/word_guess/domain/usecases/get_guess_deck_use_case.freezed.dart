// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_guess_deck_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetGuessDeckInput {

 String get topic; String? get uid; int get count; String? get recent;
/// Create a copy of GetGuessDeckInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGuessDeckInputCopyWith<GetGuessDeckInput> get copyWith => _$GetGuessDeckInputCopyWithImpl<GetGuessDeckInput>(this as GetGuessDeckInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetGuessDeckInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGuessDeckInput&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.recent, _this.recent) || other.recent == _this.recent));
}


@override
int get hashCode {
  final _this = this as GetGuessDeckInput;
  return Object.hash(runtimeType,_this.topic,_this.uid,_this.count,_this.recent);
}

@override
String toString() {
  final _this = this as GetGuessDeckInput;
  return 'GetGuessDeckInput(topic: ${_this.topic}, uid: ${_this.uid}, count: ${_this.count}, recent: ${_this.recent})';
}


}

/// @nodoc
abstract mixin class $GetGuessDeckInputCopyWith<$Res>  {
  factory $GetGuessDeckInputCopyWith(GetGuessDeckInput value, $Res Function(GetGuessDeckInput) _then) = _$GetGuessDeckInputCopyWithImpl;
@useResult
$Res call({
 String topic, String? uid, int count, String? recent
});




}
/// @nodoc
class _$GetGuessDeckInputCopyWithImpl<$Res>
    implements $GetGuessDeckInputCopyWith<$Res> {
  _$GetGuessDeckInputCopyWithImpl(this._self, this._then);

  final GetGuessDeckInput _self;
  final $Res Function(GetGuessDeckInput) _then;

/// Create a copy of GetGuessDeckInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topic = null,Object? uid = freezed,Object? count = null,Object? recent = freezed,}) {
  return _then(GetGuessDeckInput(
topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,recent: freezed == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGuessDeckInput].
extension GetGuessDeckInputPatterns on GetGuessDeckInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGuessDeckInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGuessDeckInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGuessDeckInput value)  $default,){
final _that = this;
switch (_that) {
case _GetGuessDeckInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGuessDeckInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetGuessDeckInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String topic,  String? uid,  int count,  String? recent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGuessDeckInput() when $default != null:
return $default(_that.topic,_that.uid,_that.count,_that.recent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String topic,  String? uid,  int count,  String? recent)  $default,) {final _that = this;
switch (_that) {
case _GetGuessDeckInput():
return $default(_that.topic,_that.uid,_that.count,_that.recent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String topic,  String? uid,  int count,  String? recent)?  $default,) {final _that = this;
switch (_that) {
case _GetGuessDeckInput() when $default != null:
return $default(_that.topic,_that.uid,_that.count,_that.recent);case _:
  return null;

}
}

}

/// @nodoc


class _GetGuessDeckInput extends GetGuessDeckInput {
  const _GetGuessDeckInput({required this.topic, this.uid, this.count = 20, this.recent}): super._();
  

@override final  String topic;
@override final  String? uid;
@override@JsonKey() final  int count;
@override final  String? recent;

/// Create a copy of GetGuessDeckInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGuessDeckInputCopyWith<_GetGuessDeckInput> get copyWith => __$GetGuessDeckInputCopyWithImpl<_GetGuessDeckInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGuessDeckInput&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.count, count) || other.count == count)&&(identical(other.recent, recent) || other.recent == recent));
}


@override
int get hashCode {
    return Object.hash(runtimeType,topic,uid,count,recent);
}

@override
String toString() {
    return 'GetGuessDeckInput(topic: $topic, uid: $uid, count: $count, recent: $recent)';
}


}

/// @nodoc
abstract mixin class _$GetGuessDeckInputCopyWith<$Res> implements $GetGuessDeckInputCopyWith<$Res> {
  factory _$GetGuessDeckInputCopyWith(_GetGuessDeckInput value, $Res Function(_GetGuessDeckInput) _then) = __$GetGuessDeckInputCopyWithImpl;
@override @useResult
$Res call({
 String topic, String? uid, int count, String? recent
});




}
/// @nodoc
class __$GetGuessDeckInputCopyWithImpl<$Res>
    implements _$GetGuessDeckInputCopyWith<$Res> {
  __$GetGuessDeckInputCopyWithImpl(this._self, this._then);

  final _GetGuessDeckInput _self;
  final $Res Function(_GetGuessDeckInput) _then;

/// Create a copy of GetGuessDeckInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topic = null,Object? uid = freezed,Object? count = null,Object? recent = freezed,}) {
  return _then(_GetGuessDeckInput(
topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,recent: freezed == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$GetGuessDeckOutput {

 Deck get deck;
/// Create a copy of GetGuessDeckOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGuessDeckOutputCopyWith<GetGuessDeckOutput> get copyWith => _$GetGuessDeckOutputCopyWithImpl<GetGuessDeckOutput>(this as GetGuessDeckOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetGuessDeckOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGuessDeckOutput&&(identical(other.deck, _this.deck) || other.deck == _this.deck));
}


@override
int get hashCode {
  final _this = this as GetGuessDeckOutput;
  return Object.hash(runtimeType,_this.deck);
}

@override
String toString() {
  final _this = this as GetGuessDeckOutput;
  return 'GetGuessDeckOutput(deck: ${_this.deck})';
}


}

/// @nodoc
abstract mixin class $GetGuessDeckOutputCopyWith<$Res>  {
  factory $GetGuessDeckOutputCopyWith(GetGuessDeckOutput value, $Res Function(GetGuessDeckOutput) _then) = _$GetGuessDeckOutputCopyWithImpl;
@useResult
$Res call({
 Deck deck
});


$DeckCopyWith<$Res> get deck;

}
/// @nodoc
class _$GetGuessDeckOutputCopyWithImpl<$Res>
    implements $GetGuessDeckOutputCopyWith<$Res> {
  _$GetGuessDeckOutputCopyWithImpl(this._self, this._then);

  final GetGuessDeckOutput _self;
  final $Res Function(GetGuessDeckOutput) _then;

/// Create a copy of GetGuessDeckOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deck = null,}) {
  return _then(GetGuessDeckOutput(
null == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as Deck,
  ));
}
/// Create a copy of GetGuessDeckOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeckCopyWith<$Res> get deck {
  
  return $DeckCopyWith<$Res>(_self.deck, (value) {
    return _then(_self.copyWith(deck: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetGuessDeckOutput].
extension GetGuessDeckOutputPatterns on GetGuessDeckOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGuessDeckOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGuessDeckOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGuessDeckOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetGuessDeckOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGuessDeckOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetGuessDeckOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Deck deck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGuessDeckOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Deck deck)  $default,) {final _that = this;
switch (_that) {
case _GetGuessDeckOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Deck deck)?  $default,) {final _that = this;
switch (_that) {
case _GetGuessDeckOutput() when $default != null:
return $default(_that.deck);case _:
  return null;

}
}

}

/// @nodoc


class _GetGuessDeckOutput extends GetGuessDeckOutput {
  const _GetGuessDeckOutput(this.deck): super._();
  

@override final  Deck deck;

/// Create a copy of GetGuessDeckOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGuessDeckOutputCopyWith<_GetGuessDeckOutput> get copyWith => __$GetGuessDeckOutputCopyWithImpl<_GetGuessDeckOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGuessDeckOutput&&(identical(other.deck, deck) || other.deck == deck));
}


@override
int get hashCode {
    return Object.hash(runtimeType,deck);
}

@override
String toString() {
    return 'GetGuessDeckOutput(deck: $deck)';
}


}

/// @nodoc
abstract mixin class _$GetGuessDeckOutputCopyWith<$Res> implements $GetGuessDeckOutputCopyWith<$Res> {
  factory _$GetGuessDeckOutputCopyWith(_GetGuessDeckOutput value, $Res Function(_GetGuessDeckOutput) _then) = __$GetGuessDeckOutputCopyWithImpl;
@override @useResult
$Res call({
 Deck deck
});


@override $DeckCopyWith<$Res> get deck;

}
/// @nodoc
class __$GetGuessDeckOutputCopyWithImpl<$Res>
    implements _$GetGuessDeckOutputCopyWith<$Res> {
  __$GetGuessDeckOutputCopyWithImpl(this._self, this._then);

  final _GetGuessDeckOutput _self;
  final $Res Function(_GetGuessDeckOutput) _then;

/// Create a copy of GetGuessDeckOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deck = null,}) {
  return _then(_GetGuessDeckOutput(
null == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as Deck,
  ));
}

/// Create a copy of GetGuessDeckOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeckCopyWith<$Res> get deck {
  
  return $DeckCopyWith<$Res>(_self.deck, (value) {
    return _then(_self.copyWith(deck: value));
  });
}
}

// dart format on
