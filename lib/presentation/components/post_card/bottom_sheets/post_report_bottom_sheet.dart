import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:social_mobile/domain/post/post.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/components/post_card/bottom_sheets/custom_bottom_sheet.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

enum ReportReasons {
  spam,
  slander,
  offensiveAndLewdContent,
  misleadingInformation,
  exposureOfPrivateInformation,
}

class PostReportBottomSheet extends HookWidget {
  const PostReportBottomSheet({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final translations = Translations.of(context);
    final bottomSheetI18n = translations.bottomSheet;
    final homeScreenI18n = translations.homeScreen;
    final reportReasons = bottomSheetI18n.postReport.reportReasons;
    final groupValue = useState<ReportReasons?>(null);
    final reportReasonsMap = <ReportReasons, String>{
      ReportReasons.spam: reportReasons.spam,
      ReportReasons.slander: reportReasons.slander,
      ReportReasons.offensiveAndLewdContent:
          reportReasons.offensiveAndLewdContent,
      ReportReasons.misleadingInformation: reportReasons.misleadingInformation,
      ReportReasons.exposureOfPrivateInformation:
          reportReasons.exposureOfPrivateInformation,
    };

    return CustomBottomSheet(
      iconPath: Assets.icons.flag,
      title: bottomSheetI18n.postReport.title,
      post: post,
      content: SizedBox(
        height: 200,
        child: Column(
          children: reportReasonsMap.entries
              .map(
                (entry) => SizedBox(
                  height: 40,
                  child: RadioListTile(
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    title: Text(
                      entry.value,
                      style: textTheme.bodyMedium,
                    ),
                    value: entry.key,
                    groupValue: groupValue.value,
                    onChanged: (value) {
                      if (value != null) {
                        groupValue.value = value;
                      }
                    },
                  ),
                ),
              )
              .toList(),
        ),
      ),
      buttonText: homeScreenI18n.post.popUpMenu.report,
      onPressedButton: () {},
    );
  }
}
