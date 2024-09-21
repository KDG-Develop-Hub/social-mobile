// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $homeScreenRouteData,
      $searchScreenRouteData,
      $profileScreenRouteData,
      $friendsScreenRouteData,
      $settingsScreenRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeScreenRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SearchBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/search',
              factory: $SearchScreenRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ProfileBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/profile',
              factory: $ProfileScreenRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: FriendsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/friends',
              factory: $FriendsScreenRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SettingsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsScreenRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomeScreenRouteDataExtension on HomeScreenRouteData {
  static HomeScreenRouteData _fromState(GoRouterState state) =>
      const HomeScreenRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchScreenRouteDataExtension on SearchScreenRouteData {
  static SearchScreenRouteData _fromState(GoRouterState state) =>
      const SearchScreenRouteData();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileScreenRouteDataExtension on ProfileScreenRouteData {
  static ProfileScreenRouteData _fromState(GoRouterState state) =>
      const ProfileScreenRouteData();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FriendsScreenRouteDataExtension on FriendsScreenRouteData {
  static FriendsScreenRouteData _fromState(GoRouterState state) =>
      const FriendsScreenRouteData();

  String get location => GoRouteData.$location(
        '/friends',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsScreenRouteDataExtension on SettingsScreenRouteData {
  static SettingsScreenRouteData _fromState(GoRouterState state) =>
      const SettingsScreenRouteData();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeScreenRouteData => GoRouteData.$route(
      path: '/home',
      factory: $HomeScreenRouteDataExtension._fromState,
    );

RouteBase get $searchScreenRouteData => GoRouteData.$route(
      path: '/search',
      factory: $SearchScreenRouteDataExtension._fromState,
    );

RouteBase get $profileScreenRouteData => GoRouteData.$route(
      path: '/profile',
      factory: $ProfileScreenRouteDataExtension._fromState,
    );

RouteBase get $friendsScreenRouteData => GoRouteData.$route(
      path: '/friends',
      factory: $FriendsScreenRouteDataExtension._fromState,
    );

RouteBase get $settingsScreenRouteData => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsScreenRouteDataExtension._fromState,
    );

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'1a6ef5bd17d9438d8561ee8a5363a4ca6f1a5a96';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = Provider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
