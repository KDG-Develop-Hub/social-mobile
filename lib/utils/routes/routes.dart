import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/presentation/components/bottom_navigation/bottom_navigation.dart';
import 'package:social_mobile/presentation/friends/friends_screen.dart';
import 'package:social_mobile/presentation/home/apude_screen.dart';
import 'package:social_mobile/presentation/profile/profile_screen.dart';
import 'package:social_mobile/presentation/search/search_screen.dart';
import 'package:social_mobile/presentation/settings/settings_screen.dart';

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
          path: '/search',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SearchScreen(),
          ),
        ),
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ProfileScreen(),
          ),
        ),
        GoRoute(
          path: '/friends',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: FriendsScreen(),
          ),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) => const NoTransitionPage(
            child: SettingsScreen(),
          ),
        ),
      ],
    ),
  ],
);
