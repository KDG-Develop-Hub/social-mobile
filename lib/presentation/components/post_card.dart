import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_mobile/domain/post/post.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.post,
    required this.onPostTap,
  });
  final Post post;
  final void Function() onPostTap;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

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
                        SizedBox(
                          width: 18,
                          height: 18,
                          child: IconButton(
                            icon: const Icon(Icons.more_vert),
                            iconSize: 18,
                            constraints: const BoxConstraints(),
                            padding: EdgeInsets.zero,
                            onPressed: () {},
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
