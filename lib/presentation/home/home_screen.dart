import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/home/view_model/home_view_model.dart';
import 'package:social_mobile/presentation/provider/locale_service.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(homeViewModelProvider);
    final counterNotifier = ref.read(homeViewModelProvider.notifier);
    final localeState = ref.watch(localeServiceProvider);
    final translations = Translations.of(context);
    final socialMobilePageI18n = translations.socialMobilePage;
    final settingLanguageTitle = socialMobilePageI18n.changeLanguage.title;

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
              socialMobilePageI18n.pushExplanation.title,
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(socialMobilePageI18n.languageExplanation.title),
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
