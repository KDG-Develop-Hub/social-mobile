import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/user/user_entity.dart';
import 'package:social_mobile/domain/user/user_repository.dart';

final mockUserRepositoryProvider = Provider((ref) => MockUserRepository());

class MockUserRepository implements UserRepository {
  final id = 'qwer';
  final name = 'John Doe';

  @override
  Future<UserEntity> fetch() async {
    Future.delayed(const Duration(seconds: 3));
    return UserEntity(
      id: id,
      name: name,
    );
  }
}