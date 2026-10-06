// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopicModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'category') String? get category;@JsonKey(name: 'difficulty') String? get difficulty;@JsonKey(name: 'icon') String? get icon;@JsonKey(name: 'word_count') int? get wordCount;@JsonKey(name: 'updated_at') dynamic get updatedAt;
/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicModelCopyWith<TopicModel> get copyWith => _$TopicModelCopyWithImpl<TopicModel>(this as TopicModel, _$identity);

  /// Serializes this TopicModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TopicModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.difficulty, _this.difficulty) || other.difficulty == _this.difficulty)&&(identical(other.icon, _this.icon) || other.icon == _this.icon)&&(identical(other.wordCount, _this.wordCount) || other.wordCount == _this.wordCount)&&const DeepCollectionEquality().equals(other.updatedAt, _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TopicModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.category,_this.difficulty,_this.icon,_this.wordCount,const DeepCollectionEquality().hash(_this.updatedAt));
}

@override
String toString() {
  final _this = this as TopicModel;
  return 'TopicModel(id: ${_this.id}, name: ${_this.name}, category: ${_this.category}, difficulty: ${_this.difficulty}, icon: ${_this.icon}, wordCount: ${_this.wordCount}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $TopicModelCopyWith<$Res>  {
  factory $TopicModelCopyWith(TopicModel value, $Res Function(TopicModel) _then) = _$TopicModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'category') String? category,@JsonKey(name: 'difficulty') String? difficulty,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'word_count') int? wordCount,@JsonKey(name: 'updated_at') dynamic updatedAt
});




}
/// @nodoc
class _$TopicModelCopyWithImpl<$Res>
    implements $TopicModelCopyWith<$Res> {
  _$TopicModelCopyWithImpl(this._self, this._then);

  final TopicModel _self;
  final $Res Function(TopicModel) _then;

/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? category = freezed,Object? difficulty = freezed,Object? icon = freezed,Object? wordCount = freezed,Object? updatedAt = freezed,}) {
  return _then(TopicModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,wordCount: freezed == wordCount ? _self.wordCount : wordCount // ignore: cast_nullable_to_non_nullable
as int?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [TopicModel].
extension TopicModelPatterns on TopicModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicModel value)  $default,){
final _that = this;
switch (_that) {
case _TopicModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'category')  String? category, @JsonKey(name: 'difficulty')  String? difficulty, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'word_count')  int? wordCount, @JsonKey(name: 'updated_at')  dynamic updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.difficulty,_that.icon,_that.wordCount,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'category')  String? category, @JsonKey(name: 'difficulty')  String? difficulty, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'word_count')  int? wordCount, @JsonKey(name: 'updated_at')  dynamic updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TopicModel():
return $default(_that.id,_that.name,_that.category,_that.difficulty,_that.icon,_that.wordCount,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'category')  String? category, @JsonKey(name: 'difficulty')  String? difficulty, @JsonKey(name: 'icon')  String? icon, @JsonKey(name: 'word_count')  int? wordCount, @JsonKey(name: 'updated_at')  dynamic updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.difficulty,_that.icon,_that.wordCount,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopicModel extends TopicModel {
  const _TopicModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name') this.name, @JsonKey(name: 'category') this.category, @JsonKey(name: 'difficulty') this.difficulty, @JsonKey(name: 'icon') this.icon, @JsonKey(name: 'word_count') this.wordCount, @JsonKey(name: 'updated_at') this.updatedAt}): super._();
  factory _TopicModel.fromJson(Map<String, dynamic> json) => _$TopicModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'category') final  String? category;
@override@JsonKey(name: 'difficulty') final  String? difficulty;
@override@JsonKey(name: 'icon') final  String? icon;
@override@JsonKey(name: 'word_count') final  int? wordCount;
@override@JsonKey(name: 'updated_at') final  dynamic updatedAt;

/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicModelCopyWith<_TopicModel> get copyWith => __$TopicModelCopyWithImpl<_TopicModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.wordCount, wordCount) || other.wordCount == wordCount)&&const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,category,difficulty,icon,wordCount,const DeepCollectionEquality().hash(updatedAt));
}

@override
String toString() {
    return 'TopicModel(id: $id, name: $name, category: $category, difficulty: $difficulty, icon: $icon, wordCount: $wordCount, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TopicModelCopyWith<$Res> implements $TopicModelCopyWith<$Res> {
  factory _$TopicModelCopyWith(_TopicModel value, $Res Function(_TopicModel) _then) = __$TopicModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'name') String? name,@JsonKey(name: 'category') String? category,@JsonKey(name: 'difficulty') String? difficulty,@JsonKey(name: 'icon') String? icon,@JsonKey(name: 'word_count') int? wordCount,@JsonKey(name: 'updated_at') dynamic updatedAt
});




}
/// @nodoc
class __$TopicModelCopyWithImpl<$Res>
    implements _$TopicModelCopyWith<$Res> {
  __$TopicModelCopyWithImpl(this._self, this._then);

  final _TopicModel _self;
  final $Res Function(_TopicModel) _then;

/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? category = freezed,Object? difficulty = freezed,Object? icon = freezed,Object? wordCount = freezed,Object? updatedAt = freezed,}) {
  return _then(_TopicModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,wordCount: freezed == wordCount ? _self.wordCount : wordCount // ignore: cast_nullable_to_non_nullable
as int?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
