import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/components/loading.dart';
import 'package:social_mobile/presentation/components/post_card/post_card.dart';
import 'package:social_mobile/presentation/home/provider/home_notifier.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeNotifierProvider);
    final translations = Translations.of(context);
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          translations.navigationBar.home,
          style: textStyle.headlineMedium,
        ),
        centerTitle: false,
      ),
      body: switch (state) {
        AsyncData(:final value) => RefreshIndicator(
            onRefresh: () async =>
                ref.read(homeNotifierProvider.notifier).refresh(),
            child: ListView.builder(
              itemCount: value.length,
              itemBuilder: (_, index) => PostCard(
                post: value[index],
                onPostTap: () {},
              ),
            ),
          ),
        AsyncLoading() => const Loading(),
        AsyncError(:final error, :final stackTrace) => Center(
            child: Text(
              '$error\n$stackTrace',
              style: textStyle.labelMedium,
            ),
          ),
        _ => const Loading(),
      },
    );
  }
}
