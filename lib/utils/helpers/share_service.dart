import 'package:share_plus/share_plus.dart';
import 'package:social_mobile/domain/post/post.dart';

class ShareService {
  // NOTE prevent instantiation
  ShareService._();

  static Future<void> sharePost(Post post) async {
    await Share.share(
      '${post.userName} posted "${post.content}".',
      subject: 'Wherever, the post will take us',
    );
  }
}
