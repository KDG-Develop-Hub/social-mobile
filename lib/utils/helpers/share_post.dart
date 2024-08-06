import 'package:share_plus/share_plus.dart';
import 'package:social_mobile/domain/post/post.dart';

Future<void> sharePost(Post post) async {
  await Share.share(
    '${post.userName} posted "${post.content}".',
    subject: 'You can share the post!',
  );
}
