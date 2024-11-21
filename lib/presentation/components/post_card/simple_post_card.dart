import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/utils/helpers/date_time_format.dart';

class SimplePostCard extends StatelessWidget {
  const SimplePostCard({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
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
    );
  }
}
