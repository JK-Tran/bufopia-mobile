import 'dart:async';
import 'dart:math';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/challenge/domain/entities/room_info.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state.dart';
import 'package:bufopia/features/challenge/domain/usecases/delete_social_dismiss_use_case.dart';
import 'package:bufopia/features/challenge/domain/usecases/get_room_info_use_case.dart';
import 'package:bufopia/features/challenge/domain/usecases/get_social_state_use_case.dart';
import 'package:bufopia/features/challenge/domain/usecases/submit_social_accept_use_case.dart';
import 'package:bufopia/features/challenge/domain/usecases/submit_social_invite_use_case.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'challenge_room_bloc.freezed.dart';
part 'challenge_room_event.dart';
part 'challenge_room_state.dart';

@injectable
class ChallengeRoomBloc
    extends BaseBloc<ChallengeRoomEvent, ChallengeRoomState> {
  ChallengeRoomBloc(
    this._getSocialStateUseCase,
    this._submitSocialInviteUseCase,
    this._submitSocialAcceptUseCase,
    this._deleteSocialDismissUseCase,
    this._getRoomInfoUseCase,
  ) : super(const ChallengeRoomState()) {
    on<_Init>(_onInit);
    on<_SwitchTab>(_onSwitchTab);
    on<_CreateRoom>(_onCreateRoom);
    on<_CancelRoom>(_onCancelRoom);
    on<_JoinRoom>(_onJoinRoom);
    on<_InviteRival>(_onInviteRival);
    on<_AcceptInvitation>(_onAcceptInvitation);
    on<_DismissInvitation>(_onDismissInvitation);
  }

  final GetSocialStateUseCase _getSocialStateUseCase;
  final SubmitSocialInviteUseCase _submitSocialInviteUseCase;
  final SubmitSocialAcceptUseCase _submitSocialAcceptUseCase;
  final DeleteSocialDismissUseCase _deleteSocialDismissUseCase;
  final GetRoomInfoUseCase _getRoomInfoUseCase;

  FutureOr<void> _onInit(
    _Init event,
    Emitter<ChallengeRoomState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () =>
          safeEmit(state.copyWith(isLoading: true, currentUid: event.uid)),
      action: () async {
        final output = await _getSocialStateUseCase.execute(
          GetSocialStateInput(uid: event.uid),
        );
        safeEmit(state.copyWith(socialState: output.socialState));
      },
      doOnSuccessOrError: () => safeEmit(state.copyWith(isLoading: false)),
    );
  }

  void _onSwitchTab(
    _SwitchTab event,
    Emitter<ChallengeRoomState> emit,
  ) {
    final newTab = event.tabIndex == 0
        ? ChallengeRoomTab.join
        : ChallengeRoomTab.create;
    safeEmit(
      state.copyWith(
        currentTab: newTab,
        errorMessage: null,
        successMessage: null,
      ),
    );
  }

  void _onCreateRoom(
    _CreateRoom event,
    Emitter<ChallengeRoomState> emit,
  ) {
    final randomCode = (100000 + Random().nextInt(900000)).toString();
    safeEmit(
      state.copyWith(
        createdRoomCode: randomCode,
        errorMessage: null,
        successMessage: null,
      ),
    );
  }

  void _onCancelRoom(
    _CancelRoom event,
    Emitter<ChallengeRoomState> emit,
  ) {
    safeEmit(
      state.copyWith(
        createdRoomCode: null,
        errorMessage: null,
      ),
    );
  }

  FutureOr<void> _onJoinRoom(
    _JoinRoom event,
    Emitter<ChallengeRoomState> emit,
  ) {
    if (state.isActionLoading) return null;
    final code = event.roomCode.trim();
    if (code.length < 6) {
      safeEmit(
        state.copyWith(
          errorMessage: S.current.enterValid6DigitCode,
        ),
      );
      return null;
    }

    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(isActionLoading: true, errorMessage: null),
      ),
      action: () async {
        final output = await _getRoomInfoUseCase.execute(
          GetRoomInfoInput(roomCode: code),
        );
        if (output.roomInfo != null) {
          safeEmit(state.copyWith(joinedRoom: output.roomInfo));
        }
        event.onJoined(code);
      },
      doOnError: (e) {
        event.onJoined(code);
      },
      doOnSuccessOrError: () => safeEmit(
        state.copyWith(isActionLoading: false),
      ),
    );
  }

  FutureOr<void> _onInviteRival(
    _InviteRival event,
    Emitter<ChallengeRoomState> emit,
  ) {
    if (state.isActionLoading) return null;
    final uid = state.currentUid;
    final roomCode = state.createdRoomCode;
    if (uid == null || roomCode == null) return null;

    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isActionLoading: true)),
      action: () async {
        final output = await _submitSocialInviteUseCase.execute(
          SubmitSocialInviteInput(
            uid: uid,
            targetUid: event.targetUid,
            roomCode: roomCode,
          ),
        );
        safeEmit(
          state.copyWith(
            successMessage: output.success
                ? S.current.inviteSentSuccess
                : S.current.inviteCooldownWait,
          ),
        );
      },
      doOnSuccessOrError: () => safeEmit(
        state.copyWith(isActionLoading: false),
      ),
    );
  }

  FutureOr<void> _onAcceptInvitation(
    _AcceptInvitation event,
    Emitter<ChallengeRoomState> emit,
  ) {
    if (state.isActionLoading) return null;
    final uid = state.currentUid;
    if (uid == null) return null;

    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isActionLoading: true)),
      action: () async {
        final output = await _submitSocialAcceptUseCase.execute(
          SubmitSocialAcceptInput(
            uid: uid,
            invitationId: event.invitationId,
          ),
        );
        if (output.roomCode != null && output.roomCode!.isNotEmpty) {
          event.onAccepted(output.roomCode!);
        }
      },
      doOnSuccessOrError: () => safeEmit(
        state.copyWith(isActionLoading: false),
      ),
    );
  }

  FutureOr<void> _onDismissInvitation(
    _DismissInvitation event,
    Emitter<ChallengeRoomState> emit,
  ) {
    if (state.isActionLoading) return null;
    final uid = state.currentUid;
    if (uid == null) return null;

    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isActionLoading: true)),
      action: () async {
        await _deleteSocialDismissUseCase.execute(
          DeleteSocialDismissInput(
            uid: uid,
            invitationId: event.invitationId,
          ),
        );
        final currentSocial = state.socialState;
        if (currentSocial != null) {
          final updatedInvitations = currentSocial.invitations
              .where((inv) => inv.id != event.invitationId)
              .toList();
          safeEmit(
            state.copyWith(
              socialState: SocialState(
                recent: currentSocial.recent,
                invitations: updatedInvitations,
              ),
            ),
          );
        }
      },
      doOnSuccessOrError: () => safeEmit(
        state.copyWith(isActionLoading: false),
      ),
    );
  }
}
