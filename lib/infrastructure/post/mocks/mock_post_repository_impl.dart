import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/post/post_repository.dart';
import 'package:social_mobile/utils/helpers/random_string.dart';

final mockPostRepositoryImplProvider = Provider(
  (ref) => MockPostRepositoryImpl(),
);

class MockPostRepositoryImpl implements PostRepository {
  final post = Post(
    id: '1',
    userId: '1',
    userName: 'Omura Kenshin',
    userImageUrl: 'https://picsum.photos/200',
    content: generateRandomString(),
    createdAt: DateTime.now(),
  );

  @override
  Future<List<Post>> fetchPosts() async {
    final posts = List.generate(10, (index) => post);
    await Future<void>.delayed(const Duration(seconds: 3));
    return posts;
  }
}
