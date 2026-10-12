import 'dart:async';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/account_import_result.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/domain/usecases/clear_user_cache_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/get_user_info_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/import_account_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/save_current_user_use_case.dart';
import 'package:bufopia/features/auth/domain/usecases/update_user_profile_use_case.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
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
    this._firebaseAuthService,
    this._importAccountUseCase,
    this._networkService,
  ) : super(_createInitialState(getCachedUserUseCase)) {
    on<_GetUserInfo>(_onGetUserInfo);
    on<_UpdateProfile>(_onUpdateProfile);
    on<_SignInWithGoogle>(_onSignInWithGoogle);
    on<_ResolveAccountConflict>(_onResolveAccountConflict);
    on<_CancelAccountConflict>(_onCancelAccountConflict);
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
  final FirebaseAuthService _firebaseAuthService;
  final ImportAccountUseCase _importAccountUseCase;
  final NetworkService _networkService;

  StreamSubscription<bool>? _networkSubscription;
  Timer? _reconnectDebounceTimer;
  bool _wasOffline = false;
  bool _isFetchingUserInfo = false;

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
  /// CHỈ KHI thiết bị thực sự chuyển từ MẤT MẠNG sang CÓ MẠNG LẠI.
  void _listenToNetworkChanges() {
    _networkSubscription = _networkService.onConnectivityChanged.listen((
      isConnected,
    ) {
      if (!isConnected) {
        _wasOffline = true;
        _reconnectDebounceTimer?.cancel();
      } else if (_wasOffline) {
        _wasOffline = false;
        _reconnectDebounceTimer?.cancel();
        _reconnectDebounceTimer = Timer(const Duration(milliseconds: 1500), () {
          if (!isClosed) {
            // Khi có mạng lại ổn định: tự động tải lại profile từ server
            add(const AuthEvent.getUserInfo());
          }
        });
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
    if (_isFetchingUserInfo) {
      return null;
    }
    _isFetchingUserInfo = true;
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () {
        if (state.currentUser == null) {
          safeEmit(state.copyWith(isLoading: true, errorMessage: null));
        }
      },
      action: () async {
        // Đảm bảo Firebase Auth đã có user (Anonymous hoặc Google)
        // để có idToken hợp lệ
        if (_firebaseAuthService.currentUser == null) {
          await _firebaseAuthService.signInAnonymously();
        }

        final fbUid = _firebaseAuthService.currentUid;
        final uid =
            event.uid ??
            (state.currentUser?.uid.isNotEmpty == true
                ? state.currentUser!.uid
                : (fbUid?.isNotEmpty == true
                      ? fbUid!
                      : await _deviceUidService.getDeviceUid()));

        try {
          final output = await _getUserInfoUseCase.execute(
            GetUserInfoInput(uid: uid),
          );

          if (output.user != null) {
            await _saveCurrentUserUseCase.execute(output.user!);
            safeEmit(
              state.copyWith(
                isLoggedIn: true,
                currentUser: output.user,
                isLoading: false,
                errorMessage: null,
              ),
            );
            return;
          }
        } on Object catch (_) {
          // Nếu user chưa tồn tại trên server hoặc cần khởi tạo hồ sơ lần đầu
        }

        // Khởi tạo hồ sơ người dùng trên server với tên hợp lệ
        final suffix = uid.length >= 4 ? uid.substring(uid.length - 4) : uid;
        final fallbackName = state.currentUser?.displayName.isNotEmpty == true
            ? state.currentUser!.displayName
            : 'Player_$suffix';
        final fallbackAvatar = state.currentUser?.avatarUrl.isNotEmpty == true
            ? state.currentUser!.avatarUrl
            : 'assets/images/bunny-avatar.webp';

        try {
          final initOutput = await _updateUserProfileUseCase.execute(
            UpdateUserProfileInput(
              uid: uid,
              displayName: fallbackName,
              avatarUrl: fallbackAvatar,
            ),
          );

          if (initOutput.user != null) {
            await _saveCurrentUserUseCase.execute(initOutput.user!);
            safeEmit(
              state.copyWith(
                isLoggedIn: true,
                currentUser: initOutput.user,
                isLoading: false,
                errorMessage: null,
              ),
            );
          } else {
            safeEmit(state.copyWith(isLoading: false));
          }
        } on Object catch (e) {
          safeEmit(
            state.copyWith(
              isLoading: false,
              errorMessage: state.currentUser == null ? e.toString() : null,
            ),
          );
        }
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isLoading: false,
            errorMessage: state.currentUser == null ? e.toString() : null,
          ),
        );
      },
      doOnSuccessOrError: () {
        _isFetchingUserInfo = false;
      },
    );
  }

  FutureOr<void> _onUpdateProfile(
    _UpdateProfile event,
    Emitter<AuthState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(isLoading: true, errorMessage: null),
      ),
      action: () async {
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
          safeEmit(
            state.copyWith(
              currentUser: output.user,
              isLoading: false,
              errorMessage: null,
            ),
          );
        } else {
          safeEmit(state.copyWith(isLoading: false));
        }
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isLoading: false,
            errorMessage: e.toString(),
          ),
        );
      },
    );
  }

  FutureOr<void> _onSignInWithGoogle(
    _SignInWithGoogle event,
    Emitter<AuthState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(isLoading: true, errorMessage: null),
      ),
      action: () async {
        // 1. LẤY UID VÀ TOKEN CỦA KHÁCH HIỆN TẠI TRƯỚC KHI ĐĂNG NHẬP GOOGLE
        final sourceUid = state.currentUser?.uid.isNotEmpty == true
            ? state.currentUser!.uid
            : (_firebaseAuthService.currentUid ?? '');
        final guestToken = await _firebaseAuthService.getIdToken();

        // 2. Thực hiện Google Sign-In
        final result = await _firebaseAuthService.signInWithGoogle();
        if (result == null) {
          safeEmit(state.copyWith(isLoading: false));
          return;
        }

        final googleIdToken = result.idToken;
        final googleUser = result.credential.user;
        final googleUid = googleUser?.uid ?? '';
        final displayName =
            googleUser?.displayName ?? state.currentUser?.displayName;
        final avatarUrl = googleUser?.photoURL ?? state.currentUser?.avatarUrl;
        final xp = state.currentUser?.xp ?? 0;

        // 3. Gửi POST /api/account/import kèm sourceToken của khách
        final importOutput = await _importAccountUseCase.execute(
          ImportAccountInput(
            idToken: googleIdToken,
            sourceUid: sourceUid,
            sourceToken: guestToken,
            displayName: displayName,
            xp: xp,
          ),
        );

        final res = importOutput.result;
        if (res?.isConflict == true && res?.conflict != null) {
          safeEmit(
            state.copyWith(
              isLoading: false,
              conflict: res!.conflict,
              pendingIdToken: googleIdToken,
            ),
          );
          return;
        }

        final activeUid = res?.activeUid.isNotEmpty == true
            ? res!.activeUid
            : (googleUid.isNotEmpty ? 'acct_$googleUid' : sourceUid);

        final importedUser =
            res?.user ??
            User(
              uid: activeUid,
              displayName: displayName ?? 'Player',
              avatarUrl: avatarUrl ?? '',
              xp: res?.user?.xp ?? xp,
              level: res?.user?.level ?? state.currentUser?.level ?? 1,
              streak: res?.user?.streak ?? state.currentUser?.streak ?? 0,
              winStreak:
                  res?.user?.winStreak ?? state.currentUser?.winStreak ?? 0,
            );

        await _saveCurrentUserUseCase.execute(importedUser);
        safeEmit(
          state.copyWith(
            isLoggedIn: true,
            currentUser: importedUser,
            isLoading: false,
            conflict: null,
            pendingIdToken: null,
          ),
        );

        // Fetch lại thông tin mới nhất từ server
        add(AuthEvent.getUserInfo(uid: activeUid));
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isLoading: false,
            errorMessage: e.toString(),
          ),
        );
      },
    );
  }

  FutureOr<void> _onResolveAccountConflict(
    _ResolveAccountConflict event,
    Emitter<AuthState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(isLoading: true, errorMessage: null),
      ),
      action: () async {
        final pendingIdToken = state.pendingIdToken;
        if (pendingIdToken == null || pendingIdToken.isEmpty) {
          safeEmit(
            state.copyWith(
              isLoading: false,
              errorMessage:
                  'Không tìm thấy thông tin phiên đăng nhập Google.'
                  ' Vui lòng thử lại.',
            ),
          );
          return;
        }

        final sourceUid = state.currentUser?.uid.isNotEmpty == true
            ? state.currentUser!.uid
            : (_firebaseAuthService.currentUid ?? '');

        final importOutput = await _importAccountUseCase.execute(
          ImportAccountInput(
            idToken: pendingIdToken,
            sourceUid: sourceUid,
            action: event.action,
            displayName: state.currentUser?.displayName,
            xp: state.currentUser?.xp ?? 0,
          ),
        );

        final res = importOutput.result;
        final activeUid = res?.activeUid.isNotEmpty == true
            ? res!.activeUid
            : (state.currentUser?.uid ?? sourceUid);

        final importedUser =
            res?.user ??
            (state.currentUser != null
                ? state.currentUser!.copyWith(uid: activeUid)
                : null);

        if (importedUser != null) {
          await _saveCurrentUserUseCase.execute(importedUser);
          safeEmit(
            state.copyWith(
              isLoggedIn: true,
              currentUser: importedUser,
              isLoading: false,
              conflict: null,
              pendingIdToken: null,
            ),
          );
        } else {
          safeEmit(
            state.copyWith(
              isLoading: false,
              conflict: null,
              pendingIdToken: null,
            ),
          );
        }
        add(AuthEvent.getUserInfo(uid: activeUid));
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isLoading: false,
            errorMessage: e.toString(),
          ),
        );
      },
    );
  }

  void _onCancelAccountConflict(
    _CancelAccountConflict event,
    Emitter<AuthState> emit,
  ) {
    safeEmit(state.copyWith(conflict: null, pendingIdToken: null));
  }

  FutureOr<void> _onLoggedIn(
    _LoggedIn event,
    Emitter<AuthState> emit,
  ) async {
    await _saveCurrentUserUseCase.execute(event.user);
    safeEmit(
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
    safeEmit(
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
    await _firebaseAuthService.signOut();
    safeEmit(
      state.copyWith(
        isLoggedIn: false,
        currentUser: null,
        errorMessage: null,
        conflict: null,
        pendingIdToken: null,
      ),
    );
  }
}
