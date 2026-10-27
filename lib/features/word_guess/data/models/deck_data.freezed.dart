// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deck_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeckData {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'practiceSessionId') String? get practiceSessionId;@JsonKey(name: 'topic') String? get topic;@JsonKey(name: 'count') int? get count;@JsonKey(name: 'deck') List<WordData>? get deck;
/// Create a copy of DeckData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeckDataCopyWith<DeckData> get copyWith => _$DeckDataCopyWithImpl<DeckData>(this as DeckData, _$identity);

  /// Serializes this DeckData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DeckData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeckData&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.practiceSessionId, _this.practiceSessionId) || other.practiceSessionId == _this.practiceSessionId)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.count, _this.count) || other.count == _this.count)&&const DeepCollectionEquality().equals(other.deck, _this.deck));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DeckData;
  return Object.hash(runtimeType,_this.success,_this.practiceSessionId,_this.topic,_this.count,const DeepCollectionEquality().hash(_this.deck));
}

@override
String toString() {
  final _this = this as DeckData;
  return 'DeckData(success: ${_this.success}, practiceSessionId: ${_this.practiceSessionId}, topic: ${_this.topic}, count: ${_this.count}, deck: ${_this.deck})';
}


}

/// @nodoc
abstract mixin class $DeckDataCopyWith<$Res>  {
  factory $DeckDataCopyWith(DeckData value, $Res Function(DeckData) _then) = _$DeckDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'practiceSessionId') String? practiceSessionId,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'count') int? count,@JsonKey(name: 'deck') List<WordData>? deck
});




}
/// @nodoc
class _$DeckDataCopyWithImpl<$Res>
    implements $DeckDataCopyWith<$Res> {
  _$DeckDataCopyWithImpl(this._self, this._then);

  final DeckData _self;
  final $Res Function(DeckData) _then;

/// Create a copy of DeckData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? practiceSessionId = freezed,Object? topic = freezed,Object? count = freezed,Object? deck = freezed,}) {
  return _then(DeckData(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,practiceSessionId: freezed == practiceSessionId ? _self.practiceSessionId : practiceSessionId // ignore: cast_nullable_to_non_nullable
as String?,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,deck: freezed == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as List<WordData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeckData].
extension DeckDataPatterns on DeckData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeckData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeckData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeckData value)  $default,){
final _that = this;
switch (_that) {
case _DeckData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeckData value)?  $default,){
final _that = this;
switch (_that) {
case _DeckData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'practiceSessionId')  String? practiceSessionId, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'count')  int? count, @JsonKey(name: 'deck')  List<WordData>? deck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeckData() when $default != null:
return $default(_that.success,_that.practiceSessionId,_that.topic,_that.count,_that.deck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'practiceSessionId')  String? practiceSessionId, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'count')  int? count, @JsonKey(name: 'deck')  List<WordData>? deck)  $default,) {final _that = this;
switch (_that) {
case _DeckData():
return $default(_that.success,_that.practiceSessionId,_that.topic,_that.count,_that.deck);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'practiceSessionId')  String? practiceSessionId, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'count')  int? count, @JsonKey(name: 'deck')  List<WordData>? deck)?  $default,) {final _that = this;
switch (_that) {
case _DeckData() when $default != null:
return $default(_that.success,_that.practiceSessionId,_that.topic,_that.count,_that.deck);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeckData extends DeckData {
  const _DeckData({@JsonKey(name: 'success') this.success, @JsonKey(name: 'practiceSessionId') this.practiceSessionId, @JsonKey(name: 'topic') this.topic, @JsonKey(name: 'count') this.count, @JsonKey(name: 'deck')  List<WordData>? deck}): _deck = deck,super._();
  factory _DeckData.fromJson(Map<String, dynamic> json) => _$DeckDataFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'practiceSessionId') final  String? practiceSessionId;
@override@JsonKey(name: 'topic') final  String? topic;
@override@JsonKey(name: 'count') final  int? count;
 final  List<WordData>? _deck;
@override@JsonKey(name: 'deck') List<WordData>? get deck {
  final value = _deck;
  if (value == null) return null;
  if (_deck is EqualUnmodifiableListView) return _deck;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DeckData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeckDataCopyWith<_DeckData> get copyWith => __$DeckDataCopyWithImpl<_DeckData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeckDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeckData&&(identical(other.success, success) || other.success == success)&&(identical(other.practiceSessionId, practiceSessionId) || other.practiceSessionId == practiceSessionId)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.deck, _deck));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,practiceSessionId,topic,count,const DeepCollectionEquality().hash(_deck));
}

@override
String toString() {
    return 'DeckData(success: $success, practiceSessionId: $practiceSessionId, topic: $topic, count: $count, deck: $deck)';
}


}

/// @nodoc
abstract mixin class _$DeckDataCopyWith<$Res> implements $DeckDataCopyWith<$Res> {
  factory _$DeckDataCopyWith(_DeckData value, $Res Function(_DeckData) _then) = __$DeckDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'practiceSessionId') String? practiceSessionId,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'count') int? count,@JsonKey(name: 'deck') List<WordData>? deck
});




}
/// @nodoc
class __$DeckDataCopyWithImpl<$Res>
    implements _$DeckDataCopyWith<$Res> {
  __$DeckDataCopyWithImpl(this._self, this._then);

  final _DeckData _self;
  final $Res Function(_DeckData) _then;

/// Create a copy of DeckData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? practiceSessionId = freezed,Object? topic = freezed,Object? count = freezed,Object? deck = freezed,}) {
  return _then(_DeckData(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,practiceSessionId: freezed == practiceSessionId ? _self.practiceSessionId : practiceSessionId // ignore: cast_nullable_to_non_nullable
as String?,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,deck: freezed == deck ? _self._deck : deck // ignore: cast_nullable_to_non_nullable
as List<WordData>?,
  ));
}


}

// dart format on
