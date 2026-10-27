// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WordInfo {

 int get index; String get topic; String get masked; String get vi; String get phonetic; int get length; int get revealedCount; String? get en; String? get example;
/// Create a copy of WordInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordInfoCopyWith<WordInfo> get copyWith => _$WordInfoCopyWithImpl<WordInfo>(this as WordInfo, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WordInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordInfo&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.masked, _this.masked) || other.masked == _this.masked)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.length, _this.length) || other.length == _this.length)&&(identical(other.revealedCount, _this.revealedCount) || other.revealedCount == _this.revealedCount)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.example, _this.example) || other.example == _this.example));
}


@override
int get hashCode {
  final _this = this as WordInfo;
  return Object.hash(runtimeType,_this.index,_this.topic,_this.masked,_this.vi,_this.phonetic,_this.length,_this.revealedCount,_this.en,_this.example);
}

@override
String toString() {
  final _this = this as WordInfo;
  return 'WordInfo(index: ${_this.index}, topic: ${_this.topic}, masked: ${_this.masked}, vi: ${_this.vi}, phonetic: ${_this.phonetic}, length: ${_this.length}, revealedCount: ${_this.revealedCount}, en: ${_this.en}, example: ${_this.example})';
}


}

/// @nodoc
abstract mixin class $WordInfoCopyWith<$Res>  {
  factory $WordInfoCopyWith(WordInfo value, $Res Function(WordInfo) _then) = _$WordInfoCopyWithImpl;
@useResult
$Res call({
 int index, String topic, String masked, String vi, String phonetic, int length, int revealedCount, String? en, String? example
});




}
/// @nodoc
class _$WordInfoCopyWithImpl<$Res>
    implements $WordInfoCopyWith<$Res> {
  _$WordInfoCopyWithImpl(this._self, this._then);

  final WordInfo _self;
  final $Res Function(WordInfo) _then;

/// Create a copy of WordInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? topic = null,Object? masked = null,Object? vi = null,Object? phonetic = null,Object? length = null,Object? revealedCount = null,Object? en = freezed,Object? example = freezed,}) {
  return _then(WordInfo(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,masked: null == masked ? _self.masked : masked // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,revealedCount: null == revealedCount ? _self.revealedCount : revealedCount // ignore: cast_nullable_to_non_nullable
as int,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordInfo].
extension WordInfoPatterns on WordInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordInfo value)  $default,){
final _that = this;
switch (_that) {
case _WordInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordInfo value)?  $default,){
final _that = this;
switch (_that) {
case _WordInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  String topic,  String masked,  String vi,  String phonetic,  int length,  int revealedCount,  String? en,  String? example)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordInfo() when $default != null:
return $default(_that.index,_that.topic,_that.masked,_that.vi,_that.phonetic,_that.length,_that.revealedCount,_that.en,_that.example);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  String topic,  String masked,  String vi,  String phonetic,  int length,  int revealedCount,  String? en,  String? example)  $default,) {final _that = this;
switch (_that) {
case _WordInfo():
return $default(_that.index,_that.topic,_that.masked,_that.vi,_that.phonetic,_that.length,_that.revealedCount,_that.en,_that.example);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  String topic,  String masked,  String vi,  String phonetic,  int length,  int revealedCount,  String? en,  String? example)?  $default,) {final _that = this;
switch (_that) {
case _WordInfo() when $default != null:
return $default(_that.index,_that.topic,_that.masked,_that.vi,_that.phonetic,_that.length,_that.revealedCount,_that.en,_that.example);case _:
  return null;

}
}

}

/// @nodoc


class _WordInfo implements WordInfo {
  const _WordInfo({this.index = 0, this.topic = '', this.masked = '', this.vi = '', this.phonetic = '', this.length = 0, this.revealedCount = 0, this.en, this.example});
  

@override@JsonKey() final  int index;
@override@JsonKey() final  String topic;
@override@JsonKey() final  String masked;
@override@JsonKey() final  String vi;
@override@JsonKey() final  String phonetic;
@override@JsonKey() final  int length;
@override@JsonKey() final  int revealedCount;
@override final  String? en;
@override final  String? example;

/// Create a copy of WordInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordInfoCopyWith<_WordInfo> get copyWith => __$WordInfoCopyWithImpl<_WordInfo>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordInfo&&(identical(other.index, index) || other.index == index)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.masked, masked) || other.masked == masked)&&(identical(other.vi, vi) || other.vi == vi)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.length, length) || other.length == length)&&(identical(other.revealedCount, revealedCount) || other.revealedCount == revealedCount)&&(identical(other.en, en) || other.en == en)&&(identical(other.example, example) || other.example == example));
}


@override
int get hashCode {
    return Object.hash(runtimeType,index,topic,masked,vi,phonetic,length,revealedCount,en,example);
}

@override
String toString() {
    return 'WordInfo(index: $index, topic: $topic, masked: $masked, vi: $vi, phonetic: $phonetic, length: $length, revealedCount: $revealedCount, en: $en, example: $example)';
}


}

/// @nodoc
abstract mixin class _$WordInfoCopyWith<$Res> implements $WordInfoCopyWith<$Res> {
  factory _$WordInfoCopyWith(_WordInfo value, $Res Function(_WordInfo) _then) = __$WordInfoCopyWithImpl;
@override @useResult
$Res call({
 int index, String topic, String masked, String vi, String phonetic, int length, int revealedCount, String? en, String? example
});




}
/// @nodoc
class __$WordInfoCopyWithImpl<$Res>
    implements _$WordInfoCopyWith<$Res> {
  __$WordInfoCopyWithImpl(this._self, this._then);

  final _WordInfo _self;
  final $Res Function(_WordInfo) _then;

/// Create a copy of WordInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? topic = null,Object? masked = null,Object? vi = null,Object? phonetic = null,Object? length = null,Object? revealedCount = null,Object? en = freezed,Object? example = freezed,}) {
  return _then(_WordInfo(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,masked: null == masked ? _self.masked : masked // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,revealedCount: null == revealedCount ? _self.revealedCount : revealedCount // ignore: cast_nullable_to_non_nullable
as int,en: freezed == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String?,example: freezed == example ? _self.example : example // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
