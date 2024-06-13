import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/presentation/components/bottom_navigation/provider/bottom_navigation_notifier.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';
import 'package:social_mobile/utils/theme/extension/theme_extension.dart';

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorTheme = theme.customThemeExtension.colorTheme;
    final index = ref.watch(bottomNavigationNotifierProvider);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: colorTheme.neutral[94],
        selectedIndex: index,
        indicatorColor: colorTheme.secondary[90],
        onDestinationSelected: (int newIndex) {
          ref
              .read(bottomNavigationNotifierProvider.notifier)
              .setIndex(newIndex);
          switch (newIndex) {
            case 0:
              context.go('/apude');
            case 1:
              context.go('/mitukeru');
            case 2:
              context.go('/kimitoha');
            case 3:
              context.go('/siriai');
            case 4:
              context.go('/sette');
          }
        },
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.images.apudeIcon,
            ),
            label: 'アプデ',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.images.mitukeruIcon,
            ),
            label: '見つける',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.images.kimitohaIcon,
            ),
            label: '君とは',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.images.siriaiIcon,
            ),
            label: '知り合い',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.images.setteIcon,
            ),
            label: 'せってー',
          ),
        ],
      ),
      body: child,
    );
  }
}
