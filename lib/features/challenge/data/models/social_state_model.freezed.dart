// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialStateModel {

@JsonKey(name: 'recent') List<RivalModel>? get recent;@JsonKey(name: 'invitations') List<InvitationModel>? get invitations;
/// Create a copy of SocialStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialStateModelCopyWith<SocialStateModel> get copyWith => _$SocialStateModelCopyWithImpl<SocialStateModel>(this as SocialStateModel, _$identity);

  /// Serializes this SocialStateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SocialStateModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialStateModel&&const DeepCollectionEquality().equals(other.recent, _this.recent)&&const DeepCollectionEquality().equals(other.invitations, _this.invitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SocialStateModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.recent),const DeepCollectionEquality().hash(_this.invitations));
}

@override
String toString() {
  final _this = this as SocialStateModel;
  return 'SocialStateModel(recent: ${_this.recent}, invitations: ${_this.invitations})';
}


}

/// @nodoc
abstract mixin class $SocialStateModelCopyWith<$Res>  {
  factory $SocialStateModelCopyWith(SocialStateModel value, $Res Function(SocialStateModel) _then) = _$SocialStateModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'recent') List<RivalModel>? recent,@JsonKey(name: 'invitations') List<InvitationModel>? invitations
});




}
/// @nodoc
class _$SocialStateModelCopyWithImpl<$Res>
    implements $SocialStateModelCopyWith<$Res> {
  _$SocialStateModelCopyWithImpl(this._self, this._then);

  final SocialStateModel _self;
  final $Res Function(SocialStateModel) _then;

/// Create a copy of SocialStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recent = freezed,Object? invitations = freezed,}) {
  return _then(SocialStateModel(
recent: freezed == recent ? _self.recent : recent // ignore: cast_nullable_to_non_nullable
as List<RivalModel>?,invitations: freezed == invitations ? _self.invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<InvitationModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialStateModel].
extension SocialStateModelPatterns on SocialStateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialStateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialStateModel value)  $default,){
final _that = this;
switch (_that) {
case _SocialStateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _SocialStateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'recent')  List<RivalModel>? recent, @JsonKey(name: 'invitations')  List<InvitationModel>? invitations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialStateModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'recent')  List<RivalModel>? recent, @JsonKey(name: 'invitations')  List<InvitationModel>? invitations)  $default,) {final _that = this;
switch (_that) {
case _SocialStateModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'recent')  List<RivalModel>? recent, @JsonKey(name: 'invitations')  List<InvitationModel>? invitations)?  $default,) {final _that = this;
switch (_that) {
case _SocialStateModel() when $default != null:
return $default(_that.recent,_that.invitations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialStateModel extends SocialStateModel {
  const _SocialStateModel({@JsonKey(name: 'recent')  List<RivalModel>? recent, @JsonKey(name: 'invitations')  List<InvitationModel>? invitations}): _recent = recent,_invitations = invitations,super._();
  factory _SocialStateModel.fromJson(Map<String, dynamic> json) => _$SocialStateModelFromJson(json);

 final  List<RivalModel>? _recent;
@override@JsonKey(name: 'recent') List<RivalModel>? get recent {
  final value = _recent;
  if (value == null) return null;
  if (_recent is EqualUnmodifiableListView) return _recent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<InvitationModel>? _invitations;
@override@JsonKey(name: 'invitations') List<InvitationModel>? get invitations {
  final value = _invitations;
  if (value == null) return null;
  if (_invitations is EqualUnmodifiableListView) return _invitations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SocialStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialStateModelCopyWith<_SocialStateModel> get copyWith => __$SocialStateModelCopyWithImpl<_SocialStateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialStateModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialStateModel&&const DeepCollectionEquality().equals(other.recent, _recent)&&const DeepCollectionEquality().equals(other.invitations, _invitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_recent),const DeepCollectionEquality().hash(_invitations));
}

@override
String toString() {
    return 'SocialStateModel(recent: $recent, invitations: $invitations)';
}


}

/// @nodoc
abstract mixin class _$SocialStateModelCopyWith<$Res> implements $SocialStateModelCopyWith<$Res> {
  factory _$SocialStateModelCopyWith(_SocialStateModel value, $Res Function(_SocialStateModel) _then) = __$SocialStateModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'recent') List<RivalModel>? recent,@JsonKey(name: 'invitations') List<InvitationModel>? invitations
});




}
/// @nodoc
class __$SocialStateModelCopyWithImpl<$Res>
    implements _$SocialStateModelCopyWith<$Res> {
  __$SocialStateModelCopyWithImpl(this._self, this._then);

  final _SocialStateModel _self;
  final $Res Function(_SocialStateModel) _then;

/// Create a copy of SocialStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recent = freezed,Object? invitations = freezed,}) {
  return _then(_SocialStateModel(
recent: freezed == recent ? _self._recent : recent // ignore: cast_nullable_to_non_nullable
as List<RivalModel>?,invitations: freezed == invitations ? _self._invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<InvitationModel>?,
  ));
}


}


