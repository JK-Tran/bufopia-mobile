part of 'contribution_bloc.dart';

@freezed
abstract class ContributionState with _$ContributionState {
  const factory ContributionState({
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool isLookingUp,
    @Default([]) List<Contribution> contributions,
    @Default('') String uid,
    @Default('Người Chơi Bufopia') String displayName,
    String? token,
    DictionaryDetail? lookedUpDetail,
    String? errorMessage,
    String? successMessage,
  }) = _ContributionState;
}
