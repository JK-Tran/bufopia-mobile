// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topic_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopicEntity {

 String get id; String get name; String get category; String get difficulty; String get icon; int get wordCount; DateTime? get updatedAt;
/// Create a copy of TopicEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicEntityCopyWith<TopicEntity> get copyWith => _$TopicEntityCopyWithImpl<TopicEntity>(this as TopicEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TopicEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.difficulty, _this.difficulty) || other.difficulty == _this.difficulty)&&(identical(other.icon, _this.icon) || other.icon == _this.icon)&&(identical(other.wordCount, _this.wordCount) || other.wordCount == _this.wordCount)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as TopicEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.category,_this.difficulty,_this.icon,_this.wordCount,_this.updatedAt);
}

@override
String toString() {
  final _this = this as TopicEntity;
  return 'TopicEntity(id: ${_this.id}, name: ${_this.name}, category: ${_this.category}, difficulty: ${_this.difficulty}, icon: ${_this.icon}, wordCount: ${_this.wordCount}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $TopicEntityCopyWith<$Res>  {
  factory $TopicEntityCopyWith(TopicEntity value, $Res Function(TopicEntity) _then) = _$TopicEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String category, String difficulty, String icon, int wordCount, DateTime? updatedAt
});




}
/// @nodoc
class _$TopicEntityCopyWithImpl<$Res>
    implements $TopicEntityCopyWith<$Res> {
  _$TopicEntityCopyWithImpl(this._self, this._then);

  final TopicEntity _self;
  final $Res Function(TopicEntity) _then;

/// Create a copy of TopicEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? category = null,Object? difficulty = null,Object? icon = null,Object? wordCount = null,Object? updatedAt = freezed,}) {
  return _then(TopicEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,wordCount: null == wordCount ? _self.wordCount : wordCount // ignore: cast_nullable_to_non_nullable
as int,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TopicEntity].
extension TopicEntityPatterns on TopicEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicEntity value)  $default,){
final _that = this;
switch (_that) {
case _TopicEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TopicEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String category,  String difficulty,  String icon,  int wordCount,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopicEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String category,  String difficulty,  String icon,  int wordCount,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _TopicEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String category,  String difficulty,  String icon,  int wordCount,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _TopicEntity() when $default != null:
return $default(_that.id,_that.name,_that.category,_that.difficulty,_that.icon,_that.wordCount,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _TopicEntity implements TopicEntity {
  const _TopicEntity({this.id = '', this.name = '', this.category = '', this.difficulty = '', this.icon = '', this.wordCount = 0, this.updatedAt});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String category;
@override@JsonKey() final  String difficulty;
@override@JsonKey() final  String icon;
@override@JsonKey() final  int wordCount;
@override final  DateTime? updatedAt;

/// Create a copy of TopicEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicEntityCopyWith<_TopicEntity> get copyWith => __$TopicEntityCopyWithImpl<_TopicEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.wordCount, wordCount) || other.wordCount == wordCount)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,category,difficulty,icon,wordCount,updatedAt);
}

@override
String toString() {
    return 'TopicEntity(id: $id, name: $name, category: $category, difficulty: $difficulty, icon: $icon, wordCount: $wordCount, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TopicEntityCopyWith<$Res> implements $TopicEntityCopyWith<$Res> {
  factory _$TopicEntityCopyWith(_TopicEntity value, $Res Function(_TopicEntity) _then) = __$TopicEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String category, String difficulty, String icon, int wordCount, DateTime? updatedAt
});




}
/// @nodoc
class __$TopicEntityCopyWithImpl<$Res>
    implements _$TopicEntityCopyWith<$Res> {
  __$TopicEntityCopyWithImpl(this._self, this._then);

  final _TopicEntity _self;
  final $Res Function(_TopicEntity) _then;

/// Create a copy of TopicEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? category = null,Object? difficulty = null,Object? icon = null,Object? wordCount = null,Object? updatedAt = freezed,}) {
  return _then(_TopicEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,wordCount: null == wordCount ? _self.wordCount : wordCount // ignore: cast_nullable_to_non_nullable
as int,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
