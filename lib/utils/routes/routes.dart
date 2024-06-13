import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/presentation/home/apude_screen.dart';
import 'package:social_mobile/presentation/home/kimitoha_screen.dart';
import 'package:social_mobile/presentation/home/mitukeru_screen.dart';
import 'package:social_mobile/presentation/home/sette_screen.dart';
import 'package:social_mobile/presentation/home/siriai_screen.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

final bottomNavigationIndexProvider = StateProvider<int>((ref) => 0);

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
    final index = ref.watch(bottomNavigationIndexProvider);
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: const Color.fromRGBO(240, 240, 236, 1),
        onTap: (int index) {
          ref.read(bottomNavigationIndexProvider.notifier).state = index;
          switch (index) {
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
        items: [
          BottomNavigationBarItem(
            icon: index == 0
                ? SvgPicture.asset(Assets.images.selectedApudeIcon)
                : SvgPicture.asset(Assets.images.apudeIcon),
            label: 'アプデ',
          ),
          BottomNavigationBarItem(
            icon: index == 1
                ? SvgPicture.asset(Assets.images.selectedMitukeruIcon)
                : SvgPicture.asset(Assets.images.mitukeruIcon),
            label: '見つける',
          ),
          BottomNavigationBarItem(
            icon: index == 2
                ? SvgPicture.asset(Assets.images.selectedKimitohaIcon)
                : SvgPicture.asset(Assets.images.kimitohaIcon),
            label: '君とは',
          ),
          BottomNavigationBarItem(
            icon: index == 3
                ? SvgPicture.asset(Assets.images.selectedSiriaiIcon)
                : SvgPicture.asset(Assets.images.siriaiIcon),
            label: '知り合い',
          ),
          BottomNavigationBarItem(
            icon: index == 4
                ? SvgPicture.asset(Assets.images.selectedSetteIcon)
                : SvgPicture.asset(Assets.images.setteIcon),
            label: 'せってー',
          ),
        ],
      ),
    );
  }
}
