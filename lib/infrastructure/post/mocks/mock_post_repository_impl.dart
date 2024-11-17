import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/post/post_repository.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';
import 'package:social_mobile/utils/helpers/random_string.dart';
import 'package:uuid/uuid.dart';

final mockPostRepositoryImplProvider = Provider(
  (ref) => MockPostRepositoryImpl(),
);

class MockPostRepositoryImpl implements PostRepository {
  final posts = List.generate(
    10,
    (index) {
      final postId = const Uuid().v4();
      return Post(
        id: postId,
        userId: index.toString(),
        userName: 'Omura Kenshin',
        userImageUrl: 'https://picsum.photos/200',
        content: generateRandomString(),
        createdAt: DateTime.now(),
        bookmarkedUserIds: [],
        reactions: List.generate(
          1,
          (index) => Reaction(
            id: '🤯',
            postId: postId,
            userIds: [index.toString()],
            emoji: '🤯',
          ),
        ),
      );
    },
  );

  @override
  Future<List<Post>> fetchPosts() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    return posts;
  }

  @override
  Future<List<Post>> editReaction({
    required bool hasReact,
    required Reaction reaction,
  }) async {
    final newPosts = posts.map((post) {
      final reactions = post.reactions;
      if (post.id == reaction.postId) {
        if (hasReact && !reactions!.any((e) => e.id == reaction.id)) {
          final addedReactions = [...reactions, reaction];
          return post.copyWith(
            reactions: addedReactions,
          );
        } else if (hasReact && reactions!.any((e) => e.id == reaction.id)) {
          final updatedReactions = reactions.map((e) {
            if (e.id == reaction.id) {
              return reaction;
            }
            return e;
          }).toList();
          return post.copyWith(
            reactions: updatedReactions,
          );
        }
      }
      return post;
    }).toList();

    return newPosts;
  }
}
