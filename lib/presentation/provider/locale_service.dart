import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/i18n/strings.g.dart';

part 'locale_service.g.dart';

@riverpod
class LocaleService extends _$LocaleService {
  @override
  AppLocale build() {
    return LocaleSettings.currentLocale;
  }

  // 新しいロケール設定
  Future<void> changeLocale(AppLocale newLocale) async {
    state = newLocale;
    LocaleSettings.setLocale(newLocale);
  }
}
