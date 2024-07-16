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
    final profilePageI18n = translations.profilePage;
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
            tabs: [
              ProfileTab(tabName: profilePageI18n.tabs.tweet),
              ProfileTab(tabName: profilePageI18n.tabs.comment),
              ProfileTab(tabName: profilePageI18n.tabs.media),
            ],
          ),
        ),
        body: const ProfileTabsContents(),
      ),
    );
  }
}
