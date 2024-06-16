import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/presentation/components/bottom_navigation.dart';
import 'package:social_mobile/presentation/friends/friends_screen.dart';
import 'package:social_mobile/presentation/profile/profile_screen.dart';
import 'package:social_mobile/presentation/search/search_screen.dart';
import 'package:social_mobile/presentation/settings/settings_screen.dart';
import 'package:social_mobile/presentation/update/update_screen.dart';
import 'package:social_mobile/utils/routes/routes.dart';

part 'app_router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final updateNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'update');
final searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'search');
final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');
final friendsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'friends');
final settingsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'settings');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: AppRoutes.update,
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) {
      return null;
    },
  );
}

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<UpdateBranch>(
      routes: [
        TypedGoRoute<UpdateScreenRouteData>(
          path: AppRoutes.update,
        ),
      ],
    ),
    TypedStatefulShellBranch<SearchBranch>(
      routes: [
        TypedGoRoute<SearchScreenRouteData>(
          path: AppRoutes.search,
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileScreenRouteData>(
          path: AppRoutes.profile,
        ),
      ],
    ),
    TypedStatefulShellBranch<FriendsBranch>(
      routes: [
        TypedGoRoute<FriendsScreenRouteData>(
          path: AppRoutes.friends,
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingsBranch>(
      routes: [
        TypedGoRoute<SettingsScreenRouteData>(
          path: AppRoutes.settings,
        ),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return BottomNavigation(navigationShell: navigationShell);
  }
}

class UpdateBranch extends StatefulShellBranchData {
  const UpdateBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = updateNavigatorKey;
}

class SearchBranch extends StatefulShellBranchData {
  const SearchBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = searchNavigatorKey;
}

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = profileNavigatorKey;
}

class FriendsBranch extends StatefulShellBranchData {
  const FriendsBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = friendsNavigatorKey;
}

class SettingsBranch extends StatefulShellBranchData {
  const SettingsBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = settingsNavigatorKey;
}

// TOPレベルのパスには、@TypedGoRouteをつける
@TypedGoRoute<UpdateScreenRouteData>(
  path: AppRoutes.update,
)
class UpdateScreenRouteData extends GoRouteData {
  const UpdateScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UpdateScreen();
  }
}

@TypedGoRoute<SearchScreenRouteData>(
  path: AppRoutes.search,
)
class SearchScreenRouteData extends GoRouteData {
  const SearchScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchScreen();
  }
}

@TypedGoRoute<ProfileScreenRouteData>(
  path: AppRoutes.profile,
)
class ProfileScreenRouteData extends GoRouteData {
  const ProfileScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}

@TypedGoRoute<FriendsScreenRouteData>(
  path: AppRoutes.friends,
)
class FriendsScreenRouteData extends GoRouteData {
  const FriendsScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FriendsScreen();
  }
}

@TypedGoRoute<SettingsScreenRouteData>(
  path: AppRoutes.settings,
)
class SettingsScreenRouteData extends GoRouteData {
  const SettingsScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsScreen();
  }
}
