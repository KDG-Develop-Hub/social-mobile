import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/firebase_options.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/social_mobile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ProviderScope(
      child: TranslationProvider(child: const SocialMobile()),
    ),
  );
}
