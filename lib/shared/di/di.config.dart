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
import '../../features/auth/data/mapper/account_import_mapper.dart' as _i344;
import '../../features/auth/data/mapper/user_data_mapper.dart' as _i702;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/clear_user_cache_use_case.dart'
    as _i887;
import '../../features/auth/domain/usecases/get_cached_user_use_case.dart'
    as _i481;
import '../../features/auth/domain/usecases/get_socket_ticket_use_case.dart'
    as _i59;
import '../../features/auth/domain/usecases/get_user_info_use_case.dart'
    as _i923;
import '../../features/auth/domain/usecases/import_account_use_case.dart'
    as _i870;
import '../../features/auth/domain/usecases/save_current_user_use_case.dart'
    as _i546;
import '../../features/auth/domain/usecases/update_user_profile_use_case.dart'
    as _i58;
import '../../features/auth/presentation/bloc/auth_bloc.dart' as _i797;
import '../../features/challenge/data/datasources/challenge_room_data_source.dart'
    as _i694;
import '../../features/challenge/data/mapper/room_info_data_mapper.dart'
    as _i180;
import '../../features/challenge/data/mapper/social_state_data_mapper.dart'
    as _i1003;
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
import '../../features/leaderboard/data/mapper/leaderboard_data_mapper.dart'
    as _i477;
import '../../features/leaderboard/data/mapper/leaderboard_player_data_mapper.dart'
    as _i502;
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
import '../../features/vocabulary/data/mapper/battle_deck_data_mapper.dart'
    as _i794;
import '../../features/vocabulary/data/mapper/battle_option_data_mapper.dart'
    as _i731;
import '../../features/vocabulary/data/mapper/battle_question_data_mapper.dart'
    as _i952;
import '../../features/vocabulary/data/mapper/battle_reward_data_mapper.dart'
    as _i639;
import '../../features/vocabulary/data/mapper/feedback_data_mapper.dart'
    as _i851;
import '../../features/vocabulary/data/mapper/match_record_data_mapper.dart'
    as _i1031;
import '../../features/vocabulary/data/mapper/topic_data_mapper.dart' as _i612;
import '../../features/vocabulary/data/mapper/vocabulary_data_mapper.dart'
    as _i32;
import '../../features/vocabulary/data/mapper/word_data_mapper.dart' as _i464;
import '../../features/vocabulary/data/mapper/word_profile_data_mapper.dart'
    as _i674;
import '../../features/vocabulary/data/repositories/vocabulary_repository_impl.dart'
    as _i641;
import '../../features/vocabulary/domain/repositories/vocabulary_repository.dart'
    as _i795;
import '../../features/vocabulary/domain/usecases/get_battle_deck_use_case.dart'
    as _i367;
import '../../features/vocabulary/domain/usecases/get_vocabulary_use_case.dart'
    as _i42;
import '../../features/vocabulary/domain/usecases/get_word_profiles_use_case.dart'
    as _i963;
import '../../features/vocabulary/domain/usecases/send_feedback_use_case.dart'
    as _i293;
import '../../features/vocabulary/domain/usecases/submit_battle_reward_use_case.dart'
    as _i783;
import '../../features/vocabulary/domain/usecases/submit_match_result_use_case.dart'
    as _i94;
import '../../features/vocabulary/domain/usecases/submit_word_profiles_use_case.dart'
    as _i230;
import '../../features/vocabulary/presentation/bloc/vocabulary_bloc.dart'
    as _i451;
import '../../features/word_chain/data/datasources/word_chain_data_source.dart'
    as _i60;
import '../../features/word_chain/data/mapper/game_state_data_mapper.dart'
    as _i673;
import '../../features/word_chain/data/mapper/match_record_data_mapper.dart'
    as _i64;
import '../../features/word_chain/data/mapper/reward_data_mapper.dart' as _i31;
import '../../features/word_chain/data/mapper/session_data_mapper.dart' as _i26;
import '../../features/word_chain/data/mapper/turn_message_data_mapper.dart'
    as _i690;
import '../../features/word_chain/data/mapper/word_data_mapper.dart' as _i189;
import '../../features/word_chain/data/repositories/word_chain_repository_impl.dart'
    as _i607;
import '../../features/word_chain/domain/repositories/word_chain_repository.dart'
    as _i571;
import '../../features/word_chain/domain/usecases/connect_chain_matchmake_use_case.dart'
    as _i440;
import '../../features/word_chain/domain/usecases/connect_chain_room_use_case.dart'
    as _i434;
import '../../features/word_chain/domain/usecases/disconnect_chain_use_case.dart'
    as _i392;
