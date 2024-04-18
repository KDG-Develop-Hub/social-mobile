import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/user/user_entity.dart';
import 'package:social_mobile/domain/user/user_repository.dart';

final userRepositoryImplProvider = Provider((ref) => UserRepositoryImpl());

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserEntity> fetch() async {
    throw UnimplementedError();
  }
}
