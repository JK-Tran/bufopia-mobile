// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialState {

 List<Rival> get recent; List<Invitation> get invitations;
/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialStateCopyWith<SocialState> get copyWith => _$SocialStateCopyWithImpl<SocialState>(this as SocialState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SocialState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialState&&const DeepCollectionEquality().equals(other.recent, _this.recent)&&const DeepCollectionEquality().equals(other.invitations, _this.invitations));
}


@override
int get hashCode {
  final _this = this as SocialState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.recent),const DeepCollectionEquality().hash(_this.invitations));
}

@override
String toString() {
  final _this = this as SocialState;
  return 'SocialState(recent: ${_this.recent}, invitations: ${_this.invitations})';
}


}

/// @nodoc
abstract mixin class $SocialStateCopyWith<$Res>  {
  factory $SocialStateCopyWith(SocialState value, $Res Function(SocialState) _then) = _$SocialStateCopyWithImpl;
@useResult
$Res call({
 List<Rival> recent, List<Invitation> invitations
});




}
/// @nodoc
class _$SocialStateCopyWithImpl<$Res>
    implements $SocialStateCopyWith<$Res> {
  _$SocialStateCopyWithImpl(this._self, this._then);

  final SocialState _self;
  final $Res Function(SocialState) _then;

/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recent = null,Object? invitations = null,}) {
  return _then(SocialState(
recent: null == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as List<Rival>,invitations: null == invitations ? _self.invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<Invitation>,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialState].
extension SocialStatePatterns on SocialState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialState value)  $default,){
final _that = this;
switch (_that) {
case _SocialState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialState value)?  $default,){
final _that = this;
switch (_that) {
case _SocialState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Rival> recent,  List<Invitation> invitations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Rival> recent,  List<Invitation> invitations)  $default,) {final _that = this;
switch (_that) {
case _SocialState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Rival> recent,  List<Invitation> invitations)?  $default,) {final _that = this;
switch (_that) {
case _SocialState() when $default != null:
return $default(_that.recent,_that.invitations);case _:
  return null;

}
}

}

/// @nodoc


class _SocialState implements SocialState {
  const _SocialState({ List<Rival> recent = const [],  List<Invitation> invitations = const []}): _recent = recent,_invitations = invitations;
  

 final  List<Rival> _recent;
@override@JsonKey() List<Rival> get recent {
  if (_recent is EqualUnmodifiableListView) return _recent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recent);
}

 final  List<Invitation> _invitations;
@override@JsonKey() List<Invitation> get invitations {
  if (_invitations is EqualUnmodifiableListView) return _invitations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invitations);
}


/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialStateCopyWith<_SocialState> get copyWith => __$SocialStateCopyWithImpl<_SocialState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialState&&const DeepCollectionEquality().equals(other.recent, _recent)&&const DeepCollectionEquality().equals(other.invitations, _invitations));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_recent),const DeepCollectionEquality().hash(_invitations));
}

@override
String toString() {
    return 'SocialState(recent: $recent, invitations: $invitations)';
}


}

/// @nodoc
abstract mixin class _$SocialStateCopyWith<$Res> implements $SocialStateCopyWith<$Res> {
  factory _$SocialStateCopyWith(_SocialState value, $Res Function(_SocialState) _then) = __$SocialStateCopyWithImpl;
@override @useResult
$Res call({
 List<Rival> recent, List<Invitation> invitations
});




}
/// @nodoc
class __$SocialStateCopyWithImpl<$Res>
    implements _$SocialStateCopyWith<$Res> {
  __$SocialStateCopyWithImpl(this._self, this._then);

  final _SocialState _self;
  final $Res Function(_SocialState) _then;

/// Create a copy of SocialState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recent = null,Object? invitations = null,}) {
  return _then(_SocialState(
recent: null == recent ? _self._recent : recent // ignore: cast_nullable_to_non_nullable
as List<Rival>,invitations: null == invitations ? _self._invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<Invitation>,
  ));
}


}

/// @nodoc
mixin _$Rival {

 String get uid; String get name; String? get avatar;
/// Create a copy of Rival
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RivalCopyWith<Rival> get copyWith => _$RivalCopyWithImpl<Rival>(this as Rival, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Rival;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rival&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}


@override
int get hashCode {
  final _this = this as Rival;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar);
}

