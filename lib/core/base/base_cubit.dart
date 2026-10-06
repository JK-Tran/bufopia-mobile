import 'package:bufopia/core/base/base_bloc_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<S> extends Cubit<S> with BaseBlocMixin<S> {
  BaseCubit(super.initialState);
}
