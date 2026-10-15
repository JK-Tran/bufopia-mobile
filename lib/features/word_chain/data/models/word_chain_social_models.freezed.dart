// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_chain_social_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordChainSocialState {

@JsonKey(name: 'recent') List<WordChainRival> get recent;@JsonKey(name: 'invitations') List<WordChainInvitation> get invitations;
/// Create a copy of WordChainSocialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordChainSocialStateCopyWith<WordChainSocialState> get copyWith => _$WordChainSocialStateCopyWithImpl<WordChainSocialState>(this as WordChainSocialState, _$identity);

  /// Serializes this WordChainSocialState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordChainSocialState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordChainSocialState&&const DeepCollectionEquality().equals(other.recent, _this.recent)&&const DeepCollectionEquality().equals(other.invitations, _this.invitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordChainSocialState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.recent),const DeepCollectionEquality().hash(_this.invitations));
}

@override
String toString() {
  final _this = this as WordChainSocialState;
  return 'WordChainSocialState(recent: ${_this.recent}, invitations: ${_this.invitations})';
}


}

/// @nodoc
abstract mixin class $WordChainSocialStateCopyWith<$Res>  {
  factory $WordChainSocialStateCopyWith(WordChainSocialState value, $Res Function(WordChainSocialState) _then) = _$WordChainSocialStateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'recent') List<WordChainRival> recent,@JsonKey(name: 'invitations') List<WordChainInvitation> invitations
});




}
/// @nodoc
class _$WordChainSocialStateCopyWithImpl<$Res>
    implements $WordChainSocialStateCopyWith<$Res> {
  _$WordChainSocialStateCopyWithImpl(this._self, this._then);

  final WordChainSocialState _self;
  final $Res Function(WordChainSocialState) _then;

/// Create a copy of WordChainSocialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recent = null,Object? invitations = null,}) {
  return _then(WordChainSocialState(
recent: null == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as List<WordChainRival>,invitations: null == invitations ? _self.invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<WordChainInvitation>,
  ));
}

}


/// Adds pattern-matching-related methods to [WordChainSocialState].
extension WordChainSocialStatePatterns on WordChainSocialState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordChainSocialState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordChainSocialState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordChainSocialState value)  $default,){
final _that = this;
switch (_that) {
case _WordChainSocialState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordChainSocialState value)?  $default,){
final _that = this;
switch (_that) {
case _WordChainSocialState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'recent')  List<WordChainRival> recent, @JsonKey(name: 'invitations')  List<WordChainInvitation> invitations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordChainSocialState() when $default != null:
return $default(_that.recent,_that.invitations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'recent')  List<WordChainRival> recent, @JsonKey(name: 'invitations')  List<WordChainInvitation> invitations)  $default,) {final _that = this;
switch (_that) {
case _WordChainSocialState():
return $default(_that.recent,_that.invitations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'recent')  List<WordChainRival> recent, @JsonKey(name: 'invitations')  List<WordChainInvitation> invitations)?  $default,) {final _that = this;
switch (_that) {
case _WordChainSocialState() when $default != null:
return $default(_that.recent,_that.invitations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordChainSocialState extends WordChainSocialState {
  const _WordChainSocialState({@JsonKey(name: 'recent')  List<WordChainRival> recent = const [], @JsonKey(name: 'invitations')  List<WordChainInvitation> invitations = const []}): _recent = recent,_invitations = invitations,super._();
  factory _WordChainSocialState.fromJson(Map<String, dynamic> json) => _$WordChainSocialStateFromJson(json);

 final  List<WordChainRival> _recent;
@override@JsonKey(name: 'recent') List<WordChainRival> get recent {
  if (_recent is EqualUnmodifiableListView) return _recent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recent);
}

 final  List<WordChainInvitation> _invitations;
@override@JsonKey(name: 'invitations') List<WordChainInvitation> get invitations {
  if (_invitations is EqualUnmodifiableListView) return _invitations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invitations);
}


/// Create a copy of WordChainSocialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordChainSocialStateCopyWith<_WordChainSocialState> get copyWith => __$WordChainSocialStateCopyWithImpl<_WordChainSocialState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordChainSocialStateToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordChainSocialState&&const DeepCollectionEquality().equals(other.recent, _recent)&&const DeepCollectionEquality().equals(other.invitations, _invitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_recent),const DeepCollectionEquality().hash(_invitations));
}

@override
String toString() {
    return 'WordChainSocialState(recent: $recent, invitations: $invitations)';
}


}

