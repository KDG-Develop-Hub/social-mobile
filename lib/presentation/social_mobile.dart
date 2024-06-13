import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/home/home_screen.dart';
import 'package:social_mobile/presentation/provider/locale_service.dart';
import 'package:social_mobile/utils/theme/theme.dart';

class SocialMobile extends HookConsumerWidget {
  const SocialMobile({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // NOTE for setting locale
    final currentLocale = ref.watch(localeServiceProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
      // NOTE for setting locale
      locale: currentLocale.flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
    );
  }
}
