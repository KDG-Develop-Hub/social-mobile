import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/presentation/home/apude_screen.dart';
import 'package:social_mobile/presentation/home/kimitoha_screen.dart';
import 'package:social_mobile/presentation/home/mitukeru_screen.dart';
import 'package:social_mobile/presentation/home/sette_screen.dart';
import 'package:social_mobile/presentation/home/siriai_screen.dart';
import 'package:social_mobile/presentation/home/view_model/bottom_navigation_notifier.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';
import 'package:social_mobile/utils/theme/extension/theme_extension.dart';

final appRouter = GoRouter(
  initialLocation: '/apude',
  routes: [
    ShellRoute(
      navigatorKey: GlobalKey<NavigatorState>(),
      builder: (context, state, child) {
        return BottomNavigation(child: child);
      },
      routes: [
        GoRoute(
          path: '/apude',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ApudeScreen(),
          ),
        ),
        GoRoute(
          path: '/mitukeru',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: MitukeruScreen(),
          ),
        ),
        GoRoute(
          path: '/kimitoha',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: KimitohaScreen(),
          ),
        ),
        GoRoute(
          path: '/siriai',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SiriaiScreen(),
          ),
        ),
        GoRoute(
          path: '/sette',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SetteScreen(),
          ),
        ),
      ],
    ),
  ],
);

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
        indicatorColor: const Color.fromRGBO(209, 229, 184, 1),
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
