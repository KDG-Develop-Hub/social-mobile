import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/presentation/components/post_card_menu.dart';
import 'package:social_mobile/presentation/components/post_icon_button.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class PostCard extends HookConsumerWidget {
  const PostCard({
    super.key,
    required this.post,
    required this.onPostTap,
  });
  final Post post;
  final void Function() onPostTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme;
    final isBookMarked = useState(false);

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
                          '今日の12時34分',
                          style: textStyle.labelMedium,
                        ),
                        const Spacer(),
                        const PostCardMenu(),
                      ],
                    ),
                    Text(
                      post.content,
                      style: textStyle.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
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
                          onPressed: () {},
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
