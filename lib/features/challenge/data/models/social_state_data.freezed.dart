// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialStateData {

@JsonKey(name: 'recent') List<RivalData>? get recent;@JsonKey(name: 'invitations') List<InvitationData>? get invitations;
/// Create a copy of SocialStateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialStateDataCopyWith<SocialStateData> get copyWith => _$SocialStateDataCopyWithImpl<SocialStateData>(this as SocialStateData, _$identity);

  /// Serializes this SocialStateData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SocialStateData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialStateData&&const DeepCollectionEquality().equals(other.recent, _this.recent)&&const DeepCollectionEquality().equals(other.invitations, _this.invitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SocialStateData;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.recent),const DeepCollectionEquality().hash(_this.invitations));
}

@override
String toString() {
  final _this = this as SocialStateData;
  return 'SocialStateData(recent: ${_this.recent}, invitations: ${_this.invitations})';
}


}

/// @nodoc
abstract mixin class $SocialStateDataCopyWith<$Res>  {
  factory $SocialStateDataCopyWith(SocialStateData value, $Res Function(SocialStateData) _then) = _$SocialStateDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'recent') List<RivalData>? recent,@JsonKey(name: 'invitations') List<InvitationData>? invitations
});




}
/// @nodoc
class _$SocialStateDataCopyWithImpl<$Res>
    implements $SocialStateDataCopyWith<$Res> {
  _$SocialStateDataCopyWithImpl(this._self, this._then);

  final SocialStateData _self;
  final $Res Function(SocialStateData) _then;

/// Create a copy of SocialStateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recent = freezed,Object? invitations = freezed,}) {
  return _then(SocialStateData(
recent: freezed == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as List<RivalData>?,invitations: freezed == invitations ? _self.invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<InvitationData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialStateData].
extension SocialStateDataPatterns on SocialStateData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialStateData value)  $default,){
final _that = this;
switch (_that) {
case _SocialStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialStateData value)?  $default,){
final _that = this;
switch (_that) {
case _SocialStateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'recent')  List<RivalData>? recent, @JsonKey(name: 'invitations')  List<InvitationData>? invitations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialStateData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'recent')  List<RivalData>? recent, @JsonKey(name: 'invitations')  List<InvitationData>? invitations)  $default,) {final _that = this;
switch (_that) {
case _SocialStateData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'recent')  List<RivalData>? recent, @JsonKey(name: 'invitations')  List<InvitationData>? invitations)?  $default,) {final _that = this;
switch (_that) {
case _SocialStateData() when $default != null:
return $default(_that.recent,_that.invitations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialStateData extends SocialStateData {
  const _SocialStateData({@JsonKey(name: 'recent')  List<RivalData>? recent, @JsonKey(name: 'invitations')  List<InvitationData>? invitations}): _recent = recent,_invitations = invitations,super._();
  factory _SocialStateData.fromJson(Map<String, dynamic> json) => _$SocialStateDataFromJson(json);

 final  List<RivalData>? _recent;
@override@JsonKey(name: 'recent') List<RivalData>? get recent {
  final value = _recent;
  if (value == null) return null;
  if (_recent is EqualUnmodifiableListView) return _recent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<InvitationData>? _invitations;
@override@JsonKey(name: 'invitations') List<InvitationData>? get invitations {
  final value = _invitations;
  if (value == null) return null;
  if (_invitations is EqualUnmodifiableListView) return _invitations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SocialStateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialStateDataCopyWith<_SocialStateData> get copyWith => __$SocialStateDataCopyWithImpl<_SocialStateData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialStateDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialStateData&&const DeepCollectionEquality().equals(other.recent, _recent)&&const DeepCollectionEquality().equals(other.invitations, _invitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_recent),const DeepCollectionEquality().hash(_invitations));
}

@override
String toString() {
    return 'SocialStateData(recent: $recent, invitations: $invitations)';
}


}

/// @nodoc
abstract mixin class _$SocialStateDataCopyWith<$Res> implements $SocialStateDataCopyWith<$Res> {
  factory _$SocialStateDataCopyWith(_SocialStateData value, $Res Function(_SocialStateData) _then) = __$SocialStateDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'recent') List<RivalData>? recent,@JsonKey(name: 'invitations') List<InvitationData>? invitations
});




}
/// @nodoc
class __$SocialStateDataCopyWithImpl<$Res>
    implements _$SocialStateDataCopyWith<$Res> {
  __$SocialStateDataCopyWithImpl(this._self, this._then);

  final _SocialStateData _self;
  final $Res Function(_SocialStateData) _then;

/// Create a copy of SocialStateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recent = freezed,Object? invitations = freezed,}) {
  return _then(_SocialStateData(
recent: freezed == recent ? _self._recent : recent // ignore: cast_nullable_to_non_nullable
as List<RivalData>?,invitations: freezed == invitations ? _self._invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<InvitationData>?,
  ));
}


}


