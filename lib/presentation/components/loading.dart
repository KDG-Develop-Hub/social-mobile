import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/utils/state/overlay_loading_provider.dart';

/// 二度押しを防止したいときなどのオーバーレイローディング
class OverlayLoading extends HookConsumerWidget {
  const OverlayLoading({
    super.key,
    this.backgroundColor = Colors.black26,
  });

  final Color backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overlayLoading = ref.watch(overlayLoadingProvider);

    return Visibility(
      visible: overlayLoading,
      child: ColoredBox(
        color: backgroundColor,
        child: const SizedBox.expand(
          child: Loading(),
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
      ),
    );
  }
}