/// @nodoc
mixin _$RivalModel {

@JsonKey(name: 'uid') String? get uid;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'avatar') String? get avatar;
/// Create a copy of RivalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RivalModelCopyWith<RivalModel> get copyWith => _$RivalModelCopyWithImpl<RivalModel>(this as RivalModel, _$identity);

  /// Serializes this RivalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RivalModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RivalModel&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatar, _this.avatar) || other.avatar == _this.avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RivalModel;
  return Object.hash(runtimeType,_this.uid,_this.name,_this.avatar);
}

@override
String toString() {
  final _this = this as RivalModel;
  return 'RivalModel(uid: ${_this.uid}, name: ${_this.name}, avatar: ${_this.avatar})';
}


}

/// @nodoc
abstract mixin class $RivalModelCopyWith<$Res>  {
  factory $RivalModelCopyWith(RivalModel value, $Res Function(RivalModel) _then) = _$RivalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar
});




}
/// @nodoc
class _$RivalModelCopyWithImpl<$Res>
    implements $RivalModelCopyWith<$Res> {
  _$RivalModelCopyWithImpl(this._self, this._then);

  final RivalModel _self;
  final $Res Function(RivalModel) _then;

/// Create a copy of RivalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? name = freezed,Object? avatar = freezed,}) {
  return _then(RivalModel(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RivalModel].
extension RivalModelPatterns on RivalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RivalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RivalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RivalModel value)  $default,){
final _that = this;
switch (_that) {
case _RivalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RivalModel value)?  $default,){
final _that = this;
switch (_that) {
case _RivalModel() when $default != null:
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
case _RivalModel() when $default != null:
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
case _RivalModel():
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
case _RivalModel() when $default != null:
return $default(_that.uid,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RivalModel extends RivalModel {
  const _RivalModel({@JsonKey(name: 'uid') this.uid, @JsonKey(name: 'name') this.name, @JsonKey(name: 'avatar') this.avatar}): super._();
  factory _RivalModel.fromJson(Map<String, dynamic> json) => _$RivalModelFromJson(json);

@override@JsonKey(name: 'uid') final  String? uid;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'avatar') final  String? avatar;

/// Create a copy of RivalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RivalModelCopyWith<_RivalModel> get copyWith => __$RivalModelCopyWithImpl<_RivalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RivalModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RivalModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,name,avatar);
}

@override
String toString() {
    return 'RivalModel(uid: $uid, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$RivalModelCopyWith<$Res> implements $RivalModelCopyWith<$Res> {
  factory _$RivalModelCopyWith(_RivalModel value, $Res Function(_RivalModel) _then) = __$RivalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'name') String? name,@JsonKey(name: 'avatar') String? avatar
});




}
/// @nodoc
class __$RivalModelCopyWithImpl<$Res>
    implements _$RivalModelCopyWith<$Res> {
  __$RivalModelCopyWithImpl(this._self, this._then);

  final _RivalModel _self;
  final $Res Function(_RivalModel) _then;

/// Create a copy of RivalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? name = freezed,Object? avatar = freezed,}) {
  return _then(_RivalModel(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InvitationModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'fromUid') String? get fromUid;@JsonKey(name: 'fromName') String? get fromName;@JsonKey(name: 'roomCode') String? get roomCode;@JsonKey(name: 'expiresAt') int? get expiresAt;@JsonKey(name: 'topicId') String? get topicId;
/// Create a copy of InvitationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationModelCopyWith<InvitationModel> get copyWith => _$InvitationModelCopyWithImpl<InvitationModel>(this as InvitationModel, _$identity);

  /// Serializes this InvitationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InvitationModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvitationModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.fromUid, _this.fromUid) || other.fromUid == _this.fromUid)&&(identical(other.fromName, _this.fromName) || other.fromName == _this.fromName)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InvitationModel;
  return Object.hash(runtimeType,_this.id,_this.fromUid,_this.fromName,_this.roomCode,_this.expiresAt,_this.topicId);
}

@override
String toString() {
  final _this = this as InvitationModel;
  return 'InvitationModel(id: ${_this.id}, fromUid: ${_this.fromUid}, fromName: ${_this.fromName}, roomCode: ${_this.roomCode}, expiresAt: ${_this.expiresAt}, topicId: ${_this.topicId})';
}


}

