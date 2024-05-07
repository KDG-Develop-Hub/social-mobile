import 'package:social_mobile/domain/user/user_entity.dart';

// ignore: one_member_abstracts
abstract interface class UserRepository {
  Future<UserEntity> fetch();
}
