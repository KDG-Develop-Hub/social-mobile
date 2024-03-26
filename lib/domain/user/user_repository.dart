import 'package:social_mobile/domain/user/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> fetch();
}