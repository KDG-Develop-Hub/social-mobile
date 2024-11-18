import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/post/post_repository.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';
import 'package:social_mobile/infrastructure/firebase/firebase_instances.dart';

part 'post_data_source.g.dart';

@riverpod
class PostDataSource extends _$PostDataSource implements PostRepository {
  FirebaseFirestore get _firestore => ref.read(getFirestoreInstanceProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<void> createPost({required Post post}) async {
    await _firestore.collection('posts').doc(post.userId).set(post.toJson());
  }

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
