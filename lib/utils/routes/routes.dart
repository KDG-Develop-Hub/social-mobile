import 'package:go_router/go_router.dart';

class AppRoutes {
  static const home = '/home';
  static const search = '/search';
  static const profile = '/profile';
  static const friends = '/friends';
  static const settings = _settings;

  static const _settings = '/settings';
  static const _profile = 'profile';
  static const _account = 'account';
  static const _appearance = 'appearance';
  static const _language = 'language';

  // 設定画面のサブルート（完全なパス）
  static const settingsProfile = '$_settings/$_profile';
  static const settingsAccount = '$_settings/$_account';
  static const settingsAppearance = '$_settings/$_appearance';
  static const settingsLanguage = '$_settings/$_language';

  // 設定画面のサブルート（サブパスのみ）
  static const settingsProfilePath = _profile;
  static const settingsAccountPath = _account;
  static const settingsAppearancePath = _appearance;
  static const settingsLanguagePath = _language;
}