import '../../features/word_chain/domain/usecases/get_bot_word_use_case.dart'
    as _i16;
import '../../features/word_chain/domain/usecases/get_word_use_case.dart'
    as _i219;
import '../../features/word_chain/domain/usecases/observe_chain_game_use_case.dart'
    as _i966;
import '../../features/word_chain/domain/usecases/send_chain_away_use_case.dart'
    as _i881;
import '../../features/word_chain/domain/usecases/send_chain_chat_use_case.dart'
    as _i235;
import '../../features/word_chain/domain/usecases/send_chain_rematch_use_case.dart'
    as _i443;
import '../../features/word_chain/domain/usecases/send_chain_surrender_use_case.dart'
    as _i902;
import '../../features/word_chain/domain/usecases/send_chain_word_use_case.dart'
    as _i290;
import '../../features/word_chain/domain/usecases/submit_practice_word_use_case.dart'
    as _i964;
import '../../features/word_chain/domain/usecases/submit_start_session_use_case.dart'
    as _i975;
import '../../features/word_chain/presentation/bloc/word_chain_bloc.dart'
    as _i7;
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
import '../services/firebase/firebase_auth_service.dart' as _i491;
import '../services/local_storage/app_preferences.dart' as _i160;
import '../services/local_storage/app_preferences_impl.dart' as _i423;
import '../services/network/network_service.dart' as _i408;
import '../services/socket/duel_socket_service.dart' as _i61;
import '../services/socket/word_chain_socket_service.dart' as _i981;
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
    gh.factory<_i702.UserDataMapper>(() => const _i702.UserDataMapper());
    gh.factory<_i180.RoomInfoDataMapper>(
      () => const _i180.RoomInfoDataMapper(),
    );
    gh.factory<_i1003.SocialStateDataMapper>(
      () => const _i1003.SocialStateDataMapper(),
    );
    gh.factory<_i502.LeaderboardPlayerDataMapper>(
      () => const _i502.LeaderboardPlayerDataMapper(),
    );
    gh.factory<_i731.BattleOptionDataMapper>(
      () => const _i731.BattleOptionDataMapper(),
    );
    gh.factory<_i851.FeedbackDataMapper>(
      () => const _i851.FeedbackDataMapper(),
    );
    gh.factory<_i1031.MatchRecordDataMapper>(
      () => const _i1031.MatchRecordDataMapper(),
    );
    gh.factory<_i612.TopicDataMapper>(() => const _i612.TopicDataMapper());
    gh.factory<_i464.WordDataMapper>(() => const _i464.WordDataMapper());
    gh.factory<_i674.WordProfileDataMapper>(
      () => const _i674.WordProfileDataMapper(),
    );
    gh.factory<_i26.SessionDataMapper>(() => const _i26.SessionDataMapper());
    gh.factory<_i189.WordDataMapper>(() => const _i189.WordDataMapper());
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
    gh.factory<_i952.BattleQuestionDataMapper>(
      () => _i952.BattleQuestionDataMapper(gh<_i731.BattleOptionDataMapper>()),
    );
    gh.lazySingleton<_i408.NetworkService>(
      () => _i408.NetworkInfoImpl(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i522.AppAudioService>(() => _i522.AppAudioServiceImpl());
    gh.lazySingleton<_i491.FirebaseAuthService>(
      () => _i491.FirebaseAuthServiceImpl(),
    );
    gh.factory<_i32.VocabularyDataMapper>(
      () => _i32.VocabularyDataMapper(
        gh<_i612.TopicDataMapper>(),
        gh<_i464.WordDataMapper>(),
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
    gh.factory<_i533.AccessTokenInterceptor>(
      () => _i533.AccessTokenInterceptor(gh<_i160.AppPreferences>()),
    );
    gh.factory<_i690.TurnMessageDataMapper>(
      () => _i690.TurnMessageDataMapper(gh<_i189.WordDataMapper>()),
    );
    gh.factory<_i344.AccountImportMapper>(
      () => _i344.AccountImportMapper(gh<_i702.UserDataMapper>()),
    );
    gh.factory<_i639.BattleRewardDataMapper>(
      () => _i639.BattleRewardDataMapper(gh<_i702.UserDataMapper>()),
    );
    gh.factory<_i31.RewardDataMapper>(
      () => _i31.RewardDataMapper(gh<_i702.UserDataMapper>()),
    );
    gh.factory<_i477.LeaderboardDataMapper>(
      () =>
          _i477.LeaderboardDataMapper(gh<_i502.LeaderboardPlayerDataMapper>()),
    );
    gh.factory<_i794.BattleDeckDataMapper>(
      () => _i794.BattleDeckDataMapper(gh<_i952.BattleQuestionDataMapper>()),
    );
    gh.factory<_i202.HomeBloc>(
      () => _i202.HomeBloc(gh<_i522.AppAudioService>()),
    );
    gh.factory<_i673.GameStateDataMapper>(
      () => _i673.GameStateDataMapper(gh<_i690.TurnMessageDataMapper>()),
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
    gh.factory<_i64.MatchRecordDataMapper>(
      () => _i64.MatchRecordDataMapper(gh<_i673.GameStateDataMapper>()),
    );
    gh.factory<_i34.HeaderInterceptor>(
      () => _i34.HeaderInterceptor(
        gh<_i221.AppInfo>(),
        gh<_i627.DeviceAuthService>(),
        gh<_i491.FirebaseAuthService>(),
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
    gh.lazySingleton<_i60.WordChainDataSource>(
      () => _i60.WordChainDataSource(gh<_i564.NoneAuthAppServerApiClient>()),
    );
    gh.lazySingleton<_i695.AuthAppServerApiClient>(
      () => _i695.AuthAppServerApiClient(
        gh<_i564.HeaderInterceptor>(),
        gh<_i564.AccessTokenInterceptor>(),
        gh<_i564.RefreshTokenInterceptor>(),
      ),
    );
    gh.lazySingleton<_i61.DuelSocketService>(
      () => _i61.DuelSocketServiceImpl(
        gh<_i627.DeviceAuthService>(),
        gh<_i970.AuthDataSource>(),
        gh<_i491.FirebaseAuthService>(),
      ),
    );
    gh.lazySingleton<_i795.VocabularyRepository>(
      () => _i641.VocabularyRepositoryImpl(
        gh<_i534.VocabularyDataSource>(),
        gh<_i32.VocabularyDataMapper>(),
        gh<_i794.BattleDeckDataMapper>(),
        gh<_i639.BattleRewardDataMapper>(),
        gh<_i1031.MatchRecordDataMapper>(),
        gh<_i674.WordProfileDataMapper>(),
        gh<_i851.FeedbackDataMapper>(),
      ),
    );
    gh.lazySingleton<_i629.ChallengeRoomRepository>(
      () => _i240.ChallengeRoomRepositoryImpl(
        gh<_i694.ChallengeRoomDataSource>(),
        gh<_i1003.SocialStateDataMapper>(),
        gh<_i180.RoomInfoDataMapper>(),
      ),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i970.AuthDataSource>(),
        gh<_i702.UserDataMapper>(),
        gh<_i344.AccountImportMapper>(),
        gh<_i160.AppPreferences>(),
      ),
    );
    gh.lazySingleton<_i655.LeaderboardRepository>(
      () => _i1008.LeaderboardRepositoryImpl(
        gh<_i183.LeaderboardDataSource>(),
        gh<_i477.LeaderboardDataMapper>(),
      ),
    );
    gh.lazySingleton<_i367.GetBattleDeckUseCase>(
      () => _i367.GetBattleDeckUseCase(gh<_i795.VocabularyRepository>()),
    );
    gh.lazySingleton<_i42.GetVocabularyUseCase>(
      () => _i42.GetVocabularyUseCase(gh<_i795.VocabularyRepository>()),
    );
    gh.lazySingleton<_i963.GetWordProfilesUseCase>(
      () => _i963.GetWordProfilesUseCase(gh<_i795.VocabularyRepository>()),
    );
    gh.lazySingleton<_i293.SendFeedbackUseCase>(
      () => _i293.SendFeedbackUseCase(gh<_i795.VocabularyRepository>()),
    );
    gh.lazySingleton<_i783.SubmitBattleRewardUseCase>(
      () => _i783.SubmitBattleRewardUseCase(gh<_i795.VocabularyRepository>()),
    );
    gh.lazySingleton<_i94.SubmitMatchResultUseCase>(
      () => _i94.SubmitMatchResultUseCase(gh<_i795.VocabularyRepository>()),
    );
    gh.lazySingleton<_i230.SubmitWordProfilesUseCase>(
      () => _i230.SubmitWordProfilesUseCase(gh<_i795.VocabularyRepository>()),
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
    gh.lazySingleton<_i981.WordChainSocketService>(
      () => _i981.WordChainSocketServiceImpl(
        gh<_i627.DeviceAuthService>(),
        gh<_i970.AuthDataSource>(),
        gh<_i491.FirebaseAuthService>(),
        gh<_i673.GameStateDataMapper>(),
        gh<_i31.RewardDataMapper>(),
      ),
    );
    gh.lazySingleton<_i887.ClearUserCacheUseCase>(
      () => _i887.ClearUserCacheUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i481.GetCachedUserUseCase>(
      () => _i481.GetCachedUserUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i59.GetSocketTicketUseCase>(
      () => _i59.GetSocketTicketUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i923.GetUserInfoUseCase>(
      () => _i923.GetUserInfoUseCase(gh<_i787.AuthRepository>()),
    );
    gh.lazySingleton<_i870.ImportAccountUseCase>(
      () => _i870.ImportAccountUseCase(gh<_i787.AuthRepository>()),
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
    gh.factory<_i451.VocabularyBloc>(
      () => _i451.VocabularyBloc(
        gh<_i367.GetBattleDeckUseCase>(),
        gh<_i94.SubmitMatchResultUseCase>(),
        gh<_i783.SubmitBattleRewardUseCase>(),
        gh<_i230.SubmitWordProfilesUseCase>(),
        gh<_i101.DeviceUidService>(),
        gh<_i481.GetCachedUserUseCase>(),
        gh<_i491.FirebaseAuthService>(),
        gh<_i61.DuelSocketService>(),
        gh<_i952.BattleQuestionDataMapper>(),
      ),
    );
    gh.lazySingleton<_i797.AuthBloc>(
      () => _i797.AuthBloc(
        gh<_i923.GetUserInfoUseCase>(),
        gh<_i58.UpdateUserProfileUseCase>(),
        gh<_i481.GetCachedUserUseCase>(),
        gh<_i546.SaveCurrentUserUseCase>(),
        gh<_i887.ClearUserCacheUseCase>(),
        gh<_i101.DeviceUidService>(),
        gh<_i491.FirebaseAuthService>(),
        gh<_i870.ImportAccountUseCase>(),
        gh<_i408.NetworkService>(),
      ),
    );
    gh.lazySingleton<_i876.GetLeaderboardUseCase>(
      () => _i876.GetLeaderboardUseCase(gh<_i655.LeaderboardRepository>()),
    );
    gh.lazySingleton<_i571.WordChainRepository>(
      () => _i607.WordChainRepositoryImpl(
        gh<_i60.WordChainDataSource>(),
        gh<_i189.WordDataMapper>(),
        gh<_i26.SessionDataMapper>(),
        gh<_i31.RewardDataMapper>(),
        gh<_i981.WordChainSocketService>(),
      ),
    );
    gh.factory<_i957.LeaderboardBloc>(
      () => _i957.LeaderboardBloc(gh<_i876.GetLeaderboardUseCase>()),
    );
    gh.lazySingleton<_i440.ConnectChainMatchmakeUseCase>(
      () => _i440.ConnectChainMatchmakeUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i434.ConnectChainRoomUseCase>(
      () => _i434.ConnectChainRoomUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i392.DisconnectChainUseCase>(
      () => _i392.DisconnectChainUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i16.GetBotWordUseCase>(
      () => _i16.GetBotWordUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i219.GetWordUseCase>(
      () => _i219.GetWordUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i966.ObserveChainGameUseCase>(
      () => _i966.ObserveChainGameUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i881.SendChainAwayUseCase>(
      () => _i881.SendChainAwayUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i235.SendChainChatUseCase>(
      () => _i235.SendChainChatUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i443.SendChainRematchUseCase>(
      () => _i443.SendChainRematchUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i902.SendChainSurrenderUseCase>(
      () => _i902.SendChainSurrenderUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i290.SendChainWordUseCase>(
      () => _i290.SendChainWordUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i964.SubmitPracticeWordUseCase>(
      () => _i964.SubmitPracticeWordUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.lazySingleton<_i975.SubmitStartSessionUseCase>(
      () => _i975.SubmitStartSessionUseCase(gh<_i571.WordChainRepository>()),
    );
    gh.factory<_i7.WordChainBloc>(
      () => _i7.WordChainBloc(
        gh<_i975.SubmitStartSessionUseCase>(),
        gh<_i964.SubmitPracticeWordUseCase>(),
        gh<_i16.GetBotWordUseCase>(),
        gh<_i219.GetWordUseCase>(),
        gh<_i440.ConnectChainMatchmakeUseCase>(),
        gh<_i434.ConnectChainRoomUseCase>(),
        gh<_i290.SendChainWordUseCase>(),
        gh<_i235.SendChainChatUseCase>(),
        gh<_i881.SendChainAwayUseCase>(),
        gh<_i902.SendChainSurrenderUseCase>(),
        gh<_i443.SendChainRematchUseCase>(),
        gh<_i392.DisconnectChainUseCase>(),
        gh<_i966.ObserveChainGameUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
