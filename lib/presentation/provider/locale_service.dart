import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/provider/shared_preferences_service.dart';

part 'locale_service.g.dart';

@riverpod
class LocaleService extends _$LocaleService {
  @override
  AppLocale build() {
    final userLocale = ref
        .read(sharedPreferencesServiceProvider.notifier)
        .getStringValue(key: 'languageCode');
    if (userLocale == 'en') {
      return AppLocale.en;
    } else if (userLocale == 'ja') {
      return AppLocale.ja;
    } else {
      final locale = WidgetsBinding.instance.platformDispatcher.locale;
      return locale.languageCode == 'en' ? AppLocale.en : AppLocale.ja;
    }
  }

  // 新しいロケール設定
  void changeLocale(AppLocale newLocale) {
    state = newLocale;
    ref
        .read(sharedPreferencesServiceProvider.notifier)
        .setStringValue(key: 'languageCode', value: newLocale.name);
    LocaleSettings.setLocale(newLocale);
  }

  void changeLocaleWithPreviousValue() {
    LocaleSettings.setLocale(state);
  }
}
