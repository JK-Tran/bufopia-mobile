// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skip_proposal_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkipProposalData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'proposalId') String? get proposalId;@JsonKey(name: 'action') String? get action;@JsonKey(name: 'initiatorUid') String? get initiatorUid;@JsonKey(name: 'initiatorName') String? get initiatorName;@JsonKey(name: 'roundIndex') int? get roundIndex;@JsonKey(name: 'expiresAt') int? get expiresAt;@JsonKey(name: 'approvedUids') List<String>? get approvedUids;@JsonKey(name: 'requiredUids') List<String>? get requiredUids;@JsonKey(name: 'votes') Map<String, bool>? get votes;
/// Create a copy of SkipProposalData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkipProposalDataCopyWith<SkipProposalData> get copyWith => _$SkipProposalDataCopyWithImpl<SkipProposalData>(this as SkipProposalData, _$identity);

  /// Serializes this SkipProposalData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SkipProposalData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkipProposalData&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.proposalId, _this.proposalId) || other.proposalId == _this.proposalId)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.initiatorUid, _this.initiatorUid) || other.initiatorUid == _this.initiatorUid)&&(identical(other.initiatorName, _this.initiatorName) || other.initiatorName == _this.initiatorName)&&(identical(other.roundIndex, _this.roundIndex) || other.roundIndex == _this.roundIndex)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&const DeepCollectionEquality().equals(other.approvedUids, _this.approvedUids)&&const DeepCollectionEquality().equals(other.requiredUids, _this.requiredUids)&&const DeepCollectionEquality().equals(other.votes, _this.votes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SkipProposalData;
  return Object.hash(runtimeType,_this.id,_this.proposalId,_this.action,_this.initiatorUid,_this.initiatorName,_this.roundIndex,_this.expiresAt,const DeepCollectionEquality().hash(_this.approvedUids),const DeepCollectionEquality().hash(_this.requiredUids),const DeepCollectionEquality().hash(_this.votes));
}

@override
String toString() {
  final _this = this as SkipProposalData;
  return 'SkipProposalData(id: ${_this.id}, proposalId: ${_this.proposalId}, action: ${_this.action}, initiatorUid: ${_this.initiatorUid}, initiatorName: ${_this.initiatorName}, roundIndex: ${_this.roundIndex}, expiresAt: ${_this.expiresAt}, approvedUids: ${_this.approvedUids}, requiredUids: ${_this.requiredUids}, votes: ${_this.votes})';
}


}

