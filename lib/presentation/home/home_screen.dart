import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/home/view_model/home_view_model.dart';
import 'package:social_mobile/presentation/home/view_model/locale_view_model.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(homeViewModelProvider);
    final counterNotifier = ref.read(homeViewModelProvider.notifier);
    final translations = Translations.of(context);
    final localeNotifier = ref.read(localeViewModelProvider.notifier);
    final currentLanguage = translations.settings.language.currentLanguage;
    final settingLanguageButtonText =
        translations.socialMobilePage.changeLanguage.title;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(translations.settings.language.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              translations.socialMobilePage.pushExplanation.title,
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(translations.socialMobilePage.languageExplanation.title),
            const Padding(padding: EdgeInsets.all(30)),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  // NOTE change language
                  if (currentLanguage == 'English') {
                    localeNotifier.changeLocale(AppLocale.ja);
                  } else {
                    localeNotifier.changeLocale(AppLocale.en);
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(settingLanguageButtonText),
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
