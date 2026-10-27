// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skip_proposal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SkipProposal {

 String get proposalId; String get action; String get initiatorUid; String get initiatorName; int get roundIndex; int get expiresAt; List<String> get approvedUids; List<String> get requiredUids; Map<String, bool> get votes;
/// Create a copy of SkipProposal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkipProposalCopyWith<SkipProposal> get copyWith => _$SkipProposalCopyWithImpl<SkipProposal>(this as SkipProposal, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SkipProposal;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkipProposal&&(identical(other.proposalId, _this.proposalId) || other.proposalId == _this.proposalId)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.initiatorUid, _this.initiatorUid) || other.initiatorUid == _this.initiatorUid)&&(identical(other.initiatorName, _this.initiatorName) || other.initiatorName == _this.initiatorName)&&(identical(other.roundIndex, _this.roundIndex) || other.roundIndex == _this.roundIndex)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&const DeepCollectionEquality().equals(other.approvedUids, _this.approvedUids)&&const DeepCollectionEquality().equals(other.requiredUids, _this.requiredUids)&&const DeepCollectionEquality().equals(other.votes, _this.votes));
}


@override
int get hashCode {
  final _this = this as SkipProposal;
  return Object.hash(runtimeType,_this.proposalId,_this.action,_this.initiatorUid,_this.initiatorName,_this.roundIndex,_this.expiresAt,const DeepCollectionEquality().hash(_this.approvedUids),const DeepCollectionEquality().hash(_this.requiredUids),const DeepCollectionEquality().hash(_this.votes));
}

@override
String toString() {
  final _this = this as SkipProposal;
  return 'SkipProposal(proposalId: ${_this.proposalId}, action: ${_this.action}, initiatorUid: ${_this.initiatorUid}, initiatorName: ${_this.initiatorName}, roundIndex: ${_this.roundIndex}, expiresAt: ${_this.expiresAt}, approvedUids: ${_this.approvedUids}, requiredUids: ${_this.requiredUids}, votes: ${_this.votes})';
}


}

/// @nodoc
abstract mixin class $SkipProposalCopyWith<$Res>  {
  factory $SkipProposalCopyWith(SkipProposal value, $Res Function(SkipProposal) _then) = _$SkipProposalCopyWithImpl;
@useResult
$Res call({
 String proposalId, String action, String initiatorUid, String initiatorName, int roundIndex, int expiresAt, List<String> approvedUids, List<String> requiredUids, Map<String, bool> votes
});




}
/// @nodoc
class _$SkipProposalCopyWithImpl<$Res>
    implements $SkipProposalCopyWith<$Res> {
  _$SkipProposalCopyWithImpl(this._self, this._then);

  final SkipProposal _self;
  final $Res Function(SkipProposal) _then;

/// Create a copy of SkipProposal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? proposalId = null,Object? action = null,Object? initiatorUid = null,Object? initiatorName = null,Object? roundIndex = null,Object? expiresAt = null,Object? approvedUids = null,Object? requiredUids = null,Object? votes = null,}) {
  return _then(SkipProposal(
proposalId: null == proposalId ? _self.proposalId : proposalId // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,initiatorUid: null == initiatorUid ? _self.initiatorUid : initiatorUid // ignore: cast_nullable_to_non_nullable
as String,initiatorName: null == initiatorName ? _self.initiatorName : initiatorName // ignore: cast_nullable_to_non_nullable
as String,roundIndex: null == roundIndex ? _self.roundIndex : roundIndex // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int,approvedUids: null == approvedUids ? _self.approvedUids : approvedUids // ignore: cast_nullable_to_non_nullable
as List<String>,requiredUids: null == requiredUids ? _self.requiredUids : requiredUids // ignore: cast_nullable_to_non_nullable
as List<String>,votes: null == votes ? _self.votes : votes // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}

}


/// Adds pattern-matching-related methods to [SkipProposal].
extension SkipProposalPatterns on SkipProposal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkipProposal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkipProposal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkipProposal value)  $default,){
final _that = this;
switch (_that) {
case _SkipProposal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkipProposal value)?  $default,){
final _that = this;
switch (_that) {
case _SkipProposal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String proposalId,  String action,  String initiatorUid,  String initiatorName,  int roundIndex,  int expiresAt,  List<String> approvedUids,  List<String> requiredUids,  Map<String, bool> votes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkipProposal() when $default != null:
return $default(_that.proposalId,_that.action,_that.initiatorUid,_that.initiatorName,_that.roundIndex,_that.expiresAt,_that.approvedUids,_that.requiredUids,_that.votes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String proposalId,  String action,  String initiatorUid,  String initiatorName,  int roundIndex,  int expiresAt,  List<String> approvedUids,  List<String> requiredUids,  Map<String, bool> votes)  $default,) {final _that = this;
switch (_that) {
case _SkipProposal():
return $default(_that.proposalId,_that.action,_that.initiatorUid,_that.initiatorName,_that.roundIndex,_that.expiresAt,_that.approvedUids,_that.requiredUids,_that.votes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String proposalId,  String action,  String initiatorUid,  String initiatorName,  int roundIndex,  int expiresAt,  List<String> approvedUids,  List<String> requiredUids,  Map<String, bool> votes)?  $default,) {final _that = this;
switch (_that) {
case _SkipProposal() when $default != null:
return $default(_that.proposalId,_that.action,_that.initiatorUid,_that.initiatorName,_that.roundIndex,_that.expiresAt,_that.approvedUids,_that.requiredUids,_that.votes);case _:
  return null;

}
}

}

/// @nodoc


class _SkipProposal implements SkipProposal {
  const _SkipProposal({this.proposalId = '', this.action = '', this.initiatorUid = '', this.initiatorName = '', this.roundIndex = 0, this.expiresAt = 0,  List<String> approvedUids = const [],  List<String> requiredUids = const [],  Map<String, bool> votes = const {}}): _approvedUids = approvedUids,_requiredUids = requiredUids,_votes = votes;
  

@override@JsonKey() final  String proposalId;
@override@JsonKey() final  String action;
@override@JsonKey() final  String initiatorUid;
@override@JsonKey() final  String initiatorName;
@override@JsonKey() final  int roundIndex;
@override@JsonKey() final  int expiresAt;
 final  List<String> _approvedUids;
@override@JsonKey() List<String> get approvedUids {
  if (_approvedUids is EqualUnmodifiableListView) return _approvedUids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_approvedUids);
}

 final  List<String> _requiredUids;
@override@JsonKey() List<String> get requiredUids {
  if (_requiredUids is EqualUnmodifiableListView) return _requiredUids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_requiredUids);
}

 final  Map<String, bool> _votes;
@override@JsonKey() Map<String, bool> get votes {
  if (_votes is EqualUnmodifiableMapView) return _votes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_votes);
}


/// Create a copy of SkipProposal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkipProposalCopyWith<_SkipProposal> get copyWith => __$SkipProposalCopyWithImpl<_SkipProposal>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkipProposal&&(identical(other.proposalId, proposalId) || other.proposalId == proposalId)&&(identical(other.action, action) || other.action == action)&&(identical(other.initiatorUid, initiatorUid) || other.initiatorUid == initiatorUid)&&(identical(other.initiatorName, initiatorName) || other.initiatorName == initiatorName)&&(identical(other.roundIndex, roundIndex) || other.roundIndex == roundIndex)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.approvedUids, _approvedUids)&&const DeepCollectionEquality().equals(other.requiredUids, _requiredUids)&&const DeepCollectionEquality().equals(other.votes, _votes));
}


@override
int get hashCode {
    return Object.hash(runtimeType,proposalId,action,initiatorUid,initiatorName,roundIndex,expiresAt,const DeepCollectionEquality().hash(_approvedUids),const DeepCollectionEquality().hash(_requiredUids),const DeepCollectionEquality().hash(_votes));
}

@override
String toString() {
    return 'SkipProposal(proposalId: $proposalId, action: $action, initiatorUid: $initiatorUid, initiatorName: $initiatorName, roundIndex: $roundIndex, expiresAt: $expiresAt, approvedUids: $approvedUids, requiredUids: $requiredUids, votes: $votes)';
}


}

/// @nodoc
abstract mixin class _$SkipProposalCopyWith<$Res> implements $SkipProposalCopyWith<$Res> {
  factory _$SkipProposalCopyWith(_SkipProposal value, $Res Function(_SkipProposal) _then) = __$SkipProposalCopyWithImpl;
@override @useResult
$Res call({
 String proposalId, String action, String initiatorUid, String initiatorName, int roundIndex, int expiresAt, List<String> approvedUids, List<String> requiredUids, Map<String, bool> votes
});




}
/// @nodoc
class __$SkipProposalCopyWithImpl<$Res>
    implements _$SkipProposalCopyWith<$Res> {
  __$SkipProposalCopyWithImpl(this._self, this._then);

  final _SkipProposal _self;
  final $Res Function(_SkipProposal) _then;

/// Create a copy of SkipProposal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? proposalId = null,Object? action = null,Object? initiatorUid = null,Object? initiatorName = null,Object? roundIndex = null,Object? expiresAt = null,Object? approvedUids = null,Object? requiredUids = null,Object? votes = null,}) {
  return _then(_SkipProposal(
proposalId: null == proposalId ? _self.proposalId : proposalId // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,initiatorUid: null == initiatorUid ? _self.initiatorUid : initiatorUid // ignore: cast_nullable_to_non_nullable
as String,initiatorName: null == initiatorName ? _self.initiatorName : initiatorName // ignore: cast_nullable_to_non_nullable
as String,roundIndex: null == roundIndex ? _self.roundIndex : roundIndex // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as int,approvedUids: null == approvedUids ? _self._approvedUids : approvedUids // ignore: cast_nullable_to_non_nullable
as List<String>,requiredUids: null == requiredUids ? _self._requiredUids : requiredUids // ignore: cast_nullable_to_non_nullable
as List<String>,votes: null == votes ? _self._votes : votes // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,
  ));
}


}

// dart format on
