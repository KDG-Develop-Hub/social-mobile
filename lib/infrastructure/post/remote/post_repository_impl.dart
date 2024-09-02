import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/post/post_repository.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';

final postRepositoryImplProvider = Provider((ref) => PostRepositoryImpl());

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> fetchPosts() async {
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> editReaction({
    required bool hasReact,
    required Reaction reaction,
  }) async {
    throw UnimplementedError();
  }
}
