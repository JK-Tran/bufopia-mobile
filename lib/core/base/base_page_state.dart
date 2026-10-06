import 'dart:async';

import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/components/loading_overlay.dart';
import 'package:bufopia/core/base/base_bloc_mixin.dart';
import 'package:bufopia/core/constants/app_spacing.dart';
import 'package:bufopia/shared/exception/base/app_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class BasePageState<
  T extends StatefulWidget,
  B extends BaseBlocMixin<dynamic>
>
    extends State<T> {
  late final B bloc;
  StreamSubscription<AppException>? _errorSubscription;

  @protected
  B createBloc() => GetIt.instance.get<B>();

  @override
  void initState() {
    super.initState();
    bloc = createBloc();

    // Lắng nghe lỗi từ Bloc để tự động hiển thị SnackBar
    _errorSubscription = bloc.errorStream.listen((exception) {
      if (mounted) {
        handleError(exception);
      }
    });
  }

  @override
  void dispose() {
    _errorSubscription?.cancel();
    bloc.close();
    super.dispose();
  }

  void handleError(AppException exception) {
    AppSnackBar.showError(
      context,
      exception.toString(),
    );
  }

  Widget buildPage(BuildContext context);

  EdgeInsetsGeometry? get pagePadding => AppSpacing.pagePadding;

  bool get useSafeArea => true;

  @override
  Widget build(BuildContext context) {
    var pageBody = buildPage(context);

    if (useSafeArea) {
      pageBody = SafeArea(child: pageBody);
    }

    if (pagePadding != null) {
      pageBody = Padding(padding: pagePadding!, child: pageBody);
    }

    return BlocProvider<B>.value(
      value: bloc,
      child: Stack(
        children: [
          pageBody,
          StreamBuilder<bool>(
            stream: bloc.loadingStream,
            initialData: false,
            builder: (context, snapshot) {
              if (snapshot.data == true) {
                return const LoadingOverlay();
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
