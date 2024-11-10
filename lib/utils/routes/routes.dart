import 'package:go_router/go_router.dart';

class AppRoutes {
  static const home = '/home';
  static const search = '/search';
  static const profile = '/profile';
  static const friends = '/friends';
  static const settings = _settings;

  static const _settings = '/settings';
  static const _account = 'account';
  static const _language = 'language';
  static const _appearance = 'appearance';
  static const _profile = 'profile';

  // 設定画面のサブルート（完全なパス）
  static const settingsAccount = '$_settings/$_account';
  static const settingsLanguage = '$_settings/$_language';
  static const settingsAppearance = '$_settings/$_appearance';
  static const settingsProfile = '$_settings/$_profile';

  // 設定画面のサブルート（サブパスのみ）
  static const settingsAccountPath = _account;
  static const settingsLanguagePath = _language;
  static const settingsAppearancePath = _appearance;
  static const settingsProfilePath = _profile;

  // static String getLastPathSegment(String path) {
  //   return path.split('/').lastWhere((element) => element.isNotEmpty);
  // }
  //
  // // サブルートの変換
  // static List<TypedGoRoute<T>> createSettingsRoutes<T extends GoRouteData>(
  //   List<TypedGoRoute<GoRouteData>> list, {
  //   required List<TypedGoRoute<T>> routes,
  // }) {
  //   return routes.map((route) {
  //     return TypedGoRoute<T>(
  //       path: _getLastPathSegment(route.path),
  //       routes: route.routes,
  //       name: route.name,
  //     );
  //   }).toList();
  // }
}