/// @nodoc
abstract mixin class _$WordChainSocialStateCopyWith<$Res> implements $WordChainSocialStateCopyWith<$Res> {
  factory _$WordChainSocialStateCopyWith(_WordChainSocialState value, $Res Function(_WordChainSocialState) _then) = __$WordChainSocialStateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'recent') List<WordChainRival> recent,@JsonKey(name: 'invitations') List<WordChainInvitation> invitations
});




}
/// @nodoc
class __$WordChainSocialStateCopyWithImpl<$Res>
    implements _$WordChainSocialStateCopyWith<$Res> {
  __$WordChainSocialStateCopyWithImpl(this._self, this._then);

  final _WordChainSocialState _self;
  final $Res Function(_WordChainSocialState) _then;

/// Create a copy of WordChainSocialState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recent = null,Object? invitations = null,}) {
  return _then(_WordChainSocialState(
recent: null == recent ? _self._recent : recent // ignore: cast_nullable_to_non_nullable
as List<WordChainRival>,invitations: null == invitations ? _self._invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<WordChainInvitation>,
  ));
}


}


/// @nodoc
mixin _$WordChainRival {

@JsonKey(name: 'uid') String get uid;@JsonKey(name: 'name') String get name;@JsonKey(name: 'avatar') String? get avatar;@JsonKey(name: 'playedAt') int? get playedAt;
/// Create a copy of WordChainRival
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordChainRivalCopyWith<WordChainRival> get copyWith => _$WordChainRivalCopyWithImpl<WordChainRival>(this as WordChainRival, _$identity);

  /// Serializes this WordChainRival to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordChainRival;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordChainRival&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar)&&(identical(other.playedAt, _this.playedAt) || other.playedAt == _this.playedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordChainRival;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar,_this.playedAt);
}

@override
String toString() {
  final _this = this as WordChainRival;
  return 'WordChainRival(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar}, playedAt: ${_this.playedAt})';
}


}

/// @nodoc
abstract mixin class $WordChainRivalCopyWith<$Res>  {
  factory $WordChainRivalCopyWith(WordChainRival value, $Res Function(WordChainRival) _then) = _$WordChainRivalCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'name') String name,@JsonKey(name: 'avatar') String? avatar,@JsonKey(name: 'playedAt') int? playedAt
});




}
/// @nodoc
class _$WordChainRivalCopyWithImpl<$Res>
    implements $WordChainRivalCopyWith<$Res> {
  _$WordChainRivalCopyWithImpl(this._self, this._then);

  final WordChainRival _self;
  final $Res Function(WordChainRival) _then;

/// Create a copy of WordChainRival
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,Object? playedAt = freezed,}) {
  return _then(WordChainRival(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,playedAt: freezed == playedAt ? _self.playedAt : playedAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordChainRival].
extension WordChainRivalPatterns on WordChainRival {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordChainRival value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordChainRival() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordChainRival value)  $default,){
final _that = this;
switch (_that) {
case _WordChainRival():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordChainRival value)?  $default,){
final _that = this;
switch (_that) {
case _WordChainRival() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'name')  String name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'playedAt')  int? playedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordChainRival() when $default != null:
return $default(_that.uid,_that.name,_that.avatar,_that.playedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'name')  String name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'playedAt')  int? playedAt)  $default,) {final _that = this;
switch (_that) {
case _WordChainRival():
return $default(_that.uid,_that.name,_that.avatar,_that.playedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'name')  String name, @JsonKey(name: 'avatar')  String? avatar, @JsonKey(name: 'playedAt')  int? playedAt)?  $default,) {final _that = this;
switch (_that) {
case _WordChainRival() when $default != null:
return $default(_that.uid,_that.name,_that.avatar,_that.playedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordChainRival extends WordChainRival {
  const _WordChainRival({@JsonKey(name: 'uid') this.uid = '', @JsonKey(name: 'name') this.name = 'Người chơi', @JsonKey(name: 'avatar') this.avatar, @JsonKey(name: 'playedAt') this.playedAt}): super._();
  factory _WordChainRival.fromJson(Map<String, dynamic> json) => _$WordChainRivalFromJson(json);

@override@JsonKey(name: 'uid') final  String uid;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'avatar') final  String? avatar;
@override@JsonKey(name: 'playedAt') final  int? playedAt;

/// Create a copy of WordChainRival
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordChainRivalCopyWith<_WordChainRival> get copyWith => __$WordChainRivalCopyWithImpl<_WordChainRival>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordChainRivalToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordChainRival&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.playedAt, playedAt) || other.playedAt == playedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar,playedAt);
}

@override
String toString() {
    return 'WordChainRival(uid: $uid, name: $name, avatar: $avatar, playedAt: $playedAt)';
}


}

