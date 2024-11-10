import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_emoji_picker/keyboard_emoji_picker.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/provider/locale_service.dart';
import 'package:social_mobile/utils/routes/app_router.dart';
import 'package:social_mobile/utils/theme/extension/theme_extension.dart';
import 'package:social_mobile/utils/theme/theme.dart';

class SocialMobile extends HookConsumerWidget {
  const SocialMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeServiceProvider);
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    final textTheme = createTextTheme(
      context,
      'Zen Maru Gothic',
      'Zen Maru Gothic',
    );
    final theme = MaterialTheme(textTheme);
    final goRouter = ref.watch(goRouterProvider);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref
              .read(localeServiceProvider.notifier)
              .changeLocaleToPreviousValue();
        });
        return null;
      },
      const [],
    );

    return KeyboardEmojiPickerWrapper(
      child: MaterialApp.router(
        // theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        theme: theme.light(),
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
      ),
    );
  }
}