@override
String toString() {
  final _this = this as Rival;
  return 'Rival(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $RivalCopyWith<$Res>  {
  factory $RivalCopyWith(Rival value, $Res Function(Rival) _then) = _$RivalCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String? avatar
});




}
/// @nodoc
class _$RivalCopyWithImpl<$Res>
    implements $RivalCopyWith<$Res> {
  _$RivalCopyWithImpl(this._self, this._then);

  final Rival _self;
  final $Res Function(Rival) _then;

/// Create a copy of Rival
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(Rival(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Rival].
extension RivalPatterns on Rival {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rival value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rival() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rival value)  $default,){
final _that = this;
switch (_that) {
case _Rival():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rival value)?  $default,){
final _that = this;
switch (_that) {
case _Rival() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String name,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rival() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String name,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _Rival():
return $default(_that.uid,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String name,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _Rival() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _Rival implements Rival {
  const _Rival({this.uid = '', this.name = '', this.avatar});
  

@override@JsonKey() final  String uid;
@override@JsonKey() final  String name;
@override final  String? avatar;

/// Create a copy of Rival
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RivalCopyWith<_Rival> get copyWith => __$RivalCopyWithImpl<_Rival>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rival&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar);
}

@override
String toString() {
    return 'Rival(uid: $uid, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$RivalCopyWith<$Res> implements $RivalCopyWith<$Res> {
  factory _$RivalCopyWith(_Rival value, $Res Function(_Rival) _then) = __$RivalCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name, String? avatar
});




}
/// @nodoc
class __$RivalCopyWithImpl<$Res>
    implements _$RivalCopyWith<$Res> {
  __$RivalCopyWithImpl(this._self, this._then);

  final _Rival _self;
  final $Res Function(_Rival) _then;

/// Create a copy of Rival
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_Rival(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$Invitation {

 String get id; String get fromUid; String get fromName; String get roomCode; int get expiresAt; String get topicId;
/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationCopyWith<Invitation> get copyWith => _$InvitationCopyWithImpl<Invitation>(this as Invitation, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Invitation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Invitation&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.fromUid, _this.fromUid) || other.fromUid == _this.fromUid)&&(identical(other.fromName, _this.fromName) || other.fromName == _this.fromName)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId));
}


@override
int get hashCode {
  final _this = this as Invitation;
  return Object.hash(runtimeType,_this.id,_this.fromUid,_this.fromName,_this.roomCode,_this.expiresAt,_this.topicId);
}

@override
String toString() {
  final _this = this as Invitation;
  return 'Invitation(id: ${_this.id}, fromUid: ${_this.fromUid}, fromName: ${_this.fromName}, roomCode: ${_this.roomCode}, expiresAt: ${_this.expiresAt}, topicId: ${_this.topicId})';
}


}

/// @nodoc
abstract mixin class $InvitationCopyWith<$Res>  {
  factory $InvitationCopyWith(Invitation value, $Res Function(Invitation) _then) = _$InvitationCopyWithImpl;
@useResult
$Res call({
 String id, String fromUid, String fromName, String roomCode, int expiresAt, String topicId
});




}
/// @nodoc
class _$InvitationCopyWithImpl<$Res>
    implements $InvitationCopyWith<$Res> {
  _$InvitationCopyWithImpl(this._self, this._then);

  final Invitation _self;
  final $Res Function(Invitation) _then;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fromUid = null,Object? fromName = null,Object? roomCode = null,Object? expiresAt = null,Object? topicId = null,}) {
  return _then(Invitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fromUid: null == fromUid ? _self.fromUid : fromUid // ignore: cast_nullable_to_non_nullable
as String,fromName: null == fromName ? _self.fromName : fromName // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Invitation].
extension InvitationPatterns on Invitation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Invitation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Invitation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Invitation value)  $default,){
final _that = this;
switch (_that) {
case _Invitation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Invitation value)?  $default,){
final _that = this;
switch (_that) {
case _Invitation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fromUid,  String fromName,  String roomCode,  int expiresAt,  String topicId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Invitation() when $default != null:
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.expiresAt,_that.topicId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fromUid,  String fromName,  String roomCode,  int expiresAt,  String topicId)  $default,) {final _that = this;
switch (_that) {
case _Invitation():
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.expiresAt,_that.topicId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fromUid,  String fromName,  String roomCode,  int expiresAt,  String topicId)?  $default,) {final _that = this;
switch (_that) {
case _Invitation() when $default != null:
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.expiresAt,_that.topicId);case _:
  return null;

}
}

}

/// @nodoc


class _Invitation implements Invitation {
  const _Invitation({this.id = '', this.fromUid = '', this.fromName = '', this.roomCode = '', this.expiresAt = 0, this.topicId = 'daily'});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String fromUid;
@override@JsonKey() final  String fromName;
@override@JsonKey() final  String roomCode;
@override@JsonKey() final  int expiresAt;
@override@JsonKey() final  String topicId;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvitationCopyWith<_Invitation> get copyWith => __$InvitationCopyWithImpl<_Invitation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Invitation&&(identical(other.id, id) || other.id == id)&&(identical(other.fromUid, fromUid) || other.fromUid == fromUid)&&(identical(other.fromName, fromName) || other.fromName == fromName)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.topicId, topicId) || other.topicId == topicId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,fromUid,fromName,roomCode,expiresAt,topicId);
}

@override
String toString() {
    return 'Invitation(id: $id, fromUid: $fromUid, fromName: $fromName, roomCode: $roomCode, expiresAt: $expiresAt, topicId: $topicId)';
}


}

/// @nodoc
abstract mixin class _$InvitationCopyWith<$Res> implements $InvitationCopyWith<$Res> {
  factory _$InvitationCopyWith(_Invitation value, $Res Function(_Invitation) _then) = __$InvitationCopyWithImpl;
@override @useResult
$Res call({
 String id, String fromUid, String fromName, String roomCode, int expiresAt, String topicId
});




}
/// @nodoc
class __$InvitationCopyWithImpl<$Res>
    implements _$InvitationCopyWith<$Res> {
  __$InvitationCopyWithImpl(this._self, this._then);

  final _Invitation _self;
  final $Res Function(_Invitation) _then;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fromUid = null,Object? fromName = null,Object? roomCode = null,Object? expiresAt = null,Object? topicId = null,}) {
  return _then(_Invitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fromUid: null == fromUid ? _self.fromUid : fromUid // ignore: cast_nullable_to_non_nullable
as String,fromName: null == fromName ? _self.fromName : fromName // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
