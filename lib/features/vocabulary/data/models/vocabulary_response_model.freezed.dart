// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VocabularyResponseModel {

@JsonKey(name: 'version') String? get version;@JsonKey(name: 'totalTopics') int? get totalTopics;@JsonKey(name: 'totalWords') int? get totalWords;@JsonKey(name: 'topics') List<TopicModel> get topics;@JsonKey(name: 'words') List<WordModel> get words;
/// Create a copy of VocabularyResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VocabularyResponseModelCopyWith<VocabularyResponseModel> get copyWith => _$VocabularyResponseModelCopyWithImpl<VocabularyResponseModel>(this as VocabularyResponseModel, _$identity);

  /// Serializes this VocabularyResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VocabularyResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VocabularyResponseModel&&(identical(other.version, _this.version) || other.version == _this.version)&&(identical(other.totalTopics, _this.totalTopics) || other.totalTopics == _this.totalTopics)&&(identical(other.totalWords, _this.totalWords) || other.totalWords == _this.totalWords)&&const DeepCollectionEquality().equals(other.topics, _this.topics)&&const DeepCollectionEquality().equals(other.words, _this.words));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VocabularyResponseModel;
  return Object.hash(runtimeType,_this.version,_this.totalTopics,_this.totalWords,const DeepCollectionEquality().hash(_this.topics),const DeepCollectionEquality().hash(_this.words));
}

@override
String toString() {
  final _this = this as VocabularyResponseModel;
  return 'VocabularyResponseModel(version: ${_this.version}, totalTopics: ${_this.totalTopics}, totalWords: ${_this.totalWords}, topics: ${_this.topics}, words: ${_this.words})';
}


}

/// @nodoc
abstract mixin class $VocabularyResponseModelCopyWith<$Res>  {
  factory $VocabularyResponseModelCopyWith(VocabularyResponseModel value, $Res Function(VocabularyResponseModel) _then) = _$VocabularyResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'version') String? version,@JsonKey(name: 'totalTopics') int? totalTopics,@JsonKey(name: 'totalWords') int? totalWords,@JsonKey(name: 'topics') List<TopicModel> topics,@JsonKey(name: 'words') List<WordModel> words
});




}
/// @nodoc
class _$VocabularyResponseModelCopyWithImpl<$Res>
    implements $VocabularyResponseModelCopyWith<$Res> {
  _$VocabularyResponseModelCopyWithImpl(this._self, this._then);

  final VocabularyResponseModel _self;
  final $Res Function(VocabularyResponseModel) _then;

/// Create a copy of VocabularyResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = freezed,Object? totalTopics = freezed,Object? totalWords = freezed,Object? topics = null,Object? words = null,}) {
  return _then(VocabularyResponseModel(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,totalTopics: freezed == totalTopics ? _self.totalTopics : totalTopics // ignore: cast_nullable_to_non_nullable
as int?,totalWords: freezed == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int?,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<TopicModel>,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<WordModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [VocabularyResponseModel].
extension VocabularyResponseModelPatterns on VocabularyResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VocabularyResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VocabularyResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VocabularyResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _VocabularyResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VocabularyResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _VocabularyResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'version')  String? version, @JsonKey(name: 'totalTopics')  int? totalTopics, @JsonKey(name: 'totalWords')  int? totalWords, @JsonKey(name: 'topics')  List<TopicModel> topics, @JsonKey(name: 'words')  List<WordModel> words)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VocabularyResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'version')  String? version, @JsonKey(name: 'totalTopics')  int? totalTopics, @JsonKey(name: 'totalWords')  int? totalWords, @JsonKey(name: 'topics')  List<TopicModel> topics, @JsonKey(name: 'words')  List<WordModel> words)  $default,) {final _that = this;
switch (_that) {
case _VocabularyResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'version')  String? version, @JsonKey(name: 'totalTopics')  int? totalTopics, @JsonKey(name: 'totalWords')  int? totalWords, @JsonKey(name: 'topics')  List<TopicModel> topics, @JsonKey(name: 'words')  List<WordModel> words)?  $default,) {final _that = this;
switch (_that) {
case _VocabularyResponseModel() when $default != null:
return $default(_that.version,_that.totalTopics,_that.totalWords,_that.topics,_that.words);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VocabularyResponseModel extends VocabularyResponseModel {
  const _VocabularyResponseModel({@JsonKey(name: 'version') this.version, @JsonKey(name: 'totalTopics') this.totalTopics, @JsonKey(name: 'totalWords') this.totalWords, @JsonKey(name: 'topics')  List<TopicModel> topics = const [], @JsonKey(name: 'words')  List<WordModel> words = const []}): _topics = topics,_words = words,super._();
  factory _VocabularyResponseModel.fromJson(Map<String, dynamic> json) => _$VocabularyResponseModelFromJson(json);

@override@JsonKey(name: 'version') final  String? version;
@override@JsonKey(name: 'totalTopics') final  int? totalTopics;
@override@JsonKey(name: 'totalWords') final  int? totalWords;
 final  List<TopicModel> _topics;
@override@JsonKey(name: 'topics') List<TopicModel> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}

 final  List<WordModel> _words;
@override@JsonKey(name: 'words') List<WordModel> get words {
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_words);
}


/// Create a copy of VocabularyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VocabularyResponseModelCopyWith<_VocabularyResponseModel> get copyWith => __$VocabularyResponseModelCopyWithImpl<_VocabularyResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VocabularyResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VocabularyResponseModel&&(identical(other.version, version) || other.version == version)&&(identical(other.totalTopics, totalTopics) || other.totalTopics == totalTopics)&&(identical(other.totalWords, totalWords) || other.totalWords == totalWords)&&const DeepCollectionEquality().equals(other.topics, _topics)&&const DeepCollectionEquality().equals(other.words, _words));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,version,totalTopics,totalWords,const DeepCollectionEquality().hash(_topics),const DeepCollectionEquality().hash(_words));
}

@override
String toString() {
    return 'VocabularyResponseModel(version: $version, totalTopics: $totalTopics, totalWords: $totalWords, topics: $topics, words: $words)';
}


}

/// @nodoc
abstract mixin class _$VocabularyResponseModelCopyWith<$Res> implements $VocabularyResponseModelCopyWith<$Res> {
  factory _$VocabularyResponseModelCopyWith(_VocabularyResponseModel value, $Res Function(_VocabularyResponseModel) _then) = __$VocabularyResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'version') String? version,@JsonKey(name: 'totalTopics') int? totalTopics,@JsonKey(name: 'totalWords') int? totalWords,@JsonKey(name: 'topics') List<TopicModel> topics,@JsonKey(name: 'words') List<WordModel> words
});




}
/// @nodoc
class __$VocabularyResponseModelCopyWithImpl<$Res>
    implements _$VocabularyResponseModelCopyWith<$Res> {
  __$VocabularyResponseModelCopyWithImpl(this._self, this._then);

  final _VocabularyResponseModel _self;
  final $Res Function(_VocabularyResponseModel) _then;

/// Create a copy of VocabularyResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = freezed,Object? totalTopics = freezed,Object? totalWords = freezed,Object? topics = null,Object? words = null,}) {
  return _then(_VocabularyResponseModel(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,totalTopics: freezed == totalTopics ? _self.totalTopics : totalTopics // ignore: cast_nullable_to_non_nullable
as int?,totalWords: freezed == totalWords ? _self.totalWords : totalWords // ignore: cast_nullable_to_non_nullable
as int?,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<TopicModel>,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<WordModel>,
  ));
}


}

// dart format on
