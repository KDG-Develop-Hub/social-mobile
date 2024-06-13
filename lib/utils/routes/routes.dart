import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/presentation/components/bottom_navigation/bottom_navigation.dart';
import 'package:social_mobile/presentation/home/apude_screen.dart';
import 'package:social_mobile/presentation/home/kimitoha_screen.dart';
import 'package:social_mobile/presentation/home/mitukeru_screen.dart';
import 'package:social_mobile/presentation/home/sette_screen.dart';
import 'package:social_mobile/presentation/home/siriai_screen.dart';

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
