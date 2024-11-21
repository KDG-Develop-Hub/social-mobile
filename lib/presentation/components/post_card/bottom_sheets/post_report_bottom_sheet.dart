import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/presentation/components/post_card/bottom_sheets/custom_bottom_sheet.dart';
import 'package:social_mobile/presentation/components/post_card/simple_post_card.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class PostReportBottomSheet extends StatelessWidget {
  const PostReportBottomSheet({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final reportReasons = [
      'スパム',
      '誹謗中傷',
      '攻撃的、卑劣なコンテンツ',
      '誤解を生む情報',
      'プライベートな情報の提示',
    ];

    return CustomBottomSheet(
      content: Column(
        children: [
          SvgPicture.asset(
            Assets.icons.flag,
            height: 24,
            width: 24,
          ),
          const Gap(16),
          Text(
            '通報する理由を教えてください。',
            style: textTheme.headlineSmall,
          ),
          const Gap(16),
          SimplePostCard(post: post),
          const Gap(16),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: reportReasons.length,
              itemBuilder: (_, index) {
                final reportReason = reportReasons[index];
                return SizedBox(
                  height: 40,
                  child: RadioListTile(
                    visualDensity: const VisualDensity(horizontal: -4),
                    title: Text(
                      reportReason,
                      style: textTheme.bodyMedium,
                    ),
                    value: 0,
                    groupValue: 0,
                    onChanged: (value) {},
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
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
                  child: const Text('通報する'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
