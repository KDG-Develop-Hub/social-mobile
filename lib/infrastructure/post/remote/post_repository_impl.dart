import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/post/post_repository.dart';

final postRepositoryImplProvider = Provider((ref) => PostRepositoryImpl());

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> fetchPosts() async {
    throw UnimplementedError();
  }
}
