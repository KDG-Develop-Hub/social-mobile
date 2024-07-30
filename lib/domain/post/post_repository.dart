import 'package:social_mobile/domain/post/post.dart';

// ignore: one_member_abstracts
abstract interface class PostRepository {
  Future<List<Post>> fetchPosts();
}