/// @nodoc
abstract mixin class _$WordChainRivalCopyWith<$Res> implements $WordChainRivalCopyWith<$Res> {
  factory _$WordChainRivalCopyWith(_WordChainRival value, $Res Function(_WordChainRival) _then) = __$WordChainRivalCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'name') String name,@JsonKey(name: 'avatar') String? avatar,@JsonKey(name: 'playedAt') int? playedAt
});




}
/// @nodoc
class __$WordChainRivalCopyWithImpl<$Res>
    implements _$WordChainRivalCopyWith<$Res> {
  __$WordChainRivalCopyWithImpl(this._self, this._then);

  final _WordChainRival _self;
  final $Res Function(_WordChainRival) _then;

/// Create a copy of WordChainRival
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,Object? playedAt = freezed,}) {
  return _then(_WordChainRival(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,playedAt: freezed == playedAt ? _self.playedAt : playedAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WordChainInvitation {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'fromUid') String get fromUid;@JsonKey(name: 'fromName') String get fromName;@JsonKey(name: 'roomCode') String get roomCode;@JsonKey(name: 'fromAvatar') String? get fromAvatar;@JsonKey(name: 'activity') String get activity;@JsonKey(name: 'language') String get language;@JsonKey(name: 'expiresAt') int get expiresAt;
/// Create a copy of WordChainInvitation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordChainInvitationCopyWith<WordChainInvitation> get copyWith => _$WordChainInvitationCopyWithImpl<WordChainInvitation>(this as WordChainInvitation, _$identity);

  /// Serializes this WordChainInvitation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordChainInvitation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordChainInvitation&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.fromUid, _this.fromUid) || other.fromUid == _this.fromUid)&&(identical(other.fromName, _this.fromName) || other.fromName == _this.fromName)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.fromAvatar, _this.fromAvatar) || other.fromAvatar == _this.fromAvatar)&&(identical(other.activity, _this.activity) || other.activity == _this.activity)&&(identical(other.language, _this.language) || other.language == _this.language)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordChainInvitation;
  return Object.hash(runtimeType,_this.id,_this.fromUid,_this.fromName,_this.roomCode,_this.fromAvatar,_this.activity,_this.language,_this.expiresAt);
}

@override
String toString() {
  final _this = this as WordChainInvitation;
  return 'WordChainInvitation(id: ${_this.id}, fromUid: ${_this.fromUid}, fromName: ${_this.fromName}, roomCode: ${_this.roomCode}, fromAvatar: ${_this.fromAvatar}, activity: ${_this.activity}, language: ${_this.language}, expiresAt: ${_this.expiresAt})';
}


}

/// @nodoc
abstract mixin class $WordChainInvitationCopyWith<$Res>  {
  factory $WordChainInvitationCopyWith(WordChainInvitation value, $Res Function(WordChainInvitation) _then) = _$WordChainInvitationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'fromUid') String fromUid,@JsonKey(name: 'fromName') String fromName,@JsonKey(name: 'roomCode') String roomCode,@JsonKey(name: 'fromAvatar') String? fromAvatar,@JsonKey(name: 'activity') String activity,@JsonKey(name: 'language') String language,@JsonKey(name: 'expiresAt') int expiresAt
});




}
/// @nodoc
class _$WordChainInvitationCopyWithImpl<$Res>
    implements $WordChainInvitationCopyWith<$Res> {
  _$WordChainInvitationCopyWithImpl(this._self, this._then);

  final WordChainInvitation _self;
  final $Res Function(WordChainInvitation) _then;

/// Create a copy of WordChainInvitation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fromUid = null,Object? fromName = null,Object? roomCode = null,Object? fromAvatar = freezed,Object? activity = null,Object? language = null,Object? expiresAt = null,}) {
  return _then(WordChainInvitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fromUid: null == fromUid ? _self.fromUid : fromUid // ignore: cast_nullable_to_non_nullable
as String,fromName: null == fromName ? _self.fromName : fromName // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,fromAvatar: freezed == fromAvatar ? _self.fromAvatar : fromAvatar // ignore: cast_nullable_to_non_nullable
as String?,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WordChainInvitation].
extension WordChainInvitationPatterns on WordChainInvitation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordChainInvitation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordChainInvitation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordChainInvitation value)  $default,){
final _that = this;
switch (_that) {
case _WordChainInvitation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordChainInvitation value)?  $default,){
final _that = this;
switch (_that) {
case _WordChainInvitation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'fromUid')  String fromUid, @JsonKey(name: 'fromName')  String fromName, @JsonKey(name: 'roomCode')  String roomCode, @JsonKey(name: 'fromAvatar')  String? fromAvatar, @JsonKey(name: 'activity')  String activity, @JsonKey(name: 'language')  String language, @JsonKey(name: 'expiresAt')  int expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordChainInvitation() when $default != null:
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.fromAvatar,_that.activity,_that.language,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'fromUid')  String fromUid, @JsonKey(name: 'fromName')  String fromName, @JsonKey(name: 'roomCode')  String roomCode, @JsonKey(name: 'fromAvatar')  String? fromAvatar, @JsonKey(name: 'activity')  String activity, @JsonKey(name: 'language')  String language, @JsonKey(name: 'expiresAt')  int expiresAt)  $default,) {final _that = this;
switch (_that) {
case _WordChainInvitation():
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.fromAvatar,_that.activity,_that.language,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'fromUid')  String fromUid, @JsonKey(name: 'fromName')  String fromName, @JsonKey(name: 'roomCode')  String roomCode, @JsonKey(name: 'fromAvatar')  String? fromAvatar, @JsonKey(name: 'activity')  String activity, @JsonKey(name: 'language')  String language, @JsonKey(name: 'expiresAt')  int expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _WordChainInvitation() when $default != null:
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.fromAvatar,_that.activity,_that.language,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordChainInvitation extends WordChainInvitation {
  const _WordChainInvitation({@JsonKey(name: 'id') this.id = '', @JsonKey(name: 'fromUid') this.fromUid = '', @JsonKey(name: 'fromName') this.fromName = 'Bạn bè', @JsonKey(name: 'roomCode') this.roomCode = '', @JsonKey(name: 'fromAvatar') this.fromAvatar, @JsonKey(name: 'activity') this.activity = 'chain', @JsonKey(name: 'language') this.language = 'vi', @JsonKey(name: 'expiresAt') this.expiresAt = 0}): super._();
  factory _WordChainInvitation.fromJson(Map<String, dynamic> json) => _$WordChainInvitationFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'fromUid') final  String fromUid;
@override@JsonKey(name: 'fromName') final  String fromName;
@override@JsonKey(name: 'roomCode') final  String roomCode;
@override@JsonKey(name: 'fromAvatar') final  String? fromAvatar;
@override@JsonKey(name: 'activity') final  String activity;
@override@JsonKey(name: 'language') final  String language;
@override@JsonKey(name: 'expiresAt') final  int expiresAt;

/// Create a copy of WordChainInvitation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordChainInvitationCopyWith<_WordChainInvitation> get copyWith => __$WordChainInvitationCopyWithImpl<_WordChainInvitation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordChainInvitationToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordChainInvitation&&(identical(other.id, id) || other.id == id)&&(identical(other.fromUid, fromUid) || other.fromUid == fromUid)&&(identical(other.fromName, fromName) || other.fromName == fromName)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.fromAvatar, fromAvatar) || other.fromAvatar == fromAvatar)&&(identical(other.activity, activity) || other.activity == activity)&&(identical(other.language, language) || other.language == language)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,fromUid,fromName,roomCode,fromAvatar,activity,language,expiresAt);
}

