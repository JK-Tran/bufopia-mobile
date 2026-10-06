// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_state_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialStateEntity {

 List<RivalEntity> get recent; List<InvitationEntity> get invitations;
/// Create a copy of SocialStateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialStateEntityCopyWith<SocialStateEntity> get copyWith => _$SocialStateEntityCopyWithImpl<SocialStateEntity>(this as SocialStateEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SocialStateEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialStateEntity&&const DeepCollectionEquality().equals(other.recent, _this.recent)&&const DeepCollectionEquality().equals(other.invitations, _this.invitations));
}


@override
int get hashCode {
  final _this = this as SocialStateEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.recent),const DeepCollectionEquality().hash(_this.invitations));
}

@override
String toString() {
  final _this = this as SocialStateEntity;
  return 'SocialStateEntity(recent: ${_this.recent}, invitations: ${_this.invitations})';
}


}

/// @nodoc
abstract mixin class $SocialStateEntityCopyWith<$Res>  {
  factory $SocialStateEntityCopyWith(SocialStateEntity value, $Res Function(SocialStateEntity) _then) = _$SocialStateEntityCopyWithImpl;
@useResult
$Res call({
 List<RivalEntity> recent, List<InvitationEntity> invitations
});




}
/// @nodoc
class _$SocialStateEntityCopyWithImpl<$Res>
    implements $SocialStateEntityCopyWith<$Res> {
  _$SocialStateEntityCopyWithImpl(this._self, this._then);

  final SocialStateEntity _self;
  final $Res Function(SocialStateEntity) _then;

/// Create a copy of SocialStateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recent = null,Object? invitations = null,}) {
  return _then(SocialStateEntity(
recent: null == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as List<RivalEntity>,invitations: null == invitations ? _self.invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<InvitationEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialStateEntity].
extension SocialStateEntityPatterns on SocialStateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialStateEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialStateEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialStateEntity value)  $default,){
final _that = this;
switch (_that) {
case _SocialStateEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialStateEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SocialStateEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RivalEntity> recent,  List<InvitationEntity> invitations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialStateEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RivalEntity> recent,  List<InvitationEntity> invitations)  $default,) {final _that = this;
switch (_that) {
case _SocialStateEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RivalEntity> recent,  List<InvitationEntity> invitations)?  $default,) {final _that = this;
switch (_that) {
case _SocialStateEntity() when $default != null:
return $default(_that.recent,_that.invitations);case _:
  return null;

}
}

}

/// @nodoc


class _SocialStateEntity implements SocialStateEntity {
  const _SocialStateEntity({ List<RivalEntity> recent = const [],  List<InvitationEntity> invitations = const []}): _recent = recent,_invitations = invitations;
  

 final  List<RivalEntity> _recent;
@override@JsonKey() List<RivalEntity> get recent {
  if (_recent is EqualUnmodifiableListView) return _recent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recent);
}

 final  List<InvitationEntity> _invitations;
@override@JsonKey() List<InvitationEntity> get invitations {
  if (_invitations is EqualUnmodifiableListView) return _invitations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invitations);
}


/// Create a copy of SocialStateEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialStateEntityCopyWith<_SocialStateEntity> get copyWith => __$SocialStateEntityCopyWithImpl<_SocialStateEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialStateEntity&&const DeepCollectionEquality().equals(other.recent, _recent)&&const DeepCollectionEquality().equals(other.invitations, _invitations));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_recent),const DeepCollectionEquality().hash(_invitations));
}

@override
String toString() {
    return 'SocialStateEntity(recent: $recent, invitations: $invitations)';
}


}

/// @nodoc
abstract mixin class _$SocialStateEntityCopyWith<$Res> implements $SocialStateEntityCopyWith<$Res> {
  factory _$SocialStateEntityCopyWith(_SocialStateEntity value, $Res Function(_SocialStateEntity) _then) = __$SocialStateEntityCopyWithImpl;
@override @useResult
$Res call({
 List<RivalEntity> recent, List<InvitationEntity> invitations
});




}
/// @nodoc
class __$SocialStateEntityCopyWithImpl<$Res>
    implements _$SocialStateEntityCopyWith<$Res> {
  __$SocialStateEntityCopyWithImpl(this._self, this._then);

  final _SocialStateEntity _self;
  final $Res Function(_SocialStateEntity) _then;

/// Create a copy of SocialStateEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recent = null,Object? invitations = null,}) {
  return _then(_SocialStateEntity(
recent: null == recent ? _self._recent : recent // ignore: cast_nullable_to_non_nullable
as List<RivalEntity>,invitations: null == invitations ? _self._invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<InvitationEntity>,
  ));
}


}

/// @nodoc
mixin _$RivalEntity {

 String get uid; String get name; String? get avatar;
/// Create a copy of RivalEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RivalEntityCopyWith<RivalEntity> get copyWith => _$RivalEntityCopyWithImpl<RivalEntity>(this as RivalEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RivalEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RivalEntity&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}


@override
int get hashCode {
  final _this = this as RivalEntity;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar);
}

