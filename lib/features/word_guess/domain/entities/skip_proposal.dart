import 'package:freezed_annotation/freezed_annotation.dart';

part 'skip_proposal.freezed.dart';

@freezed
abstract class SkipProposal with _$SkipProposal {
  const factory SkipProposal({
    @Default('') String proposalId,
    @Default('') String action,
    @Default('') String initiatorUid,
    @Default('') String initiatorName,
    @Default(0) int roundIndex,
    @Default(0) int expiresAt,
    @Default([]) List<String> approvedUids,
    @Default([]) List<String> requiredUids,
    @Default({}) Map<String, bool> votes,
  }) = _SkipProposal;
}
