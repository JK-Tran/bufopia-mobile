// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Vocabulary {

 String get version; int get totalTopics; int get totalWords; List<Topic> get topics; List<Word> get words;
/// Create a copy of Vocabulary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VocabularyCopyWith<Vocabulary> get copyWith => _$VocabularyCopyWithImpl<Vocabulary>(this as Vocabulary, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Vocabulary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Vocabulary&&(identical(other.version, _this.version) || other.version == _this.version)&&(identical(other.totalTopics, _this.totalTopics) || other.totalTopics == _this.totalTopics)&&(identical(other.totalWords, _this.totalWords) || other.totalWords == _this.totalWords)&&const DeepCollectionEquality().equals(other.topics, _this.topics)&&const DeepCollectionEquality().equals(other.words, _this.words));
}


@override
int get hashCode {
  final _this = this as Vocabulary;
  return Object.hash(runtimeType,_this.version,_this.totalTopics,_this.totalWords,const DeepCollectionEquality().hash(_this.topics),const DeepCollectionEquality().hash(_this.words));
}

@override
String toString() {
  final _this = this as Vocabulary;
  return 'Vocabulary(version: ${_this.version}, totalTopics: ${_this.totalTopics}, totalWords: ${_this.totalWords}, topics: ${_this.topics}, words: ${_this.words})';
}


}

/// @nodoc
abstract mixin class $VocabularyCopyWith<$Res>  {
  factory $VocabularyCopyWith(Vocabulary value, $Res Function(Vocabulary) _then) = _$VocabularyCopyWithImpl;
@useResult
$Res call({
 String version, int totalTopics, int totalWords, List<Topic> topics, List<Word> words
});




}
/// @nodoc
class _$VocabularyCopyWithImpl<$Res>
    implements $VocabularyCopyWith<$Res> {
  _$VocabularyCopyWithImpl(this._self, this._then);

  final Vocabulary _self;
  final $Res Function(Vocabulary) _then;

/// Create a copy of Vocabulary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? totalTopics = null,Object? totalWords = null,Object? topics = null,Object? words = null,}) {
  return _then(Vocabulary(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,totalTopics: null == totalTopics ? _self.totalTopics : totalTopics // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<Word>,
  ));
}

}


/// Adds pattern-matching-related methods to [Vocabulary].
extension VocabularyPatterns on Vocabulary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Vocabulary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Vocabulary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Vocabulary value)  $default,){
final _that = this;
switch (_that) {
case _Vocabulary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Vocabulary value)?  $default,){
final _that = this;
switch (_that) {
case _Vocabulary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  int totalTopics,  int totalWords,  List<Topic> topics,  List<Word> words)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Vocabulary() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  int totalTopics,  int totalWords,  List<Topic> topics,  List<Word> words)  $default,) {final _that = this;
switch (_that) {
case _Vocabulary():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  int totalTopics,  int totalWords,  List<Topic> topics,  List<Word> words)?  $default,) {final _that = this;
switch (_that) {
case _Vocabulary() when $default != null:
return $default(_that.version,_that.totalTopics,_that.totalWords,_that.topics,_that.words);case _:
  return null;

}
}

}

/// @nodoc


class _Vocabulary implements Vocabulary {
  const _Vocabulary({this.version = '', this.totalTopics = 0, this.totalWords = 0,  List<Topic> topics = const [],  List<Word> words = const []}): _topics = topics,_words = words;
  

@override@JsonKey() final  String version;
@override@JsonKey() final  int totalTopics;
@override@JsonKey() final  int totalWords;
 final  List<Topic> _topics;
@override@JsonKey() List<Topic> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

 final  List<Word> _words;
@override@JsonKey() List<Word> get words {
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_words);
}


/// Create a copy of Vocabulary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VocabularyCopyWith<_Vocabulary> get copyWith => __$VocabularyCopyWithImpl<_Vocabulary>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Vocabulary&&(identical(other.version, version) || other.version == version)&&(identical(other.totalTopics, totalTopics) || other.totalTopics == totalTopics)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&const DeepCollectionEquality().equals(other.topics, _topics)&&const DeepCollectionEquality().equals(other.words, _words));
}


@override
int get hashCode {
    return Object.hash(runtimeType,version,totalTopics,totalWords,const DeepCollectionEquality().hash(_topics),const DeepCollectionEquality().hash(_words));
}

@override
String toString() {
    return 'Vocabulary(version: $version, totalTopics: $totalTopics, totalWords: $totalWords, topics: $topics, words: $words)';
}


}

/// @nodoc
abstract mixin class _$VocabularyCopyWith<$Res> implements $VocabularyCopyWith<$Res> {
  factory _$VocabularyCopyWith(_Vocabulary value, $Res Function(_Vocabulary) _then) = __$VocabularyCopyWithImpl;
@override @useResult
$Res call({
 String version, int totalTopics, int totalWords, List<Topic> topics, List<Word> words
});




}
/// @nodoc
class __$VocabularyCopyWithImpl<$Res>
    implements _$VocabularyCopyWith<$Res> {
  __$VocabularyCopyWithImpl(this._self, this._then);

  final _Vocabulary _self;
  final $Res Function(_Vocabulary) _then;

/// Create a copy of Vocabulary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? totalTopics = null,Object? totalWords = null,Object? topics = null,Object? words = null,}) {
  return _then(_Vocabulary(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,totalTopics: null == totalTopics ? _self.totalTopics : totalTopics // ignore: cast_nullable_to_non_nullable
as int,totalWords: null == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<Word>,
  ));
}


}

// dart format on
