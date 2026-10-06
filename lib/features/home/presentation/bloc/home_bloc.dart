import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._audioService) : super(const HomeState()) {
    on<Initiated>(_onInitiated);
  }

  final AppAudioService _audioService;

  Future<void> _onInitiated(
    Initiated event,
    Emitter<HomeState> emit,
  ) async {
    await _audioService.playBgm();
  }

  @override
  Future<void> close() async {
    await _audioService.stopBgm();
    return super.close();
  }
}
