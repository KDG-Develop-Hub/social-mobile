import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/i18n/strings.g.dart';
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
    final i18nTabItem = Translations.of(context).navigationBar;

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
              context.go('/search');
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
              Assets.icons.updateIcon,
            ),
            label: i18nTabItem.update,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.icons.searchIcon,
            ),
            label: i18nTabItem.search,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.icons.profileIcon,
            ),
            label: i18nTabItem.profile,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.icons.friendsIcon,
            ),
            label: i18nTabItem.friends,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              Assets.icons.settingsIcon,
            ),
            label: i18nTabItem.settings,
          ),
        ],
      ),
      body: child,
    );
  }
}
