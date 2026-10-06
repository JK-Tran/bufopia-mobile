// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BattleQuestionModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'topic') String? get topic;@JsonKey(name: 'en') String? get en;@JsonKey(name: 'vi') String? get vi;@JsonKey(name: 'options') List<BattleOptionModel>? get options;
/// Create a copy of BattleQuestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleQuestionModelCopyWith<BattleQuestionModel> get copyWith => _$BattleQuestionModelCopyWithImpl<BattleQuestionModel>(this as BattleQuestionModel, _$identity);

  /// Serializes this BattleQuestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BattleQuestionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleQuestionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&const DeepCollectionEquality().equals(other.options, _this.options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BattleQuestionModel;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as BattleQuestionModel;
  return 'BattleQuestionModel(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $BattleQuestionModelCopyWith<$Res>  {
  factory $BattleQuestionModelCopyWith(BattleQuestionModel value, $Res Function(BattleQuestionModel) _then) = _$BattleQuestionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'options') List<BattleOptionModel>? options
});




}
/// @nodoc
class _$BattleQuestionModelCopyWithImpl<$Res>
    implements $BattleQuestionModelCopyWith<$Res> {
  _$BattleQuestionModelCopyWithImpl(this._self, this._then);

  final BattleQuestionModel _self;
  final $Res Function(BattleQuestionModel) _then;

/// Create a copy of BattleQuestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,Object? options = freezed,}) {
  return _then(BattleQuestionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<BattleOptionModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleQuestionModel].
extension BattleQuestionModelPatterns on BattleQuestionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleQuestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleQuestionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleQuestionModel value)  $default,){
final _that = this;
switch (_that) {
case _BattleQuestionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleQuestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _BattleQuestionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'options')  List<BattleOptionModel>? options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleQuestionModel() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'options')  List<BattleOptionModel>? options)  $default,) {final _that = this;
switch (_that) {
case _BattleQuestionModel():
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi, @JsonKey(name: 'options')  List<BattleOptionModel>? options)?  $default,) {final _that = this;
switch (_that) {
case _BattleQuestionModel() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BattleQuestionModel extends BattleQuestionModel {
  const _BattleQuestionModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'topic') this.topic, @JsonKey(name: 'en') this.en, @JsonKey(name: 'vi') this.vi, @JsonKey(name: 'options')  List<BattleOptionModel>? options}): _options = options,super._();
  factory _BattleQuestionModel.fromJson(Map<String, dynamic> json) => _$BattleQuestionModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'topic') final  String? topic;
@override@JsonKey(name: 'en') final  String? en;
@override@JsonKey(name: 'vi') final  String? vi;
 final  List<BattleOptionModel>? _options;
@override@JsonKey(name: 'options') List<BattleOptionModel>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BattleQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleQuestionModelCopyWith<_BattleQuestionModel> get copyWith => __$BattleQuestionModelCopyWithImpl<_BattleQuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BattleQuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleQuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi)&&const DeepCollectionEquality().equals(other.options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi,const DeepCollectionEquality().hash(_options));
}

@override
String toString() {
    return 'BattleQuestionModel(id: $id, topic: $topic, en: $en, vi: $vi, options: $options)';
}


}

/// @nodoc
abstract mixin class _$BattleQuestionModelCopyWith<$Res> implements $BattleQuestionModelCopyWith<$Res> {
  factory _$BattleQuestionModelCopyWith(_BattleQuestionModel value, $Res Function(_BattleQuestionModel) _then) = __$BattleQuestionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi,@JsonKey(name: 'options') List<BattleOptionModel>? options
});




}
/// @nodoc
class __$BattleQuestionModelCopyWithImpl<$Res>
    implements _$BattleQuestionModelCopyWith<$Res> {
  __$BattleQuestionModelCopyWithImpl(this._self, this._then);

  final _BattleQuestionModel _self;
  final $Res Function(_BattleQuestionModel) _then;

/// Create a copy of BattleQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,Object? options = freezed,}) {
  return _then(_BattleQuestionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<BattleOptionModel>?,
  ));
}


}

// dart format on