/// @nodoc
mixin _$RivalData {

@JsonKey(name: 'uid') String? get uid;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'avatar') String? get avatar;
/// Create a copy of RivalData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RivalDataCopyWith<RivalData> get copyWith => _$RivalDataCopyWithImpl<RivalData>(this as RivalData, _$identity);

  /// Serializes this RivalData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RivalData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RivalData&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RivalData;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar);
}

@override
String toString() {
  final _this = this as RivalData;
  return 'RivalData(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $RivalDataCopyWith<$Res>  {
  factory $RivalDataCopyWith(RivalData value, $Res Function(RivalData) _then) = _$RivalDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar
});




}
/// @nodoc
class _$RivalDataCopyWithImpl<$Res>
    implements $RivalDataCopyWith<$Res> {
  _$RivalDataCopyWithImpl(this._self, this._then);

  final RivalData _self;
  final $Res Function(RivalData) _then;

/// Create a copy of RivalData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? name = freezed,Object? avatar = freezed,}) {
  return _then(RivalData(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RivalData].
extension RivalDataPatterns on RivalData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RivalData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RivalData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RivalData value)  $default,){
final _that = this;
switch (_that) {
case _RivalData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RivalData value)?  $default,){
final _that = this;
switch (_that) {
case _RivalData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RivalData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _RivalData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'avatar')  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _RivalData() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RivalData extends RivalData {
  const _RivalData({@JsonKey(name: 'uid') this.uid, @JsonKey(name: 'name') this.name, @JsonKey(name: 'avatar') this.avatar}): super._();
  factory _RivalData.fromJson(Map<String, dynamic> json) => _$RivalDataFromJson(json);

@override@JsonKey(name: 'uid') final  String? uid;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'avatar') final  String? avatar;

/// Create a copy of RivalData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RivalDataCopyWith<_RivalData> get copyWith => __$RivalDataCopyWithImpl<_RivalData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RivalDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RivalData&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar);
}

@override
String toString() {
    return 'RivalData(uid: $uid, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$RivalDataCopyWith<$Res> implements $RivalDataCopyWith<$Res> {
  factory _$RivalDataCopyWith(_RivalData value, $Res Function(_RivalData) _then) = __$RivalDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar
});




}
/// @nodoc
class __$RivalDataCopyWithImpl<$Res>
    implements _$RivalDataCopyWith<$Res> {
  __$RivalDataCopyWithImpl(this._self, this._then);

  final _RivalData _self;
  final $Res Function(_RivalData) _then;

/// Create a copy of RivalData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? name = freezed,Object? avatar = freezed,}) {
  return _then(_RivalData(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InvitationData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'fromUid') String? get fromUid;@JsonKey(name: 'fromName') String? get fromName;@JsonKey(name: 'roomCode') String? get roomCode;@JsonKey(name: 'expiresAt') int? get expiresAt;@JsonKey(name: 'topicId') String? get topicId;
/// Create a copy of InvitationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationDataCopyWith<InvitationData> get copyWith => _$InvitationDataCopyWithImpl<InvitationData>(this as InvitationData, _$identity);

  /// Serializes this InvitationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InvitationData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvitationData&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.fromUid, _this.fromUid) || other.fromUid == _this.fromUid)&&(identical(other.fromName, _this.fromName) || other.fromName == _this.fromName)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InvitationData;
  return Object.hash(runtimeType,_this.id,_this.fromUid,_this.fromName,_this.roomCode,_this.expiresAt,_this.topicId);
}

@override
String toString() {
  final _this = this as InvitationData;
  return 'InvitationData(id: ${_this.id}, fromUid: ${_this.fromUid}, fromName: ${_this.fromName}, roomCode: ${_this.roomCode}, expiresAt: ${_this.expiresAt}, topicId: ${_this.topicId})';
}


}

