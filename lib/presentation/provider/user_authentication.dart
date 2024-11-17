import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_mobile/domain/user/user.dart';
import 'package:social_mobile/utils/helpers/random_string.dart';

part 'user_authentication.g.dart';

@Riverpod(keepAlive: true)
User userAuthentication(UserAuthenticationRef ref) {
  return User(
    id: '1',
    name: 'Omura Kenshin',
    imageUrl: 'https://picsum.photos/200',
    bio: generateRandomString(),
    createdAt: DateTime.now(),
    emailAddress: '',
    displayName: 'Omura Kenshin',
    socialLinks: {},
  );
}
