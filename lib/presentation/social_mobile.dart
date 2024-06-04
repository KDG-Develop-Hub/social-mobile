import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/presentation/home/home_screen.dart';
import 'package:social_mobile/utils/theme/theme.dart';

class SocialMobile extends HookConsumerWidget {
  const SocialMobile({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
