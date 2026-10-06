// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'topic') String? get topic;@JsonKey(name: 'en') String? get en;@JsonKey(name: 'vi') String? get vi;
/// Create a copy of WordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordModelCopyWith<WordModel> get copyWith => _$WordModelCopyWithImpl<WordModel>(this as WordModel, _$identity);

  /// Serializes this WordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordModel;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi);
}

@override
String toString() {
  final _this = this as WordModel;
  return 'WordModel(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi})';
}


}

/// @nodoc
abstract mixin class $WordModelCopyWith<$Res>  {
  factory $WordModelCopyWith(WordModel value, $Res Function(WordModel) _then) = _$WordModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi
});




}
/// @nodoc
class _$WordModelCopyWithImpl<$Res>
    implements $WordModelCopyWith<$Res> {
  _$WordModelCopyWithImpl(this._self, this._then);

  final WordModel _self;
  final $Res Function(WordModel) _then;

/// Create a copy of WordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,}) {
  return _then(WordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordModel].
extension WordModelPatterns on WordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordModel value)  $default,){
final _that = this;
switch (_that) {
case _WordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordModel value)?  $default,){
final _that = this;
switch (_that) {
case _WordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordModel() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi)  $default,) {final _that = this;
switch (_that) {
case _WordModel():
return $default(_that.id,_that.topic,_that.en,_that.vi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'topic')  String? topic, @JsonKey(name: 'en')  String? en, @JsonKey(name: 'vi')  String? vi)?  $default,) {final _that = this;
switch (_that) {
case _WordModel() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordModel extends WordModel {
  const _WordModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'topic') this.topic, @JsonKey(name: 'en') this.en, @JsonKey(name: 'vi') this.vi}): super._();
  factory _WordModel.fromJson(Map<String, dynamic> json) => _$WordModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'topic') final  String? topic;
@override@JsonKey(name: 'en') final  String? en;
@override@JsonKey(name: 'vi') final  String? vi;

/// Create a copy of WordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordModelCopyWith<_WordModel> get copyWith => __$WordModelCopyWithImpl<_WordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi);
}

@override
String toString() {
    return 'WordModel(id: $id, topic: $topic, en: $en, vi: $vi)';
}


}

/// @nodoc
abstract mixin class _$WordModelCopyWith<$Res> implements $WordModelCopyWith<$Res> {
  factory _$WordModelCopyWith(_WordModel value, $Res Function(_WordModel) _then) = __$WordModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'topic') String? topic,@JsonKey(name: 'en') String? en,@JsonKey(name: 'vi') String? vi
});




}
/// @nodoc
class __$WordModelCopyWithImpl<$Res>
    implements _$WordModelCopyWith<$Res> {
  __$WordModelCopyWithImpl(this._self, this._then);

  final _WordModel _self;
  final $Res Function(_WordModel) _then;

/// Create a copy of WordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = freezed,Object? en = freezed,Object? vi = freezed,}) {
  return _then(_WordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,vi: freezed == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
