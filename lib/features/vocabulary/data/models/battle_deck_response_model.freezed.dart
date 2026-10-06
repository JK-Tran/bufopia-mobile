// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_deck_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BattleDeckResponseModel {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'topic') String? get topic;@JsonKey(name: 'count') int? get count;@JsonKey(name: 'deck') List<BattleQuestionModel>? get deck;
/// Create a copy of BattleDeckResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleDeckResponseModelCopyWith<BattleDeckResponseModel> get copyWith => _$BattleDeckResponseModelCopyWithImpl<BattleDeckResponseModel>(this as BattleDeckResponseModel, _$identity);

  /// Serializes this BattleDeckResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BattleDeckResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleDeckResponseModel&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.count, _this.count) || other.count == _this.count)&&const DeepCollectionEquality().equals(other.deck, _this.deck));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BattleDeckResponseModel;
  return Object.hash(runtimeType,_this.success,_this.topic,_this.count,const DeepCollectionEquality().hash(_this.deck));
}

@override
String toString() {
  final _this = this as BattleDeckResponseModel;
  return 'BattleDeckResponseModel(success: ${_this.success}, topic: ${_this.topic}, count: ${_this.count}, deck: ${_this.deck})';
}


}

/// @nodoc
abstract mixin class $BattleDeckResponseModelCopyWith<$Res>  {
  factory $BattleDeckResponseModelCopyWith(BattleDeckResponseModel value, $Res Function(BattleDeckResponseModel) _then) = _$BattleDeckResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'count') int? count,@JsonKey(name: 'deck') List<BattleQuestionModel>? deck
});




}
/// @nodoc
class _$BattleDeckResponseModelCopyWithImpl<$Res>
    implements $BattleDeckResponseModelCopyWith<$Res> {
  _$BattleDeckResponseModelCopyWithImpl(this._self, this._then);

  final BattleDeckResponseModel _self;
  final $Res Function(BattleDeckResponseModel) _then;

/// Create a copy of BattleDeckResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? topic = freezed,Object? count = freezed,Object? deck = freezed,}) {
  return _then(BattleDeckResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,deck: freezed == deck ? _self.deck : deck // ignore: cast_nullable_to_non_nullable
as List<BattleQuestionModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleDeckResponseModel].
extension BattleDeckResponseModelPatterns on BattleDeckResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleDeckResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleDeckResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleDeckResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _BattleDeckResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleDeckResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _BattleDeckResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'count')  int? count, @JsonKey(name: 'deck')  List<BattleQuestionModel>? deck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleDeckResponseModel() when $default != null:
return $default(_that.success,_that.topic,_that.count,_that.deck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'count')  int? count, @JsonKey(name: 'deck')  List<BattleQuestionModel>? deck)  $default,) {final _that = this;
switch (_that) {
case _BattleDeckResponseModel():
return $default(_that.success,_that.topic,_that.count,_that.deck);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'count')  int? count, @JsonKey(name: 'deck')  List<BattleQuestionModel>? deck)?  $default,) {final _that = this;
switch (_that) {
case _BattleDeckResponseModel() when $default != null:
return $default(_that.success,_that.topic,_that.count,_that.deck);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BattleDeckResponseModel extends BattleDeckResponseModel {
  const _BattleDeckResponseModel({@JsonKey(name: 'success') this.success, @JsonKey(name: 'topic') this.topic, @JsonKey(name: 'count') this.count, @JsonKey(name: 'deck')  List<BattleQuestionModel>? deck}): _deck = deck,super._();
  factory _BattleDeckResponseModel.fromJson(Map<String, dynamic> json) => _$BattleDeckResponseModelFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'topic') final  String? topic;
@override@JsonKey(name: 'count') final  int? count;
 final  List<BattleQuestionModel>? _deck;
@override@JsonKey(name: 'deck') List<BattleQuestionModel>? get deck {
  final value = _deck;
  if (value == null) return null;
  if (_deck is EqualUnmodifiableListView) return _deck;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BattleDeckResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleDeckResponseModelCopyWith<_BattleDeckResponseModel> get copyWith => __$BattleDeckResponseModelCopyWithImpl<_BattleDeckResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BattleDeckResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleDeckResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.deck, _deck));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,topic,count,const DeepCollectionEquality().hash(_deck));
}

@override
String toString() {
    return 'BattleDeckResponseModel(success: $success, topic: $topic, count: $count, deck: $deck)';
}


}

/// @nodoc
abstract mixin class _$BattleDeckResponseModelCopyWith<$Res> implements $BattleDeckResponseModelCopyWith<$Res> {
  factory _$BattleDeckResponseModelCopyWith(_BattleDeckResponseModel value, $Res Function(_BattleDeckResponseModel) _then) = __$BattleDeckResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'count') int? count,@JsonKey(name: 'deck') List<BattleQuestionModel>? deck
});




}
/// @nodoc
class __$BattleDeckResponseModelCopyWithImpl<$Res>
    implements _$BattleDeckResponseModelCopyWith<$Res> {
  __$BattleDeckResponseModelCopyWithImpl(this._self, this._then);

  final _BattleDeckResponseModel _self;
  final $Res Function(_BattleDeckResponseModel) _then;

/// Create a copy of BattleDeckResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? topic = freezed,Object? count = freezed,Object? deck = freezed,}) {
  return _then(_BattleDeckResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,deck: freezed == deck ? _self._deck : deck // ignore: cast_nullable_to_non_nullable
as List<BattleQuestionModel>?,
  ));
}


}

// dart format on