/// @nodoc
abstract mixin class $SkipProposalDataCopyWith<$Res>  {
  factory $SkipProposalDataCopyWith(SkipProposalData value, $Res Function(SkipProposalData) _then) = _$SkipProposalDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'proposalId') String? proposalId,@JsonKey(name: 'action') String? action,@JsonKey(name: 'initiatorUid') String? initiatorUid,@JsonKey(name: 'initiatorName') String? initiatorName,@JsonKey(name: 'roundIndex') int? roundIndex,@JsonKey(name: 'expiresAt') int? expiresAt,@JsonKey(name: 'approvedUids') List<String>? approvedUids,@JsonKey(name: 'requiredUids') List<String>? requiredUids,@JsonKey(name: 'votes') Map<String, bool>? votes
});




}
/// @nodoc
class _$SkipProposalDataCopyWithImpl<$Res>
    implements $SkipProposalDataCopyWith<$Res> {
  _$SkipProposalDataCopyWithImpl(this._self, this._then);

  final SkipProposalData _self;
  final $Res Function(SkipProposalData) _then;

/// Create a copy of SkipProposalData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? proposalId = freezed,Object? action = freezed,Object? initiatorUid = freezed,Object? initiatorName = freezed,Object? roundIndex = freezed,Object? expiresAt = freezed,Object? approvedUids = freezed,Object? requiredUids = freezed,Object? votes = freezed,}) {
  return _then(SkipProposalData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,proposalId: freezed == proposalId ? _self.proposalId : proposalId // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,initiatorUid: freezed == initiatorUid ? _self.initiatorUid : initiatorUid // ignore: cast_nullable_to_non_nullable
as String?,initiatorName: freezed == initiatorName ? _self.initiatorName : initiatorName // ignore: cast_nullable_to_non_nullable
as String?,roundIndex: freezed == roundIndex ? _self.roundIndex : roundIndex // ignore: cast_nullable_to_non_nullable
as int?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int?,approvedUids: freezed == approvedUids ? _self.approvedUids : approvedUids // ignore: cast_nullable_to_non_nullable
as List<String>?,requiredUids: freezed == requiredUids ? _self.requiredUids : requiredUids // ignore: cast_nullable_to_non_nullable
as List<String>?,votes: freezed == votes ? _self.votes : votes // ignore: cast_nullable_to_non_nullable
as Map<String, bool>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SkipProposalData].
extension SkipProposalDataPatterns on SkipProposalData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkipProposalData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkipProposalData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkipProposalData value)  $default,){
final _that = this;
switch (_that) {
case _SkipProposalData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkipProposalData value)?  $default,){
final _that = this;
switch (_that) {
case _SkipProposalData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'proposalId')  String? proposalId, @JsonKey(name: 'action')  String? action, @JsonKey(name: 'initiatorUid')  String? initiatorUid, @JsonKey(name: 'initiatorName')  String? initiatorName, @JsonKey(name: 'roundIndex')  int? roundIndex, @JsonKey(name: 'expiresAt')  int? expiresAt, @JsonKey(name: 'approvedUids')  List<String>? approvedUids, @JsonKey(name: 'requiredUids')  List<String>? requiredUids, @JsonKey(name: 'votes')  Map<String, bool>? votes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkipProposalData() when $default != null:
return $default(_that.id,_that.proposalId,_that.action,_that.initiatorUid,_that.initiatorName,_that.roundIndex,_that.expiresAt,_that.approvedUids,_that.requiredUids,_that.votes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'proposalId')  String? proposalId, @JsonKey(name: 'action')  String? action, @JsonKey(name: 'initiatorUid')  String? initiatorUid, @JsonKey(name: 'initiatorName')  String? initiatorName, @JsonKey(name: 'roundIndex')  int? roundIndex, @JsonKey(name: 'expiresAt')  int? expiresAt, @JsonKey(name: 'approvedUids')  List<String>? approvedUids, @JsonKey(name: 'requiredUids')  List<String>? requiredUids, @JsonKey(name: 'votes')  Map<String, bool>? votes)  $default,) {final _that = this;
switch (_that) {
case _SkipProposalData():
return $default(_that.id,_that.proposalId,_that.action,_that.initiatorUid,_that.initiatorName,_that.roundIndex,_that.expiresAt,_that.approvedUids,_that.requiredUids,_that.votes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'proposalId')  String? proposalId, @JsonKey(name: 'action')  String? action, @JsonKey(name: 'initiatorUid')  String? initiatorUid, @JsonKey(name: 'initiatorName')  String? initiatorName, @JsonKey(name: 'roundIndex')  int? roundIndex, @JsonKey(name: 'expiresAt')  int? expiresAt, @JsonKey(name: 'approvedUids')  List<String>? approvedUids, @JsonKey(name: 'requiredUids')  List<String>? requiredUids, @JsonKey(name: 'votes')  Map<String, bool>? votes)?  $default,) {final _that = this;
switch (_that) {
case _SkipProposalData() when $default != null:
return $default(_that.id,_that.proposalId,_that.action,_that.initiatorUid,_that.initiatorName,_that.roundIndex,_that.expiresAt,_that.approvedUids,_that.requiredUids,_that.votes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkipProposalData extends SkipProposalData {
  const _SkipProposalData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'proposalId') this.proposalId, @JsonKey(name: 'action') this.action, @JsonKey(name: 'initiatorUid') this.initiatorUid, @JsonKey(name: 'initiatorName') this.initiatorName, @JsonKey(name: 'roundIndex') this.roundIndex, @JsonKey(name: 'expiresAt') this.expiresAt, @JsonKey(name: 'approvedUids')  List<String>? approvedUids, @JsonKey(name: 'requiredUids')  List<String>? requiredUids, @JsonKey(name: 'votes')  Map<String, bool>? votes}): _approvedUids = approvedUids,_requiredUids = requiredUids,_votes = votes,super._();
  factory _SkipProposalData.fromJson(Map<String, dynamic> json) => _$SkipProposalDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'proposalId') final  String? proposalId;
@override@JsonKey(name: 'action') final  String? action;
@override@JsonKey(name: 'initiatorUid') final  String? initiatorUid;
@override@JsonKey(name: 'initiatorName') final  String? initiatorName;
@override@JsonKey(name: 'roundIndex') final  int? roundIndex;
@override@JsonKey(name: 'expiresAt') final  int? expiresAt;
 final  List<String>? _approvedUids;
