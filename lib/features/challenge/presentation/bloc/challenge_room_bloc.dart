import 'dart:async';
import 'dart:math';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/challenge/domain/entities/room_info_entity.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state_entity.dart';
import 'package:bufopia/features/challenge/domain/usecases/delete_social_dismiss_use_case.dart';
import 'package:bufopia/features/challenge/domain/usecases/get_room_info_use_case.dart';
import 'package:bufopia/features/challenge/domain/usecases/get_social_state_use_case.dart';
import 'package:bufopia/features/challenge/domain/usecases/submit_social_accept_use_case.dart';
import 'package:bufopia/features/challenge/domain/usecases/submit_social_invite_use_case.dart';
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
  ) async {
    emit(state.copyWith(isLoading: true, currentUid: event.uid));
    try {
      final output = await _getSocialStateUseCase.execute(
        GetSocialStateInput(uid: event.uid),
      );
      emit(
        state.copyWith(
          isLoading: false,
          socialState: output.socialState,
        ),
      );
    } on Exception catch (_) {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _onSwitchTab(
    _SwitchTab event,
    Emitter<ChallengeRoomState> emit,
  ) {
    final newTab = event.tabIndex == 0
        ? ChallengeRoomTab.join
        : ChallengeRoomTab.create;
    emit(
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
    emit(
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
    emit(
      state.copyWith(
        createdRoomCode: null,
        errorMessage: null,
      ),
    );
  }

  FutureOr<void> _onJoinRoom(
    _JoinRoom event,
    Emitter<ChallengeRoomState> emit,
  ) async {
    if (state.isActionLoading) return;
    final code = event.roomCode.trim();
    if (code.length < 6) {
      emit(
        state.copyWith(
          errorMessage: 'Vui lòng nhập đúng mã phòng gồm 6 chữ số!',
        ),
      );
      return;
    }

    emit(state.copyWith(isActionLoading: true, errorMessage: null));
    try {
      final output = await _getRoomInfoUseCase.execute(
        GetRoomInfoInput(roomCode: code),
      );
      emit(state.copyWith(isActionLoading: false));

      if (output.roomInfo != null) {
        emit(state.copyWith(joinedRoom: output.roomInfo));
        event.onJoined(code);
      } else {
        // Nếu server chưa có phòng trong DB thì chấp nhận vào phòng trực tiếp
        event.onJoined(code);
      }
    } on Exception catch (_) {
      emit(state.copyWith(isActionLoading: false));
      event.onJoined(code);
    }
  }

  FutureOr<void> _onInviteRival(
    _InviteRival event,
    Emitter<ChallengeRoomState> emit,
  ) async {
    if (state.isActionLoading) return;
    final uid = state.currentUid;
    final roomCode = state.createdRoomCode;
    if (uid == null || roomCode == null) return;

    emit(state.copyWith(isActionLoading: true));
    try {
      final output = await _submitSocialInviteUseCase.execute(
        SubmitSocialInviteInput(
          uid: uid,
          targetUid: event.targetUid,
          roomCode: roomCode,
        ),
      );
      emit(
        state.copyWith(
          isActionLoading: false,
          successMessage: output.success
              ? 'Đã gửi lời mời thi đấu thành công!'
              : 'Chờ 10 giây trước khi gửi tiếp lời mời.',
        ),
      );
    } on Exception catch (_) {
      emit(state.copyWith(isActionLoading: false));
    }
  }

  FutureOr<void> _onAcceptInvitation(
    _AcceptInvitation event,
    Emitter<ChallengeRoomState> emit,
  ) async {
    if (state.isActionLoading) return;
    final uid = state.currentUid;
    if (uid == null) return;

    emit(state.copyWith(isActionLoading: true));
    try {
      final output = await _submitSocialAcceptUseCase.execute(
        SubmitSocialAcceptInput(
          uid: uid,
          invitationId: event.invitationId,
        ),
      );
      emit(state.copyWith(isActionLoading: false));
      if (output.roomCode != null && output.roomCode!.isNotEmpty) {
        event.onAccepted(output.roomCode!);
      }
    } on Exception catch (_) {
      emit(state.copyWith(isActionLoading: false));
    }
  }

  FutureOr<void> _onDismissInvitation(
    _DismissInvitation event,
    Emitter<ChallengeRoomState> emit,
  ) async {
    if (state.isActionLoading) return;
    final uid = state.currentUid;
    if (uid == null) return;

    emit(state.copyWith(isActionLoading: true));
    try {
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
        emit(
          state.copyWith(
            isActionLoading: false,
            socialState: SocialStateEntity(
              recent: currentSocial.recent,
              invitations: updatedInvitations,
            ),
          ),
        );
      } else {
        emit(state.copyWith(isActionLoading: false));
      }
    } on Exception catch (_) {
      emit(state.copyWith(isActionLoading: false));
    }
  }
}
