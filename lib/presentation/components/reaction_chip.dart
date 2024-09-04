import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';
import 'package:social_mobile/presentation/provider/user_authentication.dart';

class ReactionChip extends ConsumerWidget {
  const ReactionChip({
    super.key,
    required this.reaction,
    required this.onEmojiTap,
  });
  final Reaction reaction;
  final void Function({required bool onSelected}) onEmojiTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfo = ref.watch(userAuthenticationProvider);
    final selected = reaction.userIds.contains(userInfo.id);
    final count = reaction.userIds.length;
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ChoiceChip(
      label: Text(
        count.toString(),
        style: GoogleFonts.robotoMono.call().copyWith(
              color: colorTheme.onSurfaceVariant,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
      ),
      labelPadding: const EdgeInsets.only(left: 6, right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      selected: selected,
      onSelected: (value) {
        onEmojiTap(onSelected: value);
      },
      avatar: Text(
        reaction.emoji,
        style: textTheme.bodyLarge,
      ),
      showCheckmark: false,
    );
  }
}
