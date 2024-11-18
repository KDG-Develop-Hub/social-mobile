import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/user/user.dart';
import 'package:social_mobile/domain/user/user_repository.dart';
import 'package:social_mobile/utils/helpers/random_string.dart';

final mockUserRepositoryImplProvider = Provider(
  (ref) => MockUserRepositoryImpl(),
);

class MockUserRepositoryImpl implements UserRepository {
  final user = User(
    id: '1',
    name: 'Omura Kenshin',
    imageUrl: 'https://picsum.photos/200',
    bio: generateRandomString(),
    createdAt: DateTime.now(),
    emailAddress: '',
    displayName: 'Omura Kenshin',
    socialLinks: {},
  );

  @override
  Future<User> fetchUser() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    return user;
  }
}
