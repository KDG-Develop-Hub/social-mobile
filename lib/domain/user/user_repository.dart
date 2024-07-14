import 'package:social_mobile/domain/user/user.dart';

// ignore: one_member_abstracts
abstract interface class UserRepository {
  Future<User> fetchUser();
}
