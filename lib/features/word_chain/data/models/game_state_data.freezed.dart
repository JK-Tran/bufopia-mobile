// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameStateData {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'turn') int? get turn;@JsonKey(name: 'turnId') int? get turnId;@JsonKey(name: 'turnStartedAt') int? get turnStartedAt;@JsonKey(name: 'deadline') int? get deadline;@JsonKey(name: 'relaxed') bool? get relaxed;@JsonKey(name: 'lives') List<int?>? get lives;@JsonKey(name: 'mistakes') List<int>? get mistakes;@JsonKey(name: 'awayCounts') List<int>? get awayCounts;@JsonKey(name: 'requiredLetter') String? get requiredLetter;@JsonKey(name: 'usedWords') List<String>? get usedWords;@JsonKey(name: 'messages') List<TurnMessageData>? get messages;@JsonKey(name: 'winner') int? get winner;@JsonKey(name: 'finishReason') String? get finishReason;@JsonKey(name: 'revision') int? get revision;
/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateDataCopyWith<GameStateData> get copyWith => _$GameStateDataCopyWithImpl<GameStateData>(this as GameStateData, _$identity);

  /// Serializes this GameStateData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GameStateData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStateData&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.turn, _this.turn) || other.turn == _this.turn)&&(identical(other.turnId, _this.turnId) || other.turnId == _this.turnId)&&(identical(other.turnStartedAt, _this.turnStartedAt) || other.turnStartedAt == _this.turnStartedAt)&&(identical(other.deadline, _this.deadline) || other.deadline == _this.deadline)&&(identical(other.relaxed, _this.relaxed) || other.relaxed == _this.relaxed)&&const DeepCollectionEquality().equals(other.lives, _this.lives)&&const DeepCollectionEquality().equals(other.mistakes, _this.mistakes)&&const DeepCollectionEquality().equals(other.awayCounts, _this.awayCounts)&&(identical(other.requiredLetter, _this.requiredLetter) || other.requiredLetter == _this.requiredLetter)&&const DeepCollectionEquality().equals(other.usedWords, _this.usedWords)&&const DeepCollectionEquality().equals(other.messages, _this.messages)&&(identical(other.winner, _this.winner) || other.winner == _this.winner)&&(identical(other.finishReason, _this.finishReason) || other.finishReason == _this.finishReason)&&(identical(other.revision, _this.revision) || other.revision == _this.revision));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GameStateData;
  return Object.hash(runtimeType,_this.status,_this.turn,_this.turnId,_this.turnStartedAt,_this.deadline,_this.relaxed,const DeepCollectionEquality().hash(_this.lives),const DeepCollectionEquality().hash(_this.mistakes),const DeepCollectionEquality().hash(_this.awayCounts),_this.requiredLetter,const DeepCollectionEquality().hash(_this.usedWords),const DeepCollectionEquality().hash(_this.messages),_this.winner,_this.finishReason,_this.revision);
}

@override
String toString() {
  final _this = this as GameStateData;
  return 'GameStateData(status: ${_this.status}, turn: ${_this.turn}, turnId: ${_this.turnId}, turnStartedAt: ${_this.turnStartedAt}, deadline: ${_this.deadline}, relaxed: ${_this.relaxed}, lives: ${_this.lives}, mistakes: ${_this.mistakes}, awayCounts: ${_this.awayCounts}, requiredLetter: ${_this.requiredLetter}, usedWords: ${_this.usedWords}, messages: ${_this.messages}, winner: ${_this.winner}, finishReason: ${_this.finishReason}, revision: ${_this.revision})';
}


}

