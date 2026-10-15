// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'actor') int? get actor;@JsonKey(name: 'text') String? get text;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'avatar') String? get avatar;@JsonKey(name: 'time') num? get time;
/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatDataCopyWith<ChatData> get copyWith => _$ChatDataCopyWithImpl<ChatData>(this as ChatData, _$identity);

  /// Serializes this ChatData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ChatData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatData&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.actor, _this.actor) || other.actor == _this.actor)&&(identical(other.text, _this.text) || other.text == _this.text)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.time, _this.time) || other.time == _this.time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ChatData;
  return Object.hash(runtimeType,_this.id,_this.actor,_this.text,_this.name,_this.avatar,_this.time);
}

@override
String toString() {
  final _this = this as ChatData;
  return 'ChatData(id: ${_this.id}, actor: ${_this.actor}, text: ${_this.text}, name: ${_this.name}, avatar: ${_this.avatar}, time: ${_this.time})';
}


}

/// @nodoc
abstract mixin class $ChatDataCopyWith<$Res>  {
  factory $ChatDataCopyWith(ChatData value, $Res Function(ChatData) _then) = _$ChatDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'actor') int? actor,@JsonKey(name: 'text') String? text,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar,@JsonKey(name: 'time') num? time
});




}
/// @nodoc
class _$ChatDataCopyWithImpl<$Res>
    implements $ChatDataCopyWith<$Res> {
  _$ChatDataCopyWithImpl(this._self, this._then);

  final ChatData _self;
  final $Res Function(ChatData) _then;

/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? actor = freezed,Object? text = freezed,Object? name = freezed,Object? avatar = freezed,Object? time = freezed,}) {
  return _then(ChatData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,actor: freezed == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatData].
extension ChatDataPatterns on ChatData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatData value)  $default,){
final _that = this;
switch (_that) {
case _ChatData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatData value)?  $default,){
final _that = this;
switch (_that) {
case _ChatData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'actor')  int? actor, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'time')  num? time)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatData() when $default != null:
return $default(_that.id,_that.actor,_that.text,_that.name,_that.avatar,_that.time);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'actor')  int? actor, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'time')  num? time)  $default,) {final _that = this;
switch (_that) {
case _ChatData():
return $default(_that.id,_that.actor,_that.text,_that.name,_that.avatar,_that.time);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'actor')  int? actor, @JsonKey(name: 'text')  String? text, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'time')  num? time)?  $default,) {final _that = this;
switch (_that) {
case _ChatData() when $default != null:
return $default(_that.id,_that.actor,_that.text,_that.name,_that.avatar,_that.time);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatData extends ChatData {
  const _ChatData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'actor') this.actor, @JsonKey(name: 'text') this.text, @JsonKey(name: 'name') this.name, @JsonKey(name: 'avatar') this.avatar, @JsonKey(name: 'time') this.time}): super._();
  factory _ChatData.fromJson(Map<String, dynamic> json) => _$ChatDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'actor') final  int? actor;
@override@JsonKey(name: 'text') final  String? text;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'avatar') final  String? avatar;
@override@JsonKey(name: 'time') final  num? time;

/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatDataCopyWith<_ChatData> get copyWith => __$ChatDataCopyWithImpl<_ChatData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatData&&(identical(other.id, id) || other.id == id)&&(identical(other.actor, actor) || other.actor == actor)&&(identical(other.text, text) || other.text == text)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,actor,text,name,avatar,time);
}

@override
String toString() {
    return 'ChatData(id: $id, actor: $actor, text: $text, name: $name, avatar: $avatar, time: $time)';
}


}

/// @nodoc
abstract mixin class _$ChatDataCopyWith<$Res> implements $ChatDataCopyWith<$Res> {
  factory _$ChatDataCopyWith(_ChatData value, $Res Function(_ChatData) _then) = __$ChatDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'actor') int? actor,@JsonKey(name: 'text') String? text,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar,@JsonKey(name: 'time') num? time
});




}
/// @nodoc
class __$ChatDataCopyWithImpl<$Res>
    implements _$ChatDataCopyWith<$Res> {
  __$ChatDataCopyWithImpl(this._self, this._then);

  final _ChatData _self;
  final $Res Function(_ChatData) _then;

/// Create a copy of ChatData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? actor = freezed,Object? text = freezed,Object? name = freezed,Object? avatar = freezed,Object? time = freezed,}) {
  return _then(_ChatData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,actor: freezed == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as int?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,time: freezed == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
