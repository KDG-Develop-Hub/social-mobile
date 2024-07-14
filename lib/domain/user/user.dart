import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_mobile/domain/role/role.dart';
import 'package:social_mobile/utils/helpers/date_time_converter.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String imageUrl,
    required String bio,
    required List<Role> roles,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>_$UserFromJson(json);
}
