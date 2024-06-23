import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({
    super.key,
    required this.navigationShell,
  });
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18nTabItem = Translations.of(context).navigationBar;

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (int index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(Assets.icons.updateIcon),
            label: i18nTabItem.update,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(Assets.icons.searchIcon),
            label: i18nTabItem.search,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(Assets.icons.profileIcon),
            label: i18nTabItem.profile,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(Assets.icons.friendsIcon),
            label: i18nTabItem.friends,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(Assets.icons.settingsIcon),
            label: i18nTabItem.settings,
          ),
        ],
      ),
      body: navigationShell,
    );
  }
}
