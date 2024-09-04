import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/post/post_repository.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';
import 'package:social_mobile/domain/user/user.dart';
import 'package:social_mobile/infrastructure/post/mocks/mock_post_repository_impl.dart';
import 'package:social_mobile/presentation/provider/user_authentication.dart';

part 'update_notifier.g.dart';

@riverpod
class UpdateNotifier extends _$UpdateNotifier {
  PostRepository get postRepositoryImpl =>
      ref.read(mockPostRepositoryImplProvider);
  User get userAuthentication => ref.read(userAuthenticationProvider);

  @override
  Future<List<Post>> build() async {
    var posts = <Post>[];
    try {
      posts = await postRepositoryImpl.fetchPosts();
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
    return posts;
  }

  Future<void> refresh() async {
    final posts = await build();
    state = AsyncData(posts);
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
    final posts = await postRepositoryImpl.editReaction(
      hasReact: hasReact,
      reaction: updatedReaction,
    );
    state = AsyncData(posts);
  }
}
