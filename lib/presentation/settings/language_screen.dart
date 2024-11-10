import 'package:flutter/material.dart';

class LanguageSettingsScreen extends StatefulWidget {
  const LanguageSettingsScreen({super.key});

  @override
  State<LanguageSettingsScreen> createState() => _LanguageSettingsScreenState();
}

class _LanguageSettingsScreenState extends State<LanguageSettingsScreen> {
  Language _selectedLanguage = Language.japanese;

  final List<LanguageOption> languageOptions = [
    const LanguageOption(displayName: '日本語', language: Language.japanese),
    const LanguageOption(displayName: 'English', language: Language.english),
  ];

  Widget _buildLanguageListTile(LanguageOption option) {
    return Column(
      children: [
        ListTile(
          title: Text(option.displayName),
          trailing: _selectedLanguage == option.language
              ? const Icon(Icons.check)
              : null,
          onTap: () {
            setState(() {
              _selectedLanguage = option.language;
            });
            // TODO: 言語変更の処理を実装
          },
        ),
        const Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '言語設定',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(height: 20),
          ...languageOptions.map(_buildLanguageListTile),
        ],
      ),
    );
  }
}

enum Language {
  english('en'),
  japanese('ja');

  final String code;
  const Language(this.code);
}

class LanguageOption {
  const LanguageOption({
    required this.displayName,
    required this.language,
  });
  final String displayName;
  final Language language;
}
