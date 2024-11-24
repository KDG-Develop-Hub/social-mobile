import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/components/post_card/bottom_sheets/post_delete_bottom_sheet.dart';
import 'package:social_mobile/presentation/components/post_card/bottom_sheets/post_report_bottom_sheet.dart';
import 'package:social_mobile/presentation/components/post_card/post_menu_button.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';
import 'package:social_mobile/utils/helpers/share_service.dart';

class PostMenuBottomSheet extends StatelessWidget {
  const PostMenuBottomSheet({
    super.key,
    required this.post,
    required this.onReactionTap,
  });

  final Post post;
  final Future<void> Function() onReactionTap;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final translations = Translations.of(context).homeScreen.post.popUpMenu;

    Future<void> showPostDeleteBottomSheet() async {
      await showModalBottomSheet<void>(
        context: context,
        useRootNavigator: true,
        builder: (_) => PostDeleteBottomSheet(
          post: Post(
            id: '2',
            userId: '2',
            userName: 'imeankenshin',
            userImageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFkq7xtynSsGB6skS_2Cke661bJev3QkGWgA&s',
            bookmarkedUserIds: [],
            content: '外は天気良さげ🌞散歩しようかな？',
            createdAt: DateTime.now(),
          ),
        ),
      );
    }

    Future<void> showPostReportBottomSheet() async {
      await showModalBottomSheet<void>(
        context: context,
        useRootNavigator: true,
        builder: (_) => PostReportBottomSheet(
          post: Post(
            id: '2',
            userId: '2',
            userName: 'imeankenshin',
            userImageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFkq7xtynSsGB6skS_2Cke661bJev3QkGWgA&s',
            bookmarkedUserIds: [],
            content: '外は天気良さげ🌞散歩しようかな？',
            createdAt: DateTime.now(),
          ),
        ),
      );
    }

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
                onPressed: () async {
                  await onReactionTap();
                },
                icon: Assets.icons.reaction,
                label: translations.reaction,
              ),
              PostMenuButton(
                onPressed: () {},
                icon: Assets.icons.bookmark,
                label: translations.bookMark,
              ),
              PostMenuButton(
                onPressed: () {
                  context.pop();
                  ShareService.sharePost(post);
                },
                icon: Assets.icons.share,
                label: translations.share,
              ),
              PostMenuButton(
                onPressed: () async {
                  await showPostDeleteBottomSheet();
                },
                icon: Assets.icons.trash,
                label: translations.delete,
                isRedText: true,
              ),
              PostMenuButton(
                onPressed: () async {
                  await showPostReportBottomSheet();
                },
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
