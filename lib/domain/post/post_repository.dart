import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';

// ignore: one_member_abstracts
abstract interface class PostRepository {
  Future<List<Post>> fetchPosts();
  Future<List<Post>> editReaction({
    required bool hasReact, /// リアクションを追加するか削除するか
    required Reaction reaction,
  });
}
