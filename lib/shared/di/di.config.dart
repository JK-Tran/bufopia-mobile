// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:device_info_plus/device_info_plus.dart' as _i833;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../core/base/default_bloc.dart' as _i192;
import '../../features/app/bloc/app_bloc.dart' as _i744;
import '../../features/auth/data/datasources/auth_data_source.dart' as _i970;
import '../../features/auth/data/mapper/user_mapper.dart' as _i360;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/clear_user_cache_use_case.dart'
    as _i887;
import '../../features/auth/domain/usecases/get_cached_user_use_case.dart'
    as _i481;
import '../../features/auth/domain/usecases/get_user_info_use_case.dart'
    as _i923;
import '../../features/auth/domain/usecases/save_current_user_use_case.dart'
    as _i546;
import '../../features/auth/domain/usecases/update_user_profile_use_case.dart'
    as _i58;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/challenge/data/datasources/challenge_room_data_source.dart'
    as _i694;
import '../../features/challenge/data/mapper/room_info_mapper.dart' as _i921;
import '../../features/challenge/data/mapper/social_state_mapper.dart' as _i137;
import '../../features/challenge/data/repositories/challenge_room_repository_impl.dart'
    as _i240;
import '../../features/challenge/domain/repositories/challenge_room_repository.dart'
    as _i629;
import '../../features/challenge/domain/usecases/delete_social_dismiss_use_case.dart'
    as _i825;
import '../../features/challenge/domain/usecases/get_room_info_use_case.dart'
    as _i97;
import '../../features/challenge/domain/usecases/get_social_state_use_case.dart'
    as _i778;
import '../../features/challenge/domain/usecases/submit_social_accept_use_case.dart'
    as _i974;
import '../../features/challenge/domain/usecases/submit_social_invite_use_case.dart'
    as _i468;
import '../../features/challenge/presentation/bloc/challenge_room_bloc.dart'
    as _i632;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i202;
import '../../features/leaderboard/data/datasources/leaderboard_data_source.dart'
    as _i183;
import '../../features/leaderboard/data/mapper/leaderboard_mapper.dart'
    as _i772;
import '../../features/leaderboard/data/mapper/leaderboard_player_mapper.dart'
    as _i881;
import '../../features/leaderboard/data/repositories/leaderboard_repository_impl.dart'
    as _i1008;
import '../../features/leaderboard/domain/repositories/leaderboard_repository.dart'
    as _i655;
import '../../features/leaderboard/domain/usecases/get_leaderboard_use_case.dart'
    as _i876;
import '../../features/leaderboard/presentation/bloc/leaderboard_bloc.dart'
    as _i957;
import '../../features/vocabulary/data/datasources/vocabulary_data_source.dart'
    as _i534;
import '../../features/vocabulary/data/mapper/battle_deck_mapper.dart' as _i152;
import '../../features/vocabulary/data/mapper/battle_option_mapper.dart'
    as _i338;
import '../../features/vocabulary/data/mapper/battle_question_mapper.dart'
    as _i843;
import '../../features/vocabulary/data/mapper/battle_reward_mapper.dart'
    as _i396;
import '../../features/vocabulary/data/mapper/match_record_mapper.dart' as _i96;
import '../../features/vocabulary/data/mapper/topic_mapper.dart' as _i542;
import '../../features/vocabulary/data/mapper/vocabulary_mapper.dart' as _i378;
import '../../features/vocabulary/data/mapper/word_mapper.dart' as _i195;
import '../../features/vocabulary/data/mapper/word_profile_mapper.dart'
    as _i955;
import '../../features/vocabulary/data/repositories/vocabulary_repository_impl.dart'
    as _i641;
import '../../features/vocabulary/domain/repositories/vocabulary_repository.dart'
    as _i794;
import '../../features/vocabulary/domain/usecases/get_battle_deck_use_case.dart'
    as _i367;
import '../../features/vocabulary/domain/usecases/get_vocabulary_use_case.dart'
    as _i42;
import '../../features/vocabulary/domain/usecases/get_word_profiles_use_case.dart'
    as _i963;
import '../../features/vocabulary/domain/usecases/submit_battle_reward_use_case.dart'
    as _i783;
import '../../features/vocabulary/domain/usecases/submit_match_result_use_case.dart'
    as _i94;
import '../../features/vocabulary/domain/usecases/submit_word_profiles_use_case.dart'
    as _i230;