@override
String toString() {
  final _this = this as RivalEntity;
  return 'RivalEntity(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $RivalEntityCopyWith<$Res>  {
  factory $RivalEntityCopyWith(RivalEntity value, $Res Function(RivalEntity) _then) = _$RivalEntityCopyWithImpl;
@useResult
$Res call({
 String uid, String name, String? avatar
});




}
/// @nodoc
class _$RivalEntityCopyWithImpl<$Res>
    implements $RivalEntityCopyWith<$Res> {
  _$RivalEntityCopyWithImpl(this._self, this._then);

  final RivalEntity _self;
  final $Res Function(RivalEntity) _then;

/// Create a copy of RivalEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(RivalEntity(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RivalEntity].
extension RivalEntityPatterns on RivalEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RivalEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RivalEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RivalEntity value)  $default,){
final _that = this;
switch (_that) {
case _RivalEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RivalEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RivalEntity() when $default != null:
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
case _RivalEntity() when $default != null:
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
case _RivalEntity():
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
case _RivalEntity() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _RivalEntity implements RivalEntity {
  const _RivalEntity({this.uid = '', this.name = '', this.avatar});
  

@override@JsonKey() final  String uid;
@override@JsonKey() final  String name;
@override final  String? avatar;

/// Create a copy of RivalEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RivalEntityCopyWith<_RivalEntity> get copyWith => __$RivalEntityCopyWithImpl<_RivalEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RivalEntity&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar);
}

@override
String toString() {
    return 'RivalEntity(uid: $uid, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$RivalEntityCopyWith<$Res> implements $RivalEntityCopyWith<$Res> {
  factory _$RivalEntityCopyWith(_RivalEntity value, $Res Function(_RivalEntity) _then) = __$RivalEntityCopyWithImpl;
@override @useResult
$Res call({
 String uid, String name, String? avatar
});




}
/// @nodoc
class __$RivalEntityCopyWithImpl<$Res>
    implements _$RivalEntityCopyWith<$Res> {
  __$RivalEntityCopyWithImpl(this._self, this._then);

  final _RivalEntity _self;
  final $Res Function(_RivalEntity) _then;

/// Create a copy of RivalEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_RivalEntity(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$InvitationEntity {

 String get id; String get fromUid; String get fromName; String get roomCode; int get expiresAt; String get topicId;
/// Create a copy of InvitationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationEntityCopyWith<InvitationEntity> get copyWith => _$InvitationEntityCopyWithImpl<InvitationEntity>(this as InvitationEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as InvitationEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvitationEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.fromUid, _this.fromUid) || other.fromUid == _this.fromUid)&&(identical(other.fromName, _this.fromName) || other.fromName == _this.fromName)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId));
}


@override
int get hashCode {
  final _this = this as InvitationEntity;
  return Object.hash(runtimeType,_this.id,_this.fromUid,_this.fromName,_this.roomCode,_this.expiresAt,_this.topicId);
}

@override
String toString() {
  final _this = this as InvitationEntity;
  return 'InvitationEntity(id: ${_this.id}, fromUid: ${_this.fromUid}, fromName: ${_this.fromName}, roomCode: ${_this.roomCode}, expiresAt: ${_this.expiresAt}, topicId: ${_this.topicId})';
}


}

/// @nodoc
abstract mixin class $InvitationEntityCopyWith<$Res>  {
  factory $InvitationEntityCopyWith(InvitationEntity value, $Res Function(InvitationEntity) _then) = _$InvitationEntityCopyWithImpl;
@useResult
$Res call({
 String id, String fromUid, String fromName, String roomCode, int expiresAt, String topicId
});




}
/// @nodoc
class _$InvitationEntityCopyWithImpl<$Res>
    implements $InvitationEntityCopyWith<$Res> {
  _$InvitationEntityCopyWithImpl(this._self, this._then);

  final InvitationEntity _self;
  final $Res Function(InvitationEntity) _then;

/// Create a copy of InvitationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fromUid = null,Object? fromName = null,Object? roomCode = null,Object? expiresAt = null,Object? topicId = null,}) {
  return _then(InvitationEntity(
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


/// Adds pattern-matching-related methods to [InvitationEntity].
extension InvitationEntityPatterns on InvitationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvitationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvitationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvitationEntity value)  $default,){
final _that = this;
switch (_that) {
case _InvitationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvitationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _InvitationEntity() when $default != null:
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
case _InvitationEntity() when $default != null:
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
case _InvitationEntity():
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
case _InvitationEntity() when $default != null:
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.expiresAt,_that.topicId);case _:
  return null;

}
}

}

/// @nodoc


class _InvitationEntity implements InvitationEntity {
  const _InvitationEntity({this.id = '', this.fromUid = '', this.fromName = '', this.roomCode = '', this.expiresAt = 0, this.topicId = 'daily'});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String fromUid;
@override@JsonKey() final  String fromName;
@override@JsonKey() final  String roomCode;
@override@JsonKey() final  int expiresAt;
@override@JsonKey() final  String topicId;

/// Create a copy of InvitationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvitationEntityCopyWith<_InvitationEntity> get copyWith => __$InvitationEntityCopyWithImpl<_InvitationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvitationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fromUid, fromUid) || other.fromUid == fromUid)&&(identical(other.fromName, fromName) || other.fromName == fromName)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.topicId, topicId) || other.topicId == topicId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,fromUid,fromName,roomCode,expiresAt,topicId);
}

@override
String toString() {
    return 'InvitationEntity(id: $id, fromUid: $fromUid, fromName: $fromName, roomCode: $roomCode, expiresAt: $expiresAt, topicId: $topicId)';
}


}

/// @nodoc
abstract mixin class _$InvitationEntityCopyWith<$Res> implements $InvitationEntityCopyWith<$Res> {
  factory _$InvitationEntityCopyWith(_InvitationEntity value, $Res Function(_InvitationEntity) _then) = __$InvitationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String fromUid, String fromName, String roomCode, int expiresAt, String topicId
});




}
/// @nodoc
class __$InvitationEntityCopyWithImpl<$Res>
    implements _$InvitationEntityCopyWith<$Res> {
  __$InvitationEntityCopyWithImpl(this._self, this._then);

  final _InvitationEntity _self;
  final $Res Function(_InvitationEntity) _then;

/// Create a copy of InvitationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fromUid = null,Object? fromName = null,Object? roomCode = null,Object? expiresAt = null,Object? topicId = null,}) {
  return _then(_InvitationEntity(
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
