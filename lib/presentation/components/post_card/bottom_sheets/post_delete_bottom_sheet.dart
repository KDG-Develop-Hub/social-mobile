import 'package:flutter/material.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/components/post_card/bottom_sheets/custom_bottom_sheet.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class PostDeleteBottomSheet extends StatelessWidget {
  const PostDeleteBottomSheet({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final translations = Translations.of(context);
    final bottomSheetI18n = translations.bottomSheet;
    final homeScreenI18n = translations.homeScreen;

    return CustomBottomSheet(
      iconPath: Assets.icons.trash,
      title: bottomSheetI18n.postDelete.title,
      explanation: bottomSheetI18n.postDelete.explanation,
      post: post,
      buttonText: homeScreenI18n.post.popUpMenu.delete,
      onPressedButton: () {},
    );
  }
}
