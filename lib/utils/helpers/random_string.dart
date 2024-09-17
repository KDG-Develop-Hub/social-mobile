import 'dart:math';

String generateRandomString() {
  const charset =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz';
  final random = Random.secure();
  final randomLength = random.nextInt(300 - 20 + 1) + 20;
  final randomStr = List.generate(
    randomLength,
    (_) => charset[random.nextInt(charset.length)],
  ).join();
  return randomStr;
}
