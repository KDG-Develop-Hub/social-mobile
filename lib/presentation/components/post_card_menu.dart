import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

enum PostMenuOption {
  edit,
  delete,
  reaction,
  comment,
  report,
  share,
}

class PostCardMenu extends StatelessWidget {
  const PostCardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final translations = Translations.of(context).updateScreen.post.popUpMenu;

    return SizedBox(
      width: 18,
      height: 18,
      child: PopupMenuButton<PostMenuOption>(
        color: colorTheme.onInverseSurface,
        icon: const Icon(Icons.more_vert),
        iconSize: 18,
        elevation: 0,
        constraints: const BoxConstraints(),
        padding: EdgeInsets.zero,
        itemBuilder: (_) {
          return [
            PopupMenuItem(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.comment),
                  const Gap(12),
                  Text(translations.comment),
                ],
              ),
            ),
            PopupMenuItem(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.reaction),
                  const Gap(12),
                  Text(translations.reaction),
                ],
              ),
            ),
            PopupMenuItem(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.bookmark),
                  const Gap(12),
                  Text(translations.bookMark),
                ],
              ),
            ),
            PopupMenuItem(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.share),
                  const Gap(12),
                  Text(translations.share),
                ],
              ),
            ),
            PopupMenuItem(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.trash),
                  const Gap(12),
                  Text(
                    translations.delete,
                    style:
                        textStyle.labelLarge?.copyWith(color: colorTheme.error),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              onTap: () {},
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icons.flag),
                  const Gap(12),
                  Text(
                    translations.report,
                    style:
                        textStyle.labelLarge?.copyWith(color: colorTheme.error),
                  ),
                ],
              ),
            ),
          ];
        },
      ),
    );
  }
}
