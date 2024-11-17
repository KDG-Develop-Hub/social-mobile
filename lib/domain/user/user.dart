import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_mobile/utils/helpers/date_time_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String displayName,
    required String imageUrl,
    required String bio,
    required String emailAddress,
    required Map<SocialLinkType, Uri> socialLinks,
    List<String>? bookmarkPostIds,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

enum SocialLinkType {
  twitter,
  instagram,
  github,
  other,
}
