import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/components/loading.dart';
import 'package:social_mobile/presentation/components/post_card/post_card.dart';
import 'package:social_mobile/presentation/home/home_screen_notifier.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';
import 'package:social_mobile/utils/routes/app_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenNotifierProvider);
    final notifier = ref.read(homeScreenNotifierProvider.notifier);
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
        AsyncData(:final value) => NotificationListener<ScrollEndNotification>(
            onNotification: (n) {
              notifier.loadingMore(n);
              return true;
            },
            child: RefreshIndicator(
              onRefresh: () async => notifier.refresh(),
              child: CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final post = value.posts[index];
                        return PostCard(
                          post: post,
                          onPostTap: () async {},
                          onReactionTap: (reaction, {required hasReact}) async {
                            await notifier.editReaction(
                              hasReact: hasReact,
                              reaction: reaction,
                            );
                          },
                        );
                      },
                      childCount: value.posts.length,
                    ),
                  ),
                  if (value.isLoadingMore)
                    const SliverToBoxAdapter(child: Loading()),
                ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await const PostScreenRouteData().push<void>(context);
        },
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        child: SvgPicture.asset(
          Assets.icons.feather,
        ),
      ),
    );
  }
}
