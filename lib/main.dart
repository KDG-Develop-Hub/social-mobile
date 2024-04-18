import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/presentation/social_mobile.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SocialMobile(),
    ),
  );
}