import '../../features/vocabulary/presentation/bloc/vocabulary_bloc.dart'
    as _i451;
import '../helper/app_info.dart' as _i221;
import '../infrastructure/data/api/client/auth_app_server_api_client.dart'
    as _i695;
import '../infrastructure/data/api/client/none_auth_app_server_api_client.dart'
    as _i436;
import '../infrastructure/data/api/client/raw_api_client.dart' as _i756;
import '../infrastructure/data/api/client/refresh_token_api_client.dart'
    as _i585;
import '../infrastructure/data/api/mapper/base_error_response_mapper/json_array_error_response_mapper.dart'
    as _i878;
import '../infrastructure/data/api/mapper/base_error_response_mapper/json_object_error_response_mapper.dart'
    as _i579;
import '../infrastructure/data/api/mapper/base_error_response_mapper/line_error_response_mapper.dart'
    as _i239;
import '../infrastructure/data/api/mapper/pagination_data_mapper.dart' as _i181;
import '../infrastructure/data/api/middleware/access_token_interceptor.dart'
    as _i533;
import '../infrastructure/data/api/middleware/connectivity_interceptor.dart'
    as _i896;
import '../infrastructure/data/api/middleware/header_interceptor.dart' as _i34;
import '../infrastructure/data/api/middleware/refresh_token_interceptor.dart'
    as _i1045;
