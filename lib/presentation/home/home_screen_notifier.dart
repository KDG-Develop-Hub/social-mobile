import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';
import 'package:social_mobile/domain/user/user.dart';
import 'package:social_mobile/infrastructure/post/mocks/mock_post_data_source.dart';
import 'package:social_mobile/infrastructure/post/remote/post_data_source.dart';
import 'package:social_mobile/presentation/home/home_screen_state.dart';
import 'package:social_mobile/presentation/provider/user_authentication.dart';

part 'home_screen_notifier.g.dart';

@riverpod
class HomeScreenNotifier extends _$HomeScreenNotifier {
  MockPostDataSource get mockPostDataSource =>
      ref.read(mockPostDataSourceProvider.notifier);
  PostDataSource get postDataSource =>
      ref.read(postDataSourceProvider.notifier);
  User get userAuthentication => ref.read(userAuthenticationProvider);

  @override
  Future<HomeScreenState> build() async {
    final posts = await postDataSource.fetchPosts();
    return HomeScreenState(posts: posts);
  }

  Future<void> refresh() async {
    await _fetchPosts();
  }

  Future<void> editReaction({
    required bool hasReact,
    required Reaction reaction,
  }) async {
    final updatedReaction = reaction.copyWith(
      userIds: hasReact
          ? [...reaction.userIds, userAuthentication.id]
          : reaction.userIds
              .where((id) => id != userAuthentication.id)
              .toList(),
    );
    final posts = await mockPostDataSource.editReaction(
      hasReact: hasReact,
      reaction: updatedReaction,
    );
    state = AsyncData(state.requireValue.copyWith(posts: posts));
  }

  Future<void> loadingMore(ScrollEndNotification notification) async {
    if (notification.metrics.extentAfter != 0 ||
        state.requireValue.isLoadingMore) {
      return;
    }
    state = AsyncValue.data(
      state.requireValue.copyWith(isLoadingMore: true),
    );
    try {
      final posts = await postDataSource.loadMorePosts();
      state = AsyncData(
        state.requireValue.copyWith(posts: state.requireValue.posts + posts),
      );
    } on Exception catch (e) {
      debugPrint(e.toString());
    } finally {
      state = AsyncData(state.requireValue.copyWith(isLoadingMore: false));
    }
  }

  Future<void> _fetchPosts() async {
    try {
      final posts = await postDataSource.fetchPosts();
      state = AsyncData(state.requireValue.copyWith(posts: posts));
      return;
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
    state = const AsyncData(HomeScreenState(posts: []));
    return;
  }
}
