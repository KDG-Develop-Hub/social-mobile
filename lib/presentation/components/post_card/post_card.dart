import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keyboard_emoji_picker/keyboard_emoji_picker.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/domain/reaction/reaction.dart';
import 'package:social_mobile/presentation/components/post_card/post_icon_button.dart';
import 'package:social_mobile/presentation/components/post_card/post_menu_bottom_sheet.dart';
import 'package:social_mobile/presentation/components/reaction_chip.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';
import 'package:social_mobile/utils/helpers/date_time_format.dart';

class PostCard extends HookConsumerWidget {
  const PostCard({
    super.key,
    required this.post,
    required this.onPostTap,
    required this.onReactionTap,
  });
  final Post post;
  final void Function() onPostTap;
  final void Function(Reaction reaction, {required bool hasReact})
      onReactionTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme;
    final isBookMarked = useState(false);
    final emojiShowing = useState(false);

    Future<void> pickEmoji() async {
      final hasEmojiKeyboard =
          await KeyboardEmojiPicker().checkHasEmojiKeyboard();
      if (hasEmojiKeyboard && emojiShowing.value) {
        await KeyboardEmojiPicker().closeEmojiKeyboard();
        emojiShowing.value = false;
      } else {
        emojiShowing.value = true;
        final selectedEmoji = await KeyboardEmojiPicker().pickEmoji();
        if (selectedEmoji != null) {
          final reaction = Reaction(
            id: selectedEmoji,
            postId: post.id,
            userIds: [],
            emoji: selectedEmoji,
          );
          onReactionTap(reaction, hasReact: true);
        }
        emojiShowing.value = false;
      }
    }

    Future<void> showPostMenuBottomSheet() async {
      await showModalBottomSheet<void>(
        context: context,
        useRootNavigator: true,
        builder: (_) => PostMenuBottomSheet(
          post: post,
          onReactionTap: () async {
            context.pop();
            await pickEmoji();
          },
        ),
      );
    }

    return GestureDetector(
      onTap: onPostTap,
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.all(16),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: post.userImageUrl,
                  width: 32,
                  height: 32,
                ),
              ),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          post.userName,
                          style: textStyle.labelLarge,
                        ),
                        const Gap(8),
                        Text(
                          formatDistanceFromNow(post.createdAt),
                          style: textStyle.labelMedium,
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 18,
                          height: 18,
                          child: IconButton(
                            icon: const Icon(Icons.more_vert),
                            iconSize: 18,
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            onPressed: () async {
                              await showPostMenuBottomSheet();
                            },
                          ),
                        ),
                      ],
                    ),
                    Text(
                      post.content,
                      style: textStyle.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                    const Gap(4),
                    if (post.reactions != null)
                      Wrap(
                        spacing: 16,
                        runSpacing: 8,
                        children: post.reactions!
                            .map(
                              (reaction) => ReactionChip(
                                reaction: reaction,
                                onEmojiTap: ({required bool onSelected}) {
                                  onReactionTap(
                                    reaction,
                                    hasReact: onSelected,
                                  );
                                },
                              ),
                            )
                            .toList(),
                      ),
                    const Gap(6),
                    Wrap(
                      spacing: 10,
                      children: [
                        PostIconButton(
                          icon: Assets.icons.comment,
                          onPressed: () {},
                        ),
                        PostIconButton(
                          icon: Assets.icons.reaction,
                          onPressed: () async {
                            await pickEmoji();
                          },
                        ),
                        PostIconButton(
                          icon: isBookMarked.value
                              ? Assets.icons.bookmarked
                              : Assets.icons.bookmark,
                          onPressed: () {
                            isBookMarked.value = !isBookMarked.value;
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