/// @nodoc
abstract mixin class $GameStateDataCopyWith<$Res>  {
  factory $GameStateDataCopyWith(GameStateData value, $Res Function(GameStateData) _then) = _$GameStateDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'turn') int? turn,@JsonKey(name: 'turnId') int? turnId,@JsonKey(name: 'turnStartedAt') int? turnStartedAt,@JsonKey(name: 'deadline') int? deadline,@JsonKey(name: 'relaxed') bool? relaxed,@JsonKey(name: 'lives') List<int?>? lives,@JsonKey(name: 'mistakes') List<int>? mistakes,@JsonKey(name: 'awayCounts') List<int>? awayCounts,@JsonKey(name: 'requiredLetter') String? requiredLetter,@JsonKey(name: 'usedWords') List<String>? usedWords,@JsonKey(name: 'messages') List<TurnMessageData>? messages,@JsonKey(name: 'winner') int? winner,@JsonKey(name: 'finishReason') String? finishReason,@JsonKey(name: 'revision') int? revision
});




}
/// @nodoc
class _$GameStateDataCopyWithImpl<$Res>
    implements $GameStateDataCopyWith<$Res> {
  _$GameStateDataCopyWithImpl(this._self, this._then);

  final GameStateData _self;
  final $Res Function(GameStateData) _then;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? turn = freezed,Object? turnId = freezed,Object? turnStartedAt = freezed,Object? deadline = freezed,Object? relaxed = freezed,Object? lives = freezed,Object? mistakes = freezed,Object? awayCounts = freezed,Object? requiredLetter = freezed,Object? usedWords = freezed,Object? messages = freezed,Object? winner = freezed,Object? finishReason = freezed,Object? revision = freezed,}) {
  return _then(GameStateData(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,turn: freezed == turn ? _self.turn : turn // ignore: cast_nullable_to_non_nullable
as int?,turnId: freezed == turnId ? _self.turnId : turnId // ignore: cast_nullable_to_non_nullable
as int?,turnStartedAt: freezed == turnStartedAt ? _self.turnStartedAt : turnStartedAt // ignore: cast_nullable_to_non_nullable
as int?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as int?,relaxed: freezed == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool?,lives: freezed == lives ? _self.lives : lives // ignore: cast_nullable_to_non_nullable
as List<int?>?,mistakes: freezed == mistakes ? _self.mistakes : mistakes // ignore: cast_nullable_to_non_nullable
as List<int>?,awayCounts: freezed == awayCounts ? _self.awayCounts : awayCounts // ignore: cast_nullable_to_non_nullable
as List<int>?,requiredLetter: freezed == requiredLetter ? _self.requiredLetter : requiredLetter // ignore: cast_nullable_to_non_nullable
as String?,usedWords: freezed == usedWords ? _self.usedWords : usedWords // ignore: cast_nullable_to_non_nullable
as List<String>?,messages: freezed == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<TurnMessageData>?,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as int?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,revision: freezed == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameStateData].
extension GameStateDataPatterns on GameStateData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameStateData value)  $default,){
final _that = this;
switch (_that) {
case _GameStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameStateData value)?  $default,){
final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'turn')  int? turn, @JsonKey(name: 'turnId')  int? turnId, @JsonKey(name: 'turnStartedAt')  int? turnStartedAt, @JsonKey(name: 'deadline')  int? deadline, @JsonKey(name: 'relaxed')  bool? relaxed, @JsonKey(name: 'lives')  List<int?>? lives, @JsonKey(name: 'mistakes')  List<int>? mistakes, @JsonKey(name: 'awayCounts')  List<int>? awayCounts, @JsonKey(name: 'requiredLetter')  String? requiredLetter, @JsonKey(name: 'usedWords')  List<String>? usedWords, @JsonKey(name: 'messages')  List<TurnMessageData>? messages, @JsonKey(name: 'winner')  int? winner, @JsonKey(name: 'finishReason')  String? finishReason, @JsonKey(name: 'revision')  int? revision)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
return $default(_that.status,_that.turn,_that.turnId,_that.turnStartedAt,_that.deadline,_that.relaxed,_that.lives,_that.mistakes,_that.awayCounts,_that.requiredLetter,_that.usedWords,_that.messages,_that.winner,_that.finishReason,_that.revision);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'turn')  int? turn, @JsonKey(name: 'turnId')  int? turnId, @JsonKey(name: 'turnStartedAt')  int? turnStartedAt, @JsonKey(name: 'deadline')  int? deadline, @JsonKey(name: 'relaxed')  bool? relaxed, @JsonKey(name: 'lives')  List<int?>? lives, @JsonKey(name: 'mistakes')  List<int>? mistakes, @JsonKey(name: 'awayCounts')  List<int>? awayCounts, @JsonKey(name: 'requiredLetter')  String? requiredLetter, @JsonKey(name: 'usedWords')  List<String>? usedWords, @JsonKey(name: 'messages')  List<TurnMessageData>? messages, @JsonKey(name: 'winner')  int? winner, @JsonKey(name: 'finishReason')  String? finishReason, @JsonKey(name: 'revision')  int? revision)  $default,) {final _that = this;
switch (_that) {
case _GameStateData():
return $default(_that.status,_that.turn,_that.turnId,_that.turnStartedAt,_that.deadline,_that.relaxed,_that.lives,_that.mistakes,_that.awayCounts,_that.requiredLetter,_that.usedWords,_that.messages,_that.winner,_that.finishReason,_that.revision);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'turn')  int? turn, @JsonKey(name: 'turnId')  int? turnId, @JsonKey(name: 'turnStartedAt')  int? turnStartedAt, @JsonKey(name: 'deadline')  int? deadline, @JsonKey(name: 'relaxed')  bool? relaxed, @JsonKey(name: 'lives')  List<int?>? lives, @JsonKey(name: 'mistakes')  List<int>? mistakes, @JsonKey(name: 'awayCounts')  List<int>? awayCounts, @JsonKey(name: 'requiredLetter')  String? requiredLetter, @JsonKey(name: 'usedWords')  List<String>? usedWords, @JsonKey(name: 'messages')  List<TurnMessageData>? messages, @JsonKey(name: 'winner')  int? winner, @JsonKey(name: 'finishReason')  String? finishReason, @JsonKey(name: 'revision')  int? revision)?  $default,) {final _that = this;
switch (_that) {
case _GameStateData() when $default != null:
return $default(_that.status,_that.turn,_that.turnId,_that.turnStartedAt,_that.deadline,_that.relaxed,_that.lives,_that.mistakes,_that.awayCounts,_that.requiredLetter,_that.usedWords,_that.messages,_that.winner,_that.finishReason,_that.revision);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameStateData extends GameStateData {
  const _GameStateData({@JsonKey(name: 'status') this.status, @JsonKey(name: 'turn') this.turn, @JsonKey(name: 'turnId') this.turnId, @JsonKey(name: 'turnStartedAt') this.turnStartedAt, @JsonKey(name: 'deadline') this.deadline, @JsonKey(name: 'relaxed') this.relaxed, @JsonKey(name: 'lives')  List<int?>? lives, @JsonKey(name: 'mistakes')  List<int>? mistakes, @JsonKey(name: 'awayCounts')  List<int>? awayCounts, @JsonKey(name: 'requiredLetter') this.requiredLetter, @JsonKey(name: 'usedWords')  List<String>? usedWords, @JsonKey(name: 'messages')  List<TurnMessageData>? messages, @JsonKey(name: 'winner') this.winner, @JsonKey(name: 'finishReason') this.finishReason, @JsonKey(name: 'revision') this.revision}): _lives = lives,_mistakes = mistakes,_awayCounts = awayCounts,_usedWords = usedWords,_messages = messages,super._();
  factory _GameStateData.fromJson(Map<String, dynamic> json) => _$GameStateDataFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'turn') final  int? turn;
@override@JsonKey(name: 'turnId') final  int? turnId;
@override@JsonKey(name: 'turnStartedAt') final  int? turnStartedAt;
@override@JsonKey(name: 'deadline') final  int? deadline;
@override@JsonKey(name: 'relaxed') final  bool? relaxed;
 final  List<int?>? _lives;
@override@JsonKey(name: 'lives') List<int?>? get lives {
  final value = _lives;
  if (value == null) return null;
  if (_lives is EqualUnmodifiableListView) return _lives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _mistakes;
@override@JsonKey(name: 'mistakes') List<int>? get mistakes {
  final value = _mistakes;
  if (value == null) return null;
  if (_mistakes is EqualUnmodifiableListView) return _mistakes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _awayCounts;
@override@JsonKey(name: 'awayCounts') List<int>? get awayCounts {
  final value = _awayCounts;
  if (value == null) return null;
  if (_awayCounts is EqualUnmodifiableListView) return _awayCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'requiredLetter') final  String? requiredLetter;
 final  List<String>? _usedWords;
@override@JsonKey(name: 'usedWords') List<String>? get usedWords {
  final value = _usedWords;
  if (value == null) return null;
  if (_usedWords is EqualUnmodifiableListView) return _usedWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<TurnMessageData>? _messages;
@override@JsonKey(name: 'messages') List<TurnMessageData>? get messages {
  final value = _messages;
  if (value == null) return null;
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'winner') final  int? winner;
@override@JsonKey(name: 'finishReason') final  String? finishReason;
@override@JsonKey(name: 'revision') final  int? revision;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateDataCopyWith<_GameStateData> get copyWith => __$GameStateDataCopyWithImpl<_GameStateData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameStateDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameStateData&&(identical(other.status, status) || other.status == status)&&(identical(other.turn, turn) || other.turn == turn)&&(identical(other.turnId, turnId) || other.turnId == turnId)&&(identical(other.turnStartedAt, turnStartedAt) || other.turnStartedAt == turnStartedAt)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.relaxed, relaxed) || other.relaxed == relaxed)&&const DeepCollectionEquality().equals(other.lives, _lives)&&const DeepCollectionEquality().equals(other.mistakes, _mistakes)&&const DeepCollectionEquality().equals(other.awayCounts, _awayCounts)&&(identical(other.requiredLetter, requiredLetter) || other.requiredLetter == requiredLetter)&&const DeepCollectionEquality().equals(other.usedWords, _usedWords)&&const DeepCollectionEquality().equals(other.messages, _messages)&&(identical(other.winner, winner) || other.winner == winner)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.revision, revision) || other.revision == revision));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,turn,turnId,turnStartedAt,deadline,relaxed,const DeepCollectionEquality().hash(_lives),const DeepCollectionEquality().hash(_mistakes),const DeepCollectionEquality().hash(_awayCounts),requiredLetter,const DeepCollectionEquality().hash(_usedWords),const DeepCollectionEquality().hash(_messages),winner,finishReason,revision);
}

