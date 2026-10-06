// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattleQuestion {

 String get id; String get topic; String get en; String get vi; List<BattleOption> get options;
/// Create a copy of BattleQuestion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleQuestionCopyWith<BattleQuestion> get copyWith => _$BattleQuestionCopyWithImpl<BattleQuestion>(this as BattleQuestion, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BattleQuestion;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleQuestion&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.topic, _this.topic) || other.topic == _this.topic)&&(identical(other.en, _this.en) || other.en == _this.en)&&(identical(other.vi, _this.vi) || other.vi == _this.vi)&&const DeepCollectionEquality().equals(other.options, _this.options));
}


@override
int get hashCode {
  final _this = this as BattleQuestion;
  return Object.hash(runtimeType,_this.id,_this.topic,_this.en,_this.vi,const DeepCollectionEquality().hash(_this.options));
}

@override
String toString() {
  final _this = this as BattleQuestion;
  return 'BattleQuestion(id: ${_this.id}, topic: ${_this.topic}, en: ${_this.en}, vi: ${_this.vi}, options: ${_this.options})';
}


}

/// @nodoc
abstract mixin class $BattleQuestionCopyWith<$Res>  {
  factory $BattleQuestionCopyWith(BattleQuestion value, $Res Function(BattleQuestion) _then) = _$BattleQuestionCopyWithImpl;
@useResult
$Res call({
 String id, String topic, String en, String vi, List<BattleOption> options
});




}
/// @nodoc
class _$BattleQuestionCopyWithImpl<$Res>
    implements $BattleQuestionCopyWith<$Res> {
  _$BattleQuestionCopyWithImpl(this._self, this._then);

  final BattleQuestion _self;
  final $Res Function(BattleQuestion) _then;

/// Create a copy of BattleQuestion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? topic = null,Object? en = null,Object? vi = null,Object? options = null,}) {
  return _then(BattleQuestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<BattleOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleQuestion].
extension BattleQuestionPatterns on BattleQuestion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleQuestion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleQuestion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleQuestion value)  $default,){
final _that = this;
switch (_that) {
case _BattleQuestion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleQuestion value)?  $default,){
final _that = this;
switch (_that) {
case _BattleQuestion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String topic,  String en,  String vi,  List<BattleOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleQuestion() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String topic,  String en,  String vi,  List<BattleOption> options)  $default,) {final _that = this;
switch (_that) {
case _BattleQuestion():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String topic,  String en,  String vi,  List<BattleOption> options)?  $default,) {final _that = this;
switch (_that) {
case _BattleQuestion() when $default != null:
return $default(_that.id,_that.topic,_that.en,_that.vi,_that.options);case _:
  return null;

}
}

}

/// @nodoc


class _BattleQuestion implements BattleQuestion {
  const _BattleQuestion({this.id = '', this.topic = '', this.en = '', this.vi = '',  List<BattleOption> options = const []}): _options = options;
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String topic;
@override@JsonKey() final  String en;
@override@JsonKey() final  String vi;
 final  List<BattleOption> _options;
@override@JsonKey() List<BattleOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of BattleQuestion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleQuestionCopyWith<_BattleQuestion> get copyWith => __$BattleQuestionCopyWithImpl<_BattleQuestion>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleQuestion&&(identical(other.id, id) || other.id == id)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.en, en) || other.en == en)&&(identical(other.vi, vi) || other.vi == vi)&&const DeepCollectionEquality().equals(other.options, _options));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,topic,en,vi,const DeepCollectionEquality().hash(_options));
}

@override
String toString() {
    return 'BattleQuestion(id: $id, topic: $topic, en: $en, vi: $vi, options: $options)';
}


}

/// @nodoc
abstract mixin class _$BattleQuestionCopyWith<$Res> implements $BattleQuestionCopyWith<$Res> {
  factory _$BattleQuestionCopyWith(_BattleQuestion value, $Res Function(_BattleQuestion) _then) = __$BattleQuestionCopyWithImpl;
@override @useResult
$Res call({
 String id, String topic, String en, String vi, List<BattleOption> options
});




}
/// @nodoc
class __$BattleQuestionCopyWithImpl<$Res>
    implements _$BattleQuestionCopyWith<$Res> {
  __$BattleQuestionCopyWithImpl(this._self, this._then);

  final _BattleQuestion _self;
  final $Res Function(_BattleQuestion) _then;

/// Create a copy of BattleQuestion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? topic = null,Object? en = null,Object? vi = null,Object? options = null,}) {
  return _then(_BattleQuestion(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,topic: null == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String,en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,vi: null == vi ? _self.vi : vi // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<BattleOption>,
  ));
}


}

// dart format on
