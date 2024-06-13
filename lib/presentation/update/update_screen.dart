import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/provider/locale_service.dart';
import 'package:social_mobile/presentation/update/provider/update_notifier.dart';

class UpdateScreen extends ConsumerWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(updateNotifierProvider);
    final counterNotifier = ref.read(updateNotifierProvider.notifier);
    final localeState = ref.watch(localeServiceProvider);
    final translations = Translations.of(context);
    final socialMobilePageI18n = translations.socialMobilePage;
    final settingLanguageTitle = socialMobilePageI18n.changeLanguage;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              socialMobilePageI18n.pushExplanation,
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(socialMobilePageI18n.languageExplanation),
            const Padding(padding: EdgeInsets.all(30)),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // NOTE change language
                  if (localeState == AppLocale.en) {
                    ref
                        .read(localeServiceProvider.notifier)
                        .changeLocale(AppLocale.ja);
                  } else {
                    ref
                        .read(localeServiceProvider.notifier)
                        .changeLocale(AppLocale.en);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(settingLanguageTitle),
                    const Spacer(),
                    const Icon(Icons.language),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterNotifier.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
