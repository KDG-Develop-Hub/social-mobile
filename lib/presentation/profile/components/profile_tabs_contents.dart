import 'package:flutter/material.dart';

class ProfileTabsContents extends StatelessWidget {
  const ProfileTabsContents({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
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