import '../infrastructure/infrastructure.dart' as _i564;
import '../services/audio/app_audio_service.dart' as _i522;
import '../services/device/device_auth_service.dart' as _i627;
import '../services/device/device_uid_service.dart' as _i101;
import '../services/local_storage/app_preferences.dart' as _i160;
import '../services/local_storage/app_preferences_impl.dart' as _i423;
import '../services/network/network_service.dart' as _i408;
import '../services/socket/socket_service.dart' as _i717;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i192.DefaultBloc>(() => _i192.DefaultBloc());
    gh.factory<_i360.UserMapper>(() => const _i360.UserMapper());
    gh.factory<_i921.RoomInfoMapper>(() => const _i921.RoomInfoMapper());
    gh.factory<_i137.SocialStateMapper>(() => const _i137.SocialStateMapper());
    gh.factory<_i881.LeaderboardPlayerMapper>(
      () => const _i881.LeaderboardPlayerMapper(),
    );
    gh.factory<_i338.BattleOptionMapper>(
      () => const _i338.BattleOptionMapper(),
    );
    gh.factory<_i96.MatchRecordMapper>(() => const _i96.MatchRecordMapper());
    gh.factory<_i542.TopicMapper>(() => const _i542.TopicMapper());
    gh.factory<_i195.WordMapper>(() => const _i195.WordMapper());
    gh.factory<_i955.WordProfileMapper>(() => const _i955.WordProfileMapper());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i878.JsonArrayErrorResponseMapper>(
      () => _i878.JsonArrayErrorResponseMapper(),
    );
    gh.factory<_i579.JsonObjectErrorResponseMapper>(
      () => _i579.JsonObjectErrorResponseMapper(),
    );
    gh.factory<_i239.LineErrorResponseMapper>(
      () => _i239.LineErrorResponseMapper(),
    );
    gh.factory<_i181.PaginationDataMapper>(() => _i181.PaginationDataMapper());
    gh.lazySingleton<_i833.DeviceInfoPlugin>(
      () => registerModule.deviceInfoPlugin,
    );
    gh.lazySingleton<_i221.AppInfo>(() => _i221.AppInfo());
    gh.lazySingleton<_i756.RawApiClient>(() => _i756.RawApiClient());
    gh.factory<_i396.BattleRewardMapper>(
      () => _i396.BattleRewardMapper(gh<_i360.UserMapper>()),
    );
    gh.lazySingleton<_i408.NetworkService>(
      () => _i408.NetworkInfoImpl(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i522.AppAudioService>(() => _i522.AppAudioServiceImpl());
    gh.factory<_i378.VocabularyMapper>(
      () => _i378.VocabularyMapper(
        gh<_i542.TopicMapper>(),
        gh<_i195.WordMapper>(),
      ),
    );
    gh.factory<_i896.ConnectivityInterceptor>(
      () => _i896.ConnectivityInterceptor(gh<_i408.NetworkService>()),
    );
    gh.lazySingleton<_i160.AppPreferences>(
      () => _i423.AppPreferencesImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i101.DeviceUidService>(
      () => _i101.DeviceUidService(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i772.LeaderboardMapper>(
      () => _i772.LeaderboardMapper(gh<_i881.LeaderboardPlayerMapper>()),
    );
    gh.factory<_i533.AccessTokenInterceptor>(
      () => _i533.AccessTokenInterceptor(gh<_i160.AppPreferences>()),
    );
    gh.factory<_i843.BattleQuestionMapper>(
      () => _i843.BattleQuestionMapper(gh<_i338.BattleOptionMapper>()),
    );
    gh.factory<_i152.BattleDeckMapper>(
      () => _i152.BattleDeckMapper(gh<_i843.BattleQuestionMapper>()),
    );
    gh.factory<_i202.HomeBloc>(
      () => _i202.HomeBloc(gh<_i522.AppAudioService>()),
    );
    gh.lazySingleton<_i627.DeviceAuthService>(
      () => _i627.DeviceAuthServiceImpl(
        gh<_i460.SharedPreferences>(),
        gh<_i101.DeviceUidService>(),
      ),
    );
    gh.lazySingleton<_i744.AppBloc>(
      () => _i744.AppBloc(
        gh<_i160.AppPreferences>(),
        gh<_i522.AppAudioService>(),
      ),
    );
    gh.lazySingleton<_i717.SocketService>(
      () => _i717.SocketServiceImpl(gh<_i627.DeviceAuthService>()),
    );
    gh.factory<_i34.HeaderInterceptor>(
      () => _i34.HeaderInterceptor(
        gh<_i221.AppInfo>(),
        gh<_i627.DeviceAuthService>(),
      ),
    );
    gh.lazySingleton<_i585.RefreshTokenApiClient>(
      () => _i585.RefreshTokenApiClient(
        gh<_i564.HeaderInterceptor>(),
        gh<_i564.AccessTokenInterceptor>(),
      ),
    );
    gh.lazySingleton<_i436.NoneAuthAppServerApiClient>(
      () => _i436.NoneAuthAppServerApiClient(gh<_i564.HeaderInterceptor>()),
    );
    gh.factory<_i1045.RefreshTokenInterceptor>(
      () => _i1045.RefreshTokenInterceptor(
        gh<_i436.NoneAuthAppServerApiClient>(),
      ),
    );
    gh.lazySingleton<_i970.AuthDataSource>(
      () => _i970.AuthDataSource(gh<_i564.NoneAuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i694.ChallengeRoomDataSource>(
      () =>
          _i694.ChallengeRoomDataSource(gh<_i564.NoneAuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i183.LeaderboardDataSource>(
      () => _i183.LeaderboardDataSource(gh<_i564.NoneAuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i534.VocabularyDataSource>(
      () => _i534.VocabularyDataSource(gh<_i564.NoneAuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i970.AuthDataSource>(),
        gh<_i360.UserMapper>(),
        gh<_i160.AppPreferences>(),
      ),
    );
    gh.lazySingleton<_i695.AuthAppServerApiClient>(
      () => _i695.AuthAppServerApiClient(
        gh<_i564.HeaderInterceptor>(),
        gh<_i564.AccessTokenInterceptor>(),
        gh<_i564.RefreshTokenInterceptor>(),
      ),
    );
    gh.lazySingleton<_i794.VocabularyRepository>(
      () => _i641.VocabularyRepositoryImpl(
        gh<_i534.VocabularyDataSource>(),
        gh<_i378.VocabularyMapper>(),
        gh<_i152.BattleDeckMapper>(),
        gh<_i396.BattleRewardMapper>(),
        gh<_i96.MatchRecordMapper>(),
        gh<_i955.WordProfileMapper>(),
      ),
    );
    gh.lazySingleton<_i629.ChallengeRoomRepository>(
      () => _i240.ChallengeRoomRepositoryImpl(
        gh<_i694.ChallengeRoomDataSource>(),
        gh<_i137.SocialStateMapper>(),
        gh<_i921.RoomInfoMapper>(),
      ),
    );
    gh.lazySingleton<_i367.GetBattleDeckUseCase>(
      () => _i367.GetBattleDeckUseCase(gh<_i794.VocabularyRepository>()),
    );
    gh.lazySingleton<_i42.GetVocabularyUseCase>(
      () => _i42.GetVocabularyUseCase(gh<_i794.VocabularyRepository>()),
    );
    gh.lazySingleton<_i963.GetWordProfilesUseCase>(
      () => _i963.GetWordProfilesUseCase(gh<_i794.VocabularyRepository>()),
    );
    gh.lazySingleton<_i783.SubmitBattleRewardUseCase>(
      () => _i783.SubmitBattleRewardUseCase(gh<_i794.VocabularyRepository>()),
    );
    gh.lazySingleton<_i94.SubmitMatchResultUseCase>(
      () => _i94.SubmitMatchResultUseCase(gh<_i794.VocabularyRepository>()),
    );
    gh.lazySingleton<_i230.SubmitWordProfilesUseCase>(
      () => _i230.SubmitWordProfilesUseCase(gh<_i794.VocabularyRepository>()),
    );
    gh.lazySingleton<_i825.DeleteSocialDismissUseCase>(
      () =>
          _i825.DeleteSocialDismissUseCase(gh<_i629.ChallengeRoomRepository>()),
    );
    gh.lazySingleton<_i97.GetRoomInfoUseCase>(
      () => _i97.GetRoomInfoUseCase(gh<_i629.ChallengeRoomRepository>()),
    );
    gh.lazySingleton<_i778.GetSocialStateUseCase>(
      () => _i778.GetSocialStateUseCase(gh<_i629.ChallengeRoomRepository>()),
    );
    gh.lazySingleton<_i974.SubmitSocialAcceptUseCase>(
      () =>
          _i974.SubmitSocialAcceptUseCase(gh<_i629.ChallengeRoomRepository>()),
    );
    gh.lazySingleton<_i468.SubmitSocialInviteUseCase>(
      () =>
          _i468.SubmitSocialInviteUseCase(gh<_i629.ChallengeRoomRepository>()),
    );
    gh.lazySingleton<_i655.LeaderboardRepository>(
      () => _i1008.LeaderboardRepositoryImpl(
        gh<_i183.LeaderboardDataSource>(),
        gh<_i772.LeaderboardMapper>(),
      ),
    );
    gh.lazySingleton<_i887.ClearUserCacheUseCase>(
      () => _i887.ClearUserCacheUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i481.GetCachedUserUseCase>(
      () => _i481.GetCachedUserUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i923.GetUserInfoUseCase>(
      () => _i923.GetUserInfoUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i546.SaveCurrentUserUseCase>(
      () => _i546.SaveCurrentUserUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i58.UpdateUserProfileUseCase>(
      () => _i58.UpdateUserProfileUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i632.ChallengeRoomBloc>(
      () => _i632.ChallengeRoomBloc(
        gh<_i778.GetSocialStateUseCase>(),
        gh<_i468.SubmitSocialInviteUseCase>(),
        gh<_i974.SubmitSocialAcceptUseCase>(),
        gh<_i825.DeleteSocialDismissUseCase>(),
        gh<_i97.GetRoomInfoUseCase>(),
      ),
    );
    gh.lazySingleton<_i876.GetLeaderboardUseCase>(
      () => _i876.GetLeaderboardUseCase(gh<_i655.LeaderboardRepository>()),
    );
    gh.lazySingleton<_i797.AuthBloc>(
      () => _i797.AuthBloc(
        gh<_i923.GetUserInfoUseCase>(),
        gh<_i58.UpdateUserProfileUseCase>(),
        gh<_i481.GetCachedUserUseCase>(),
        gh<_i546.SaveCurrentUserUseCase>(),
        gh<_i887.ClearUserCacheUseCase>(),
        gh<_i101.DeviceUidService>(),
        gh<_i408.NetworkService>(),
      ),
    );
    gh.factory<_i451.VocabularyBloc>(
      () => _i451.VocabularyBloc(
        gh<_i367.GetBattleDeckUseCase>(),
        gh<_i94.SubmitMatchResultUseCase>(),
        gh<_i783.SubmitBattleRewardUseCase>(),
        gh<_i230.SubmitWordProfilesUseCase>(),
        gh<_i101.DeviceUidService>(),
        gh<_i717.SocketService>(),
        gh<_i843.BattleQuestionMapper>(),
      ),
    );
    gh.factory<_i957.LeaderboardBloc>(
      () => _i957.LeaderboardBloc(gh<_i876.GetLeaderboardUseCase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
