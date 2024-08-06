import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/components/post_card/post_menu_button.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';
import 'package:social_mobile/utils/helpers/share_post.dart';

enum PostMenuOption {
  edit,
  delete,
  reaction,
  comment,
  report,
  share,
}

class PostMenuBottomSheet extends StatelessWidget {
  const PostMenuBottomSheet({
    super.key,
    required this.post,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final translations = Translations.of(context).updateScreen.post.popUpMenu;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorTheme.surface,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 32,
            height: 2,
            decoration: BoxDecoration(
              color: colorTheme.onSurfaceVariant,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const Gap(14),
          Column(
            children: [
              PostMenuButton(
                onPressed: () {},
                icon: Assets.icons.comment,
                label: translations.comment,
              ),
              PostMenuButton(
                onPressed: () {},
                icon: Assets.icons.reaction,
                label: translations.reaction,
              ),
              PostMenuButton(
                onPressed: () {},
                icon: Assets.icons.bookmark,
                label: translations.bookMark,
              ),
              PostMenuButton(
                onPressed: () async {
                  context.pop();
                  await sharePost(post);
                },
                icon: Assets.icons.share,
                label: translations.share,
              ),
              PostMenuButton(
                onPressed: () {},
                icon: Assets.icons.trash,
                label: translations.delete,
                isRedText: true,
              ),
              PostMenuButton(
                onPressed: () {},
                icon: Assets.icons.flag,
                label: translations.report,
                isRedText: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
