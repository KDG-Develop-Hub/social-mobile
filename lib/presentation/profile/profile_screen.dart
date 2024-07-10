import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_mobile/utils/gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: buildProfileHeader(context),
          toolbarHeight: 252,
          bottom: buildTabs(context),
        ),
        body: buildTabContent(context),
      ),
    );
  }

  Widget buildProfileHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR36cWx-s4D8DVd14R6CcqEa5WMed68mVEQ5w&s',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              height: 64,
              width: 64,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '大村健心',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'imeankenshin',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.primary,
            textStyle: Theme.of(context).textTheme.labelMedium,
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          onPressed: () {},
          child: const Text('プロフィールをいじる'),
        ),
        const SizedBox(height: 16),
        Text(
          '小さな頭に大きな夢を持っています。エンジニアを目指す現役高校生じゃーい！',
          style: Theme.of(context).textTheme.bodyLarge,
          softWrap: true,
          maxLines: 2,
        ),
      ],
    );
  }

  PreferredSizeWidget? buildTabs(BuildContext context) {
    return TabBar(
      padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
      indicatorColor: Theme.of(context).colorScheme.primary,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 8),
      tabs: <Widget>[
        tab(context: context, tabName: 'つぶやき'),
        tab(context: context, tabName: '返信'),
        tab(context: context, tabName: 'メディア'),
      ],
    );
  }

  Tab tab({
    required BuildContext context,
    required String tabName,
  }) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.icons.messageCircleReply),
          const SizedBox(width: 4),
          Text(
            tabName,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget buildTabContent(BuildContext context) {
    return const TabBarView(
      children: <Widget>[
        Center(
          child: Text('つぶやき'),
        ),
        Center(
          child: Text('返信'),
        ),
        Center(
          child: Text('メディア'),
        ),
      ],
    );
  }
}