@override@JsonKey(name: 'approvedUids') List<String>? get approvedUids {
  final value = _approvedUids;
  if (value == null) return null;
  if (_approvedUids is EqualUnmodifiableListView) return _approvedUids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _requiredUids;
@override@JsonKey(name: 'requiredUids') List<String>? get requiredUids {
  final value = _requiredUids;
  if (value == null) return null;
  if (_requiredUids is EqualUnmodifiableListView) return _requiredUids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  Map<String, bool>? _votes;
@override@JsonKey(name: 'votes') Map<String, bool>? get votes {
  final value = _votes;
  if (value == null) return null;
  if (_votes is EqualUnmodifiableMapView) return _votes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SkipProposalData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkipProposalDataCopyWith<_SkipProposalData> get copyWith => __$SkipProposalDataCopyWithImpl<_SkipProposalData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkipProposalDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkipProposalData&&(identical(other.id, id) || other.id == id)&&(identical(other.proposalId, proposalId) || other.proposalId == proposalId)&&(identical(other.action, action) || other.action == action)&&(identical(other.initiatorUid, initiatorUid) || other.initiatorUid == initiatorUid)&&(identical(other.initiatorName, initiatorName) || other.initiatorName == initiatorName)&&(identical(other.roundIndex, roundIndex) || other.roundIndex == roundIndex)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.approvedUids, _approvedUids)&&const DeepCollectionEquality().equals(other.requiredUids, _requiredUids)&&const DeepCollectionEquality().equals(other.votes, _votes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,proposalId,action,initiatorUid,initiatorName,roundIndex,expiresAt,const DeepCollectionEquality().hash(_approvedUids),const DeepCollectionEquality().hash(_requiredUids),const DeepCollectionEquality().hash(_votes));
}

@override
String toString() {
    return 'SkipProposalData(id: $id, proposalId: $proposalId, action: $action, initiatorUid: $initiatorUid, initiatorName: $initiatorName, roundIndex: $roundIndex, expiresAt: $expiresAt, approvedUids: $approvedUids, requiredUids: $requiredUids, votes: $votes)';
}


}

/// @nodoc
abstract mixin class _$SkipProposalDataCopyWith<$Res> implements $SkipProposalDataCopyWith<$Res> {
  factory _$SkipProposalDataCopyWith(_SkipProposalData value, $Res Function(_SkipProposalData) _then) = __$SkipProposalDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'proposalId') String? proposalId,@JsonKey(name: 'action') String? action,@JsonKey(name: 'initiatorUid') String? initiatorUid,@JsonKey(name: 'initiatorName') String? initiatorName,@JsonKey(name: 'roundIndex') int? roundIndex,@JsonKey(name: 'expiresAt') int? expiresAt,@JsonKey(name: 'approvedUids') List<String>? approvedUids,@JsonKey(name: 'requiredUids') List<String>? requiredUids,@JsonKey(name: 'votes') Map<String, bool>? votes
});




}
/// @nodoc
class __$SkipProposalDataCopyWithImpl<$Res>
    implements _$SkipProposalDataCopyWith<$Res> {
  __$SkipProposalDataCopyWithImpl(this._self, this._then);

  final _SkipProposalData _self;
  final $Res Function(_SkipProposalData) _then;

/// Create a copy of SkipProposalData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? proposalId = freezed,Object? action = freezed,Object? initiatorUid = freezed,Object? initiatorName = freezed,Object? roundIndex = freezed,Object? expiresAt = freezed,Object? approvedUids = freezed,Object? requiredUids = freezed,Object? votes = freezed,}) {
  return _then(_SkipProposalData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,proposalId: freezed == proposalId ? _self.proposalId : proposalId // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,initiatorUid: freezed == initiatorUid ? _self.initiatorUid : initiatorUid // ignore: cast_nullable_to_non_nullable
as String?,initiatorName: freezed == initiatorName ? _self.initiatorName : initiatorName // ignore: cast_nullable_to_non_nullable
as String?,roundIndex: freezed == roundIndex ? _self.roundIndex : roundIndex // ignore: cast_nullable_to_non_nullable
as int?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int?,approvedUids: freezed == approvedUids ? _self._approvedUids : approvedUids // ignore: cast_nullable_to_non_nullable
as List<String>?,requiredUids: freezed == requiredUids ? _self._requiredUids : requiredUids // ignore: cast_nullable_to_non_nullable
as List<String>?,votes: freezed == votes ? _self._votes : votes // ignore: cast_nullable_to_non_nullable
as Map<String, bool>?,
  ));
}


}

// dart format on
