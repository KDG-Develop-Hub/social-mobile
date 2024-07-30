import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/infrastructure/post/mocks/mock_post_repository_impl.dart';

part 'update_notifier.g.dart';

@riverpod
class UpdateNotifier extends _$UpdateNotifier {
  MockPostRepositoryImpl get mockPostRepositoryImpl =>
      ref.read(mockPostRepositoryImplProvider);

  @override
  Future<List<Post>> build() async {
    var posts = <Post>[];
    try {
      posts = await mockPostRepositoryImpl.fetchPosts();
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
    return posts;
  }

  Future<void> refresh() async {
    final posts = await build();
    state = AsyncData(posts);
  }
}
