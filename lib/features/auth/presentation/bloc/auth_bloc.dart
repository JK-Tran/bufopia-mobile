import 'dart:async';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/user_entity.dart';
import 'package:bufopia/features/auth/domain/usecases/clear_user_cache_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/get_user_info_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/save_current_user_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/update_user_profile_use_case.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:bufopia/shared/services/network/network_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(
    this._getUserInfoUseCase,
    this._updateUserProfileUseCase,
    GetCachedUserUseCase getCachedUserUseCase,
    this._saveCurrentUserUseCase,
    this._clearUserCacheUseCase,
    this._deviceUidService,
    this._networkService,
  ) : super(_createInitialState(getCachedUserUseCase)) {
    on<_GetUserInfo>(_onGetUserInfo);
    on<_UpdateProfile>(_onUpdateProfile);
    on<_LoggedIn>(_onLoggedIn);
    on<_UserUpdated>(_onUserUpdated);
    on<_LoggedOut>(_onLoggedOut);

    _listenToNetworkChanges();
  }

  final GetUserInfoUseCase _getUserInfoUseCase;
  final UpdateUserProfileUseCase _updateUserProfileUseCase;
  final SaveCurrentUserUseCase _saveCurrentUserUseCase;
  final ClearUserCacheUseCase _clearUserCacheUseCase;
  final DeviceUidService _deviceUidService;
  final NetworkService _networkService;

  StreamSubscription<bool>? _networkSubscription;
  Timer? _reconnectDebounceTimer;

  /// Tạo state ban đầu đồng bộ từ Local Cache (Offline-First)
  /// Giúp người chơi thấy đúng tên mình ("Ân Cơ Phó") ngay frame đầu tiên.
  static AuthState _createInitialState(GetCachedUserUseCase getCachedUser) {
    final cached = getCachedUser.execute();
    if (cached != null) {
      return AuthState(currentUser: cached, isLoggedIn: true);
    }
    return const AuthState();
  }

  /// Lắng nghe trạng thái mạng có debounce 1.5s để tự động cập nhật
  void _listenToNetworkChanges() {
    _networkSubscription = _networkService.onConnectivityChanged.listen((
      isConnected,
    ) {
      if (isConnected) {
        _reconnectDebounceTimer?.cancel();
        _reconnectDebounceTimer = Timer(const Duration(milliseconds: 1500), () {
          if (!isClosed) {
            // Khi có mạng lại ổn định: tự động tải lại profile từ server
            add(const AuthEvent.getUserInfo());
          }
        });
      } else {
        _reconnectDebounceTimer?.cancel();
      }
    });
  }

  @override
  Future<void> close() async {
    await _networkSubscription?.cancel();
    _reconnectDebounceTimer?.cancel();
    return super.close();
  }

  FutureOr<void> _onGetUserInfo(
    _GetUserInfo event,
    Emitter<AuthState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      action: () async {
        if (state.currentUser == null) {
          emit(state.copyWith(isLoading: true, errorMessage: null));
        }

        final uid =
            event.uid ??
            (state.currentUser?.uid.isNotEmpty == true
                ? state.currentUser!.uid
                : await _deviceUidService.getDeviceUid());

        final output = await _getUserInfoUseCase.execute(
          GetUserInfoInput(uid: uid),
        );

        if (output.user != null) {
          await _saveCurrentUserUseCase.execute(output.user!);
          emit(
            state.copyWith(
              isLoggedIn: true,
              currentUser: output.user,
              isLoading: false,
              errorMessage: null,
            ),
          );
        } else {
          emit(state.copyWith(isLoading: false));
        }
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: state.currentUser == null ? e.toString() : null,
          ),
        );
      },
    );
  }

  FutureOr<void> _onUpdateProfile(
    _UpdateProfile event,
    Emitter<AuthState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoading: true, errorMessage: null));
        final uid = state.currentUser?.uid.isNotEmpty == true
            ? state.currentUser!.uid
            : await _deviceUidService.getDeviceUid();

        final output = await _updateUserProfileUseCase.execute(
          UpdateUserProfileInput(
            uid: uid,
            displayName: event.displayName,
            avatarUrl: event.avatarUrl,
          ),
        );

        if (output.user != null) {
          await _saveCurrentUserUseCase.execute(output.user!);
          emit(
            state.copyWith(
              currentUser: output.user,
              isLoading: false,
              errorMessage: null,
            ),
          );
        } else {
          emit(state.copyWith(isLoading: false));
        }
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: e.toString(),
          ),
        );
      },
    );
  }

  FutureOr<void> _onLoggedIn(
    _LoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    await _saveCurrentUserUseCase.execute(event.user);
    emit(
      state.copyWith(
        isLoggedIn: true,
        currentUser: event.user,
      ),
    );
  }

  void _onUserUpdated(
    _UserUpdated event,
    Emitter<AuthState> emit,
  ) {
    emit(
      state.copyWith(
        currentUser: event.user,
      ),
    );
  }

  FutureOr<void> _onLoggedOut(
    _LoggedOut event,
    Emitter<AuthState> emit,
  ) async {
    await _clearUserCacheUseCase.execute();
    emit(
      state.copyWith(
        isLoggedIn: false,
        currentUser: null,
        errorMessage: null,
      ),
    );
  }
}
