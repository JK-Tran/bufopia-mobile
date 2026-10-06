// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VocabularyEntity {

 String get version; int get totalTopics; int get totalWords; List<TopicEntity> get topics; List<WordEntity> get words;
/// Create a copy of VocabularyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VocabularyEntityCopyWith<VocabularyEntity> get copyWith => _$VocabularyEntityCopyWithImpl<VocabularyEntity>(this as VocabularyEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as VocabularyEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VocabularyEntity&&(identical(other.version, _this.version) || other.version == _this.version)&&(identical(other.totalTopics, _this.totalTopics) || other.totalTopics == _this.totalTopics)&&(identical(other.totalWords, _this.totalWords) || other.totalWords == _this.totalWords)&&const DeepCollectionEquality().equals(other.topics, _this.topics)&&const DeepCollectionEquality().equals(other.words, _this.words));
}


@override
int get hashCode {
  final _this = this as VocabularyEntity;
  return Object.hash(runtimeType,_this.version,_this.totalTopics,_this.totalWords,const DeepCollectionEquality().hash(_this.topics),const DeepCollectionEquality().hash(_this.words));
}

@override
String toString() {
  final _this = this as VocabularyEntity;
  return 'VocabularyEntity(version: ${_this.version}, totalTopics: ${_this.totalTopics}, totalWords: ${_this.totalWords}, topics: ${_this.topics}, words: ${_this.words})';
}


}

/// @nodoc
abstract mixin class $VocabularyEntityCopyWith<$Res>  {
  factory $VocabularyEntityCopyWith(VocabularyEntity value, $Res Function(VocabularyEntity) _then) = _$VocabularyEntityCopyWithImpl;
@useResult
$Res call({
 String version, int totalTopics, int totalWords, List<TopicEntity> topics, List<WordEntity> words
});




}
/// @nodoc
class _$VocabularyEntityCopyWithImpl<$Res>
    implements $VocabularyEntityCopyWith<$Res> {
  _$VocabularyEntityCopyWithImpl(this._self, this._then);

  final VocabularyEntity _self;
  final $Res Function(VocabularyEntity) _then;

/// Create a copy of VocabularyEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? totalTopics = null,Object? totalWords = null,Object? topics = null,Object? words = null,}) {
  return _then(VocabularyEntity(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,totalTopics: null == totalTopics ? _self.totalTopics : totalTopics // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<TopicEntity>,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<WordEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [VocabularyEntity].
extension VocabularyEntityPatterns on VocabularyEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VocabularyEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VocabularyEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VocabularyEntity value)  $default,){
final _that = this;
switch (_that) {
case _VocabularyEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VocabularyEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VocabularyEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  int totalTopics,  int totalWords,  List<TopicEntity> topics,  List<WordEntity> words)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VocabularyEntity() when $default != null:
return $default(_that.version,_that.totalTopics,_that.totalWords,_that.topics,_that.words);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  int totalTopics,  int totalWords,  List<TopicEntity> topics,  List<WordEntity> words)  $default,) {final _that = this;
switch (_that) {
case _VocabularyEntity():
return $default(_that.version,_that.totalTopics,_that.totalWords,_that.topics,_that.words);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  int totalTopics,  int totalWords,  List<TopicEntity> topics,  List<WordEntity> words)?  $default,) {final _that = this;
switch (_that) {
case _VocabularyEntity() when $default != null:
return $default(_that.version,_that.totalTopics,_that.totalWords,_that.topics,_that.words);case _:
  return null;

}
}

}

/// @nodoc


class _VocabularyEntity implements VocabularyEntity {
  const _VocabularyEntity({this.version = '', this.totalTopics = 0, this.totalWords = 0,  List<TopicEntity> topics = const [],  List<WordEntity> words = const []}): _topics = topics,_words = words;
  

@override@JsonKey() final  String version;
@override@JsonKey() final  int totalTopics;
@override@JsonKey() final  int totalWords;
 final  List<TopicEntity> _topics;
@override@JsonKey() List<TopicEntity> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

 final  List<WordEntity> _words;
@override@JsonKey() List<WordEntity> get words {
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_words);
}


/// Create a copy of VocabularyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VocabularyEntityCopyWith<_VocabularyEntity> get copyWith => __$VocabularyEntityCopyWithImpl<_VocabularyEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VocabularyEntity&&(identical(other.version, version) || other.version == version)&&(identical(other.totalTopics, totalTopics) || other.totalTopics == totalTopics)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&const DeepCollectionEquality().equals(other.topics, _topics)&&const DeepCollectionEquality().equals(other.words, _words));
}


@override
int get hashCode {
    return Object.hash(runtimeType,version,totalTopics,totalWords,const DeepCollectionEquality().hash(_topics),const DeepCollectionEquality().hash(_words));
}

@override
String toString() {
    return 'VocabularyEntity(version: $version, totalTopics: $totalTopics, totalWords: $totalWords, topics: $topics, words: $words)';
}


}

/// @nodoc
abstract mixin class _$VocabularyEntityCopyWith<$Res> implements $VocabularyEntityCopyWith<$Res> {
  factory _$VocabularyEntityCopyWith(_VocabularyEntity value, $Res Function(_VocabularyEntity) _then) = __$VocabularyEntityCopyWithImpl;
@override @useResult
$Res call({
 String version, int totalTopics, int totalWords, List<TopicEntity> topics, List<WordEntity> words
});




}
/// @nodoc
class __$VocabularyEntityCopyWithImpl<$Res>
    implements _$VocabularyEntityCopyWith<$Res> {
  __$VocabularyEntityCopyWithImpl(this._self, this._then);

  final _VocabularyEntity _self;
  final $Res Function(_VocabularyEntity) _then;

/// Create a copy of VocabularyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? totalTopics = null,Object? totalWords = null,Object? topics = null,Object? words = null,}) {
  return _then(_VocabularyEntity(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,totalTopics: null == totalTopics ? _self.totalTopics : totalTopics // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<TopicEntity>,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<WordEntity>,
  ));
}


}

// dart format on
