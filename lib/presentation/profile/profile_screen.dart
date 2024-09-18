import 'package:flutter/material.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/presentation/profile/components/profile_header.dart';
import 'package:social_mobile/presentation/profile/components/profile_tab.dart';
import 'package:social_mobile/presentation/profile/components/profile_tabs_contents.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final translations = Translations.of(context);
    final profileScreenI18n = translations.profileScreen;
    final colorScheme = Theme.of(context).colorScheme;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const ProfileHeader(),
          toolbarHeight: 252,
          bottom: TabBar(
            padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
            indicatorColor: colorScheme.primary,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 8),
            labelPadding: const EdgeInsets.symmetric(horizontal: 4),
            tabs: [
              ProfileTab(tabName: profileScreenI18n.tabs.tweet),
              ProfileTab(tabName: profileScreenI18n.tabs.comment),
              ProfileTab(tabName: profileScreenI18n.tabs.media),
            ],
          ),
        ),
        body: const ProfileTabsContents(),
      ),
    );
  }
}
