import 'package:social_mobile/domain/user/user_entity.dart';

abstract interface class UserRepository {
  Future<UserEntity> fetch();
}