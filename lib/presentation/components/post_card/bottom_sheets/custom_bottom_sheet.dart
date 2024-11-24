import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/components/post_card/contents_only_post_card.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.post,
    required this.iconPath,
    required this.title,
    required this.buttonText,
    required this.onPressedButton,
    this.content,
    this.explanation = '',
    this.buttomPadding = 0,
  });

  final Post post;
  final String iconPath;
  final String title;
  final String buttonText;
  final void Function()? onPressedButton;
  final Widget? content;
  final String explanation;
  final double buttomPadding;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final translations = Translations.of(context);
    final bottomSheetI18n = translations.bottomSheet;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
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
          SvgPicture.asset(
            iconPath,
            height: 24,
            width: 24,
          ),
          const Gap(16),
          Text(
            title,
            style: textTheme.headlineSmall,
          ),
          const Gap(16),
          if (explanation.isNotEmpty) ...[
            Text(
              explanation,
              style: textTheme.bodyLarge,
            ),
            const Gap(16),
          ],
          ContentsOnlyPostCard(post: post),
          if (content != null) ...[
            const Gap(16),
            content!,
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: colorTheme.primary,
                ),
                onPressed: () {},
                child: Text(bottomSheetI18n.cancelButton),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: colorTheme.error,
                ),
                onPressed: onPressedButton,
                child: Text(buttonText),
              ),
            ],
          ),
          Gap(buttomPadding),
        ],
      ),
    );
  }
}
