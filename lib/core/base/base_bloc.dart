import 'package:bufopia/core/base/base_bloc_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> with BaseBlocMixin<S> {
  BaseBloc(super.initialState);
}
