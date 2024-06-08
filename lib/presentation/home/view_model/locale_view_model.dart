import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/i18n/strings.g.dart';

part 'locale_view_model.g.dart';

@riverpod
class LocaleViewModel extends _$LocaleViewModel {
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
