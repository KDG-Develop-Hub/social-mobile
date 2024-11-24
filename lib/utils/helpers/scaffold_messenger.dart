import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/utils/routes/app_router.dart';

import '../../../presentation/components/common_snack_bar.dart';

part 'scaffold_messenger.g.dart';

@Riverpod(keepAlive: true)
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey(
  ScaffoldMessengerKeyRef ref,
) {
  return GlobalKey<ScaffoldMessengerState>();
}

@riverpod
class ScaffoldMessenger extends _$ScaffoldMessenger {
  GlobalKey<ScaffoldMessengerState> get scaffoldKey =>
      ref.read(scaffoldMessengerKeyProvider);

  @override
  void build() {
    return;
  }

  /// スナックバーを表示する。
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccessSnackBar(
    String message, {
    bool removeCurrentSnackBar = true,
  }) {
    final theme = Theme.of(rootNavigatorKey.currentState!.context);
    final scaffoldMessengerState = scaffoldKey.currentState!;
    if (removeCurrentSnackBar) {
      scaffoldMessengerState.removeCurrentSnackBar();
    }
    return scaffoldMessengerState.showSnackBar(
      CommonSnackBar(
        message: message,
        backgroundColor: theme.colorScheme.inverseSurface,
        textStyle: theme.textTheme.labelLarge!
            .copyWith(color: theme.colorScheme.onInverseSurface),
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      showExceptionSnackBar(
    String message, {
    bool removeCurrentSnackBar = true,
  }) {
    final theme = Theme.of(rootNavigatorKey.currentState!.context);
    final scaffoldMessengerState = scaffoldKey.currentState!;
    if (removeCurrentSnackBar) {
      scaffoldMessengerState.removeCurrentSnackBar();
    }
    return scaffoldMessengerState.showSnackBar(
      CommonSnackBar(
        message: message,
        backgroundColor: theme.colorScheme.inverseSurface,
        textStyle: theme.textTheme.labelLarge!
            .copyWith(color: theme.colorScheme.onInverseSurface),
      ),
    );
  }
}
