import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/provider/locale_service.dart';
import 'package:social_mobile/utils/routes/app_router.dart';
import 'package:social_mobile/utils/theme/theme.dart';

class SocialMobile extends StatefulHookConsumerWidget {
  const SocialMobile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SocialMobileState();
}

class _SocialMobileState extends ConsumerState<SocialMobile> {
  // NOTE update locale with the locale of shared preferences
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(localeServiceProvider.notifier).changeLocaleWithPreviousValue();
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentLocale = ref.watch(localeServiceProvider);
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightTheme(),
      locale: currentLocale.flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerDelegate: goRouter.routerDelegate,
      routeInformationProvider: goRouter.routeInformationProvider,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