@override
String toString() {
    return 'WordChainInvitation(id: $id, fromUid: $fromUid, fromName: $fromName, roomCode: $roomCode, fromAvatar: $fromAvatar, activity: $activity, language: $language, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$WordChainInvitationCopyWith<$Res> implements $WordChainInvitationCopyWith<$Res> {
  factory _$WordChainInvitationCopyWith(_WordChainInvitation value, $Res Function(_WordChainInvitation) _then) = __$WordChainInvitationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'fromUid') String fromUid,@JsonKey(name: 'fromName') String fromName,@JsonKey(name: 'roomCode') String roomCode,@JsonKey(name: 'fromAvatar') String? fromAvatar,@JsonKey(name: 'activity') String activity,@JsonKey(name: 'language') String language,@JsonKey(name: 'expiresAt') int expiresAt
});




}
/// @nodoc
class __$WordChainInvitationCopyWithImpl<$Res>
    implements _$WordChainInvitationCopyWith<$Res> {
  __$WordChainInvitationCopyWithImpl(this._self, this._then);

  final _WordChainInvitation _self;
  final $Res Function(_WordChainInvitation) _then;

/// Create a copy of WordChainInvitation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fromUid = null,Object? fromName = null,Object? roomCode = null,Object? fromAvatar = freezed,Object? activity = null,Object? language = null,Object? expiresAt = null,}) {
  return _then(_WordChainInvitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fromUid: null == fromUid ? _self.fromUid : fromUid // ignore: cast_nullable_to_non_nullable
as String,fromName: null == fromName ? _self.fromName : fromName // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,fromAvatar: freezed == fromAvatar ? _self.fromAvatar : fromAvatar // ignore: cast_nullable_to_non_nullable
as String?,activity: null == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