@override
String toString() {
    return 'GameStateData(status: $status, turn: $turn, turnId: $turnId, turnStartedAt: $turnStartedAt, deadline: $deadline, relaxed: $relaxed, lives: $lives, mistakes: $mistakes, awayCounts: $awayCounts, requiredLetter: $requiredLetter, usedWords: $usedWords, messages: $messages, winner: $winner, finishReason: $finishReason, revision: $revision)';
}


}

/// @nodoc
abstract mixin class _$GameStateDataCopyWith<$Res> implements $GameStateDataCopyWith<$Res> {
  factory _$GameStateDataCopyWith(_GameStateData value, $Res Function(_GameStateData) _then) = __$GameStateDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'turn') int? turn,@JsonKey(name: 'turnId') int? turnId,@JsonKey(name: 'turnStartedAt') int? turnStartedAt,@JsonKey(name: 'deadline') int? deadline,@JsonKey(name: 'relaxed') bool? relaxed,@JsonKey(name: 'lives') List<int?>? lives,@JsonKey(name: 'mistakes') List<int>? mistakes,@JsonKey(name: 'awayCounts') List<int>? awayCounts,@JsonKey(name: 'requiredLetter') String? requiredLetter,@JsonKey(name: 'usedWords') List<String>? usedWords,@JsonKey(name: 'messages') List<TurnMessageData>? messages,@JsonKey(name: 'winner') int? winner,@JsonKey(name: 'finishReason') String? finishReason,@JsonKey(name: 'revision') int? revision
});




}
/// @nodoc
class __$GameStateDataCopyWithImpl<$Res>
    implements _$GameStateDataCopyWith<$Res> {
  __$GameStateDataCopyWithImpl(this._self, this._then);

  final _GameStateData _self;
  final $Res Function(_GameStateData) _then;

/// Create a copy of GameStateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? turn = freezed,Object? turnId = freezed,Object? turnStartedAt = freezed,Object? deadline = freezed,Object? relaxed = freezed,Object? lives = freezed,Object? mistakes = freezed,Object? awayCounts = freezed,Object? requiredLetter = freezed,Object? usedWords = freezed,Object? messages = freezed,Object? winner = freezed,Object? finishReason = freezed,Object? revision = freezed,}) {
  return _then(_GameStateData(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,turn: freezed == turn ? _self.turn : turn // ignore: cast_nullable_to_non_nullable
as int?,turnId: freezed == turnId ? _self.turnId : turnId // ignore: cast_nullable_to_non_nullable
as int?,turnStartedAt: freezed == turnStartedAt ? _self.turnStartedAt : turnStartedAt // ignore: cast_nullable_to_non_nullable
as int?,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as int?,relaxed: freezed == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool?,lives: freezed == lives ? _self._lives : lives // ignore: cast_nullable_to_non_nullable
as List<int?>?,mistakes: freezed == mistakes ? _self._mistakes : mistakes // ignore: cast_nullable_to_non_nullable
as List<int>?,awayCounts: freezed == awayCounts ? _self._awayCounts : awayCounts // ignore: cast_nullable_to_non_nullable
as List<int>?,requiredLetter: freezed == requiredLetter ? _self.requiredLetter : requiredLetter // ignore: cast_nullable_to_non_nullable
as String?,usedWords: freezed == usedWords ? _self._usedWords : usedWords // ignore: cast_nullable_to_non_nullable
as List<String>?,messages: freezed == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<TurnMessageData>?,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as int?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,revision: freezed == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
