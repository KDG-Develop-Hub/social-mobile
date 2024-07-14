import 'package:flutter/material.dart';
import 'package:social_mobile/i18n/strings.g.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final translations = Translations.of(context);
    final profilePageI18n = translations.profilePage;

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
            elevation: 0,
          ),
          onPressed: () {},
          child: Text(profilePageI18n.profileHeader.buttonText),
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
}
