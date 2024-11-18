import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';
import 'package:social_mobile/utils/helpers/date_time_converter.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
abstract class Post with _$Post {
  const factory Post({
    required String id,
    required String userId,
    required String userName,
    required String userImageUrl,
    required String content,
    required List<String> bookmarkedUserIds,
    List<Reaction>? reactions,
    List<String>? imageUrls,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() DateTime? updatedAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
