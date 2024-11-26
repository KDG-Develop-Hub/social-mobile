import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/post/post_repository.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';
import 'package:social_mobile/infrastructure/firebase/firebase_instances.dart';

part 'post_data_source.g.dart';

@Riverpod(keepAlive: true)
class PostDataSource extends _$PostDataSource implements PostRepository {
  FirebaseFirestore get _firestore => ref.read(getFirestoreInstanceProvider);

  final int _limit = 30;

  @override
  DocumentSnapshot<Map<String, dynamic>>? build() {
    return null;
  }

  @override
  Future<void> createPost({required Post post}) async {
    await _firestore.collection('posts').doc(post.userId).set(post.toJson());
  }

  @override
  Future<List<Post>> fetchPosts() async {
    final res = await _firestore
        .collection('posts')
        .orderBy('createdAt', descending: true)
        .limit(_limit)
        .get();
    state = res.docs[res.size - 1];
    return res.docs.map((doc) => Post.fromJson(doc.data())).toList();
  }

  @override
  Future<List<Post>> editReaction({
    required bool hasReact,
    required Reaction reaction,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> loadMorePosts() async {
    if (state == null) {
      return [];
    }
    final res = await _firestore
        .collection('posts')
        .orderBy('createdAt', descending: true)
        .startAfterDocument(state!)
        .limit(_limit)
        .get();
    res.docs.isEmpty ? state = null : state = res.docs[res.size - 1];
    return res.docs.map((doc) => Post.fromJson(doc.data())).toList();
  }
}
