import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/provider/shared_preferences_config.dart';
import 'package:social_mobile/presentation/provider/shared_preferences_service.dart';

part 'locale_service.g.dart';

@riverpod
class LocaleService extends _$LocaleService {
  SharedPreferencesService get sharedPreferencesService =>
      ref.read(sharedPreferencesServiceProvider.notifier);

  @override
  AppLocale build() {
    final userLocale = sharedPreferencesService.getStringValue(
      key: SharedPreferencesKey.languageCodeKey,
    );
    if (userLocale == SharedPreferencesValue.languageEnglishValue) {
      return AppLocale.en;
    } else if (userLocale == SharedPreferencesValue.languageJapaneseValue) {
      return AppLocale.ja;
    } else {
      final locale = WidgetsBinding.instance.platformDispatcher.locale;
      return locale.languageCode == SharedPreferencesValue.languageEnglishValue
          ? AppLocale.en
          : AppLocale.ja;
    }
  }

  // NOTE set new locale
  void changeLocale(AppLocale newLocale) {
    state = newLocale;
    sharedPreferencesService.setStringValue(
      key: SharedPreferencesKey.languageCodeKey,
      value: newLocale.name,
    );
    LocaleSettings.setLocale(newLocale);
  }

  void changeLocaleToPreviousValue() {
    LocaleSettings.setLocale(state);
  }
}
