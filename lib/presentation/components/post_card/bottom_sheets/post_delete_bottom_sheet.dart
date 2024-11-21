import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/presentation/components/post_card/bottom_sheets/custom_bottom_sheet.dart';
import 'package:social_mobile/presentation/components/post_card/simple_post_card.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class PostDeleteBottomSheet extends StatelessWidget {
  const PostDeleteBottomSheet({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;

    return CustomBottomSheet(
      content: Column(
        children: [
          SvgPicture.asset(
            Assets.icons.trash,
            height: 24,
            width: 24,
          ),
          const Gap(16),
          Text(
            'このつぶやきを削除しますか？',
            style: textTheme.headlineSmall,
          ),
          const Gap(16),
          const Text('削除されたつぶやきは、30日後に完全に削除されます。'),
          const Gap(16),
          SimplePostCard(post: post),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 156),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: colorTheme.primary,
                  ),
                  onPressed: () {},
                  child: const Text('やっぱやめる'),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: colorTheme.error,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text('削除する'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
