import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    super.key,
    required this.tabName,
  });
  final String tabName;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.icons.messageCircleReply),
          const SizedBox(width: 4),
          Text(
            tabName,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