/// @nodoc
abstract mixin class $InvitationModelCopyWith<$Res>  {
  factory $InvitationModelCopyWith(InvitationModel value, $Res Function(InvitationModel) _then) = _$InvitationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'fromUid') String? fromUid,@JsonKey(name: 'fromName') String? fromName,@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'expiresAt') int? expiresAt,@JsonKey(name: 'topicId') String? topicId
});




}
/// @nodoc
class _$InvitationModelCopyWithImpl<$Res>
    implements $InvitationModelCopyWith<$Res> {
  _$InvitationModelCopyWithImpl(this._self, this._then);

  final InvitationModel _self;
  final $Res Function(InvitationModel) _then;

/// Create a copy of InvitationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? fromUid = freezed,Object? fromName = freezed,Object? roomCode = freezed,Object? expiresAt = freezed,Object? topicId = freezed,}) {
  return _then(InvitationModel(
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


/// Adds pattern-matching-related methods to [InvitationModel].
extension InvitationModelPatterns on InvitationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvitationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvitationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvitationModel value)  $default,){
final _that = this;
switch (_that) {
case _InvitationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvitationModel value)?  $default,){
final _that = this;
switch (_that) {
case _InvitationModel() when $default != null:
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
case _InvitationModel() when $default != null:
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
case _InvitationModel():
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
case _InvitationModel() when $default != null:
return $default(_that.id,_that.fromUid,_that.fromName,_that.roomCode,_that.expiresAt,_that.topicId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvitationModel extends InvitationModel {
  const _InvitationModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'fromUid') this.fromUid, @JsonKey(name: 'fromName') this.fromName, @JsonKey(name: 'roomCode') this.roomCode, @JsonKey(name: 'expiresAt') this.expiresAt, @JsonKey(name: 'topicId') this.topicId}): super._();
  factory _InvitationModel.fromJson(Map<String, dynamic> json) => _$InvitationModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'fromUid') final  String? fromUid;
@override@JsonKey(name: 'fromName') final  String? fromName;
@override@JsonKey(name: 'roomCode') final  String? roomCode;
@override@JsonKey(name: 'expiresAt') final  int? expiresAt;
@override@JsonKey(name: 'topicId') final  String? topicId;

/// Create a copy of InvitationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvitationModelCopyWith<_InvitationModel> get copyWith => __$InvitationModelCopyWithImpl<_InvitationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvitationModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvitationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fromUid, fromUid) || other.fromUid == fromUid)&&(identical(other.fromName, fromName) || other.fromName == fromName)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.topicId, topicId) || other.topicId == topicId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,fromUid,fromName,roomCode,expiresAt,topicId);
}

@override
String toString() {
    return 'InvitationModel(id: $id, fromUid: $fromUid, fromName: $fromName, roomCode: $roomCode, expiresAt: $expiresAt, topicId: $topicId)';
}


}

/// @nodoc
abstract mixin class _$InvitationModelCopyWith<$Res> implements $InvitationModelCopyWith<$Res> {
  factory _$InvitationModelCopyWith(_InvitationModel value, $Res Function(_InvitationModel) _then) = __$InvitationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'fromUid') String? fromUid,@JsonKey(name: 'fromName') String? fromName,@JsonKey(name: 'roomCode') String? roomCode,@JsonKey(name: 'expiresAt') int? expiresAt,@JsonKey(name: 'topicId') String? topicId
});




}
/// @nodoc
class __$InvitationModelCopyWithImpl<$Res>
    implements _$InvitationModelCopyWith<$Res> {
  __$InvitationModelCopyWithImpl(this._self, this._then);

  final _InvitationModel _self;
  final $Res Function(_InvitationModel) _then;

/// Create a copy of InvitationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? fromUid = freezed,Object? fromName = freezed,Object? roomCode = freezed,Object? expiresAt = freezed,Object? topicId = freezed,}) {
  return _then(_InvitationModel(
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
