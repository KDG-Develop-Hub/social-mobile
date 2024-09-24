import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/role/role.dart';
import 'package:social_mobile/domain/user/user.dart';
import 'package:social_mobile/utils/helpers/random_string.dart';
import 'package:uuid/uuid.dart';

part 'user_authentication.g.dart';

@Riverpod(keepAlive: true)
User userAuthentication(UserAuthenticationRef ref) {
  return User(
    id: const Uuid().v4(),
    name: 'Omura Kenshin',
    imageUrl: 'https://picsum.photos/200',
    bio: generateRandomString(),
    roles: [
      const Role(
        id: '1',
        name: 'Admin',
      ),
    ],
    createdAt: DateTime.now(),
  );
}
