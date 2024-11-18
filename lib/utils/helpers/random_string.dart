import 'dart:math';

import 'package:uuid/uuid.dart';

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

String returnUuidV4() {
  const uuid = Uuid();
  return uuid.v4();
}

String returnJpgFileName() => '${returnUuidV4()}.jpg';
