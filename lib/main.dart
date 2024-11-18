import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/infrastructure/firebase/firebase_options_dev.dart'
    as dev;
import 'package:social_mobile/infrastructure/firebase/firebase_options_prod.dart'
    as prod;
import 'package:social_mobile/presentation/provider/shared_preferences_service.dart';
import 'package:social_mobile/presentation/social_mobile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  final options = const bool.fromEnvironment('flavor')
      ? prod.DefaultFirebaseOptions.currentPlatform
      : dev.DefaultFirebaseOptions.currentPlatform;

  await Firebase.initializeApp(options: options);
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
      child: TranslationProvider(child: const SocialMobile()),
    ),
  );
}
