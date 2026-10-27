import 'dart:async';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/domain/entities/dictionary_detail.dart';
import 'package:bufopia/features/practice/domain/usecases/get_contributions_use_case.dart';
import 'package:bufopia/features/practice/domain/usecases/get_dictionary_detail_use_case.dart';
import 'package:bufopia/features/practice/domain/usecases/submit_contribution_use_case.dart';
import 'package:bufopia/features/practice/domain/usecases/update_contribution_use_case.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contribution_bloc.freezed.dart';
part 'contribution_event.dart';
part 'contribution_state.dart';

@injectable
class ContributionBloc extends BaseBloc<ContributionEvent, ContributionState> {
  ContributionBloc(
    this._getContributionsUseCase,
    this._getDictionaryDetailUseCase,
    this._submitContributionUseCase,
    this._updateContributionUseCase,
    this._deviceUidService,
    this._firebaseAuthService,
  ) : super(const ContributionState()) {
    on<_LoadContributions>(_onLoadContributions);
    on<_LookupWord>(_onLookupWord);
    on<_SubmitContribution>(_onSubmitContribution);
    on<_UpdateContribution>(_onUpdateContribution);
  }

  final GetContributionsUseCase _getContributionsUseCase;
  final GetDictionaryDetailUseCase _getDictionaryDetailUseCase;
  final SubmitContributionUseCase _submitContributionUseCase;
  final UpdateContributionUseCase _updateContributionUseCase;
  final DeviceUidService _deviceUidService;
  final FirebaseAuthService _firebaseAuthService;

  FutureOr<void> _onLoadContributions(
    _LoadContributions event,
    Emitter<ContributionState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      handleError: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isLoading: true)),
      action: () async {
        final resolvedUid = (event.uid != null && event.uid!.isNotEmpty)
            ? event.uid!
            : (_firebaseAuthService.currentUser?.uid ??
                  await _deviceUidService.getDeviceUid());
        final resolvedToken =
            event.token ?? await _firebaseAuthService.getIdToken();
        final resolvedDisplayName =
            _firebaseAuthService.currentUser?.displayName ??
            'Người Chơi Bufopia';

        final output = await _getContributionsUseCase.execute(
          GetContributionsInput(
            uid: resolvedUid,
            token: resolvedToken,
          ),
        );
        safeEmit(
          state.copyWith(
            contributions: output.contributions,
            uid: resolvedUid,
            displayName: resolvedDisplayName,
            token: resolvedToken,
          ),
        );
      },
      doOnSuccessOrError: () => safeEmit(state.copyWith(isLoading: false)),
    );
  }

  FutureOr<void> _onLookupWord(
    _LookupWord event,
    Emitter<ContributionState> emit,
  ) {
    if (event.word.trim().isEmpty) return null;
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isLookingUp: true)),
      action: () async {
        final output = await _getDictionaryDetailUseCase.execute(
          GetDictionaryDetailInput(word: event.word.trim()),
        );
        safeEmit(state.copyWith(lookedUpDetail: output.detail));
      },
      doOnSuccessOrError: () => safeEmit(state.copyWith(isLookingUp: false)),
    );
  }

  FutureOr<void> _onSubmitContribution(
    _SubmitContribution event,
    Emitter<ContributionState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isSubmitting: true)),
      action: () async {
        final output = await _submitContributionUseCase.execute(
          SubmitContributionInput(
            uid: event.uid,
            contributorName: event.contributorName,
            wordEn: event.wordEn,
            meaningVi: event.meaningVi,
            topicId: event.topicId,
            partOfSpeech: event.partOfSpeech,
            phonetic: event.phonetic,
            exampleEn: event.exampleEn,
            exampleVi: event.exampleVi,
            token: event.token,
          ),
        );
        final updatedList = [output.contribution, ...state.contributions];
        safeEmit(
          state.copyWith(
            contributions: updatedList,
            successMessage: S.current.contributeWordSuccess,
          ),
        );
      },
      doOnSuccessOrError: () => safeEmit(state.copyWith(isSubmitting: false)),
    );
  }

  FutureOr<void> _onUpdateContribution(
    _UpdateContribution event,
    Emitter<ContributionState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isSubmitting: true)),
      action: () async {
        final output = await _updateContributionUseCase.execute(
          UpdateContributionInput(
            id: event.id,
            uid: event.uid,
            contributorName: event.contributorName,
            wordEn: event.wordEn,
            meaningVi: event.meaningVi,
            topicId: event.topicId,
            partOfSpeech: event.partOfSpeech,
            phonetic: event.phonetic,
            exampleEn: event.exampleEn,
            exampleVi: event.exampleVi,
            token: event.token,
          ),
        );
        final updatedList = state.contributions.map((c) {
          if (c.id == event.id) {
            return output.contribution;
          }
          return c;
        }).toList();

        safeEmit(
          state.copyWith(
            contributions: updatedList,
            successMessage: S.current.updateWordSuccess,
          ),
        );
      },
      doOnSuccessOrError: () => safeEmit(state.copyWith(isSubmitting: false)),
    );
  }
}