/// @nodoc
abstract mixin class $InvitationDataCopyWith<$Res>  {
  factory $InvitationDataCopyWith(InvitationData value, $Res Function(InvitationData) _then) = _$InvitationDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'fromUid') String? fromUid,@JsonKey(name: 'fromName') String? fromName,@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'expiresAt') int? expiresAt,@JsonKey(name: 'topicId') String? topicId
});




}
/// @nodoc
class _$InvitationDataCopyWithImpl<$Res>
    implements $InvitationDataCopyWith<$Res> {
  _$InvitationDataCopyWithImpl(this._self, this._then);

  final InvitationData _self;
  final $Res Function(InvitationData) _then;

/// Create a copy of InvitationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fromUid = freezed,Object? fromName = freezed,Object? roomCode = freezed,Object? expiresAt = freezed,Object? topicId = freezed,}) {
  return _then(InvitationData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fromUid: freezed == fromUid ? _self.fromUid : fromUid // ignore: cast_nullable_to_non_nullable
as String?,fromName: freezed == fromName ? _self.fromName : fromName // ignore: cast_nullable_to_non_nullable
as String?,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvitationData].
extension InvitationDataPatterns on InvitationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvitationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvitationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvitationData value)  $default,){
final _that = this;
switch (_that) {
case _InvitationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvitationData value)?  $default,){
final _that = this;
switch (_that) {
case _InvitationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'fromUid')  String? fromUid, @JsonKey(name: 'fromName')  String? fromName, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'expiresAt')  int? expiresAt, @JsonKey(name: 'topicId')  String? topicId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvitationData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'fromUid')  String? fromUid, @JsonKey(name: 'fromName')  String? fromName, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'expiresAt')  int? expiresAt, @JsonKey(name: 'topicId')  String? topicId)  $default,) {final _that = this;
switch (_that) {
case _InvitationData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'fromUid')  String? fromUid, @JsonKey(name: 'fromName')  String? fromName, @JsonKey(name: 'roomCode')  String? roomCode, @JsonKey(name: 'expiresAt')  int? expiresAt, @JsonKey(name: 'topicId')  String? topicId)?  $default,) {final _that = this;
switch (_that) {
case _InvitationData() when $default != null:
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.expiresAt,_that.topicId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvitationData extends InvitationData {
  const _InvitationData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'fromUid') this.fromUid, @JsonKey(name: 'fromName') this.fromName, @JsonKey(name: 'roomCode') this.roomCode, @JsonKey(name: 'expiresAt') this.expiresAt, @JsonKey(name: 'topicId') this.topicId}): super._();
  factory _InvitationData.fromJson(Map<String, dynamic> json) => _$InvitationDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'fromUid') final  String? fromUid;
@override@JsonKey(name: 'fromName') final  String? fromName;
@override@JsonKey(name: 'roomCode') final  String? roomCode;
@override@JsonKey(name: 'expiresAt') final  int? expiresAt;
@override@JsonKey(name: 'topicId') final  String? topicId;

/// Create a copy of InvitationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvitationDataCopyWith<_InvitationData> get copyWith => __$InvitationDataCopyWithImpl<_InvitationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvitationDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvitationData&&(identical(other.id, id) || other.id == id)&&(identical(other.fromUid, fromUid) || other.fromUid == fromUid)&&(identical(other.fromName, fromName) || other.fromName == fromName)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.topicId, topicId) || other.topicId == topicId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,fromUid,fromName,roomCode,expiresAt,topicId);
}

@override
String toString() {
    return 'InvitationData(id: $id, fromUid: $fromUid, fromName: $fromName, roomCode: $roomCode, expiresAt: $expiresAt, topicId: $topicId)';
}


}

/// @nodoc
abstract mixin class _$InvitationDataCopyWith<$Res> implements $InvitationDataCopyWith<$Res> {
  factory _$InvitationDataCopyWith(_InvitationData value, $Res Function(_InvitationData) _then) = __$InvitationDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'fromUid') String? fromUid,@JsonKey(name: 'fromName') String? fromName,@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'expiresAt') int? expiresAt,@JsonKey(name: 'topicId') String? topicId
});




}
/// @nodoc
class __$InvitationDataCopyWithImpl<$Res>
    implements _$InvitationDataCopyWith<$Res> {
  __$InvitationDataCopyWithImpl(this._self, this._then);

  final _InvitationData _self;
  final $Res Function(_InvitationData) _then;

/// Create a copy of InvitationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fromUid = freezed,Object? fromName = freezed,Object? roomCode = freezed,Object? expiresAt = freezed,Object? topicId = freezed,}) {
  return _then(_InvitationData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,fromUid: freezed == fromUid ? _self.fromUid : fromUid // ignore: cast_nullable_to_non_nullable
as String?,fromName: freezed == fromName ? _self.fromName : fromName // ignore: cast_nullable_to_non_nullable
as String?,roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
