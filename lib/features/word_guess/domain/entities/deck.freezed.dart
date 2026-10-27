// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Deck {

 bool get success; String get practiceSessionId; String get topic; int get count; List<Word> get words;
/// Create a copy of Deck
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeckCopyWith<Deck> get copyWith => _$DeckCopyWithImpl<Deck>(this as Deck, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Deck;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Deck&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.practiceSessionId, _this.practiceSessionId) || other.practiceSessionId == _this.practiceSessionId)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.count, _this.count) || other.count == _this.count)&&const DeepCollectionEquality().equals(other.words, _this.words));
}


@override
int get hashCode {
  final _this = this as Deck;
  return Object.hash(runtimeType,_this.success,_this.practiceSessionId,_this.topic,_this.count,const DeepCollectionEquality().hash(_this.words));
}

@override
String toString() {
  final _this = this as Deck;
  return 'Deck(success: ${_this.success}, practiceSessionId: ${_this.practiceSessionId}, topic: ${_this.topic}, count: ${_this.count}, words: ${_this.words})';
}


}

/// @nodoc
abstract mixin class $DeckCopyWith<$Res>  {
  factory $DeckCopyWith(Deck value, $Res Function(Deck) _then) = _$DeckCopyWithImpl;
@useResult
$Res call({
 bool success, String practiceSessionId, String topic, int count, List<Word> words
});




}
/// @nodoc
class _$DeckCopyWithImpl<$Res>
    implements $DeckCopyWith<$Res> {
  _$DeckCopyWithImpl(this._self, this._then);

  final Deck _self;
  final $Res Function(Deck) _then;

/// Create a copy of Deck
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? practiceSessionId = null,Object? topic = null,Object? count = null,Object? words = null,}) {
  return _then(Deck(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,practiceSessionId: null == practiceSessionId ? _self.practiceSessionId : practiceSessionId // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<Word>,
  ));
}

}


/// Adds pattern-matching-related methods to [Deck].
extension DeckPatterns on Deck {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Deck value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Deck() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Deck value)  $default,){
final _that = this;
switch (_that) {
case _Deck():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Deck value)?  $default,){
final _that = this;
switch (_that) {
case _Deck() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String practiceSessionId,  String topic,  int count,  List<Word> words)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Deck() when $default != null:
return $default(_that.success,_that.practiceSessionId,_that.topic,_that.count,_that.words);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String practiceSessionId,  String topic,  int count,  List<Word> words)  $default,) {final _that = this;
switch (_that) {
case _Deck():
return $default(_that.success,_that.practiceSessionId,_that.topic,_that.count,_that.words);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String practiceSessionId,  String topic,  int count,  List<Word> words)?  $default,) {final _that = this;
switch (_that) {
case _Deck() when $default != null:
return $default(_that.success,_that.practiceSessionId,_that.topic,_that.count,_that.words);case _:
  return null;

}
}

}

/// @nodoc


class _Deck implements Deck {
  const _Deck({this.success = true, this.practiceSessionId = '', this.topic = '', this.count = 0,  List<Word> words = const []}): _words = words;
  

@override@JsonKey() final  bool success;
@override@JsonKey() final  String practiceSessionId;
@override@JsonKey() final  String topic;
@override@JsonKey() final  int count;
 final  List<Word> _words;
@override@JsonKey() List<Word> get words {
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_words);
}


/// Create a copy of Deck
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeckCopyWith<_Deck> get copyWith => __$DeckCopyWithImpl<_Deck>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Deck&&(identical(other.success, success) || other.success == success)&&(identical(other.practiceSessionId, practiceSessionId) || other.practiceSessionId == practiceSessionId)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.words, _words));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success,practiceSessionId,topic,count,const DeepCollectionEquality().hash(_words));
}

@override
String toString() {
    return 'Deck(success: $success, practiceSessionId: $practiceSessionId, topic: $topic, count: $count, words: $words)';
}


}

/// @nodoc
abstract mixin class _$DeckCopyWith<$Res> implements $DeckCopyWith<$Res> {
  factory _$DeckCopyWith(_Deck value, $Res Function(_Deck) _then) = __$DeckCopyWithImpl;
@override @useResult
$Res call({
 bool success, String practiceSessionId, String topic, int count, List<Word> words
});




}
/// @nodoc
class __$DeckCopyWithImpl<$Res>
    implements _$DeckCopyWith<$Res> {
  __$DeckCopyWithImpl(this._self, this._then);

  final _Deck _self;
  final $Res Function(_Deck) _then;

/// Create a copy of Deck
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? practiceSessionId = null,Object? topic = null,Object? count = null,Object? words = null,}) {
  return _then(_Deck(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,practiceSessionId: null == practiceSessionId ? _self.practiceSessionId : practiceSessionId // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<Word>,
  ));
}


}

// dart format on
