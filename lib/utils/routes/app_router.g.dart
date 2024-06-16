// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $updateScreenRouteData,
      $searchScreenRouteData,
      $profileScreenRouteData,
      $friendsScreenRouteData,
      $settingsScreenRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: UpdateBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/update',
              factory: $UpdateScreenRouteDataExtension._fromState,
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

extension $UpdateScreenRouteDataExtension on UpdateScreenRouteData {
  static UpdateScreenRouteData _fromState(GoRouterState state) =>
      const UpdateScreenRouteData();

  String get location => GoRouteData.$location(
        '/update',
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

RouteBase get $updateScreenRouteData => GoRouteData.$route(
      path: '/update',
      factory: $UpdateScreenRouteDataExtension._fromState,
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

String _$goRouterHash() => r'aebf5957564f5d58fad8ee19a05669c2441bfbbd';

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
