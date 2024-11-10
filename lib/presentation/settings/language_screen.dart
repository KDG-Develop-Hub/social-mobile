import 'package:flutter/material.dart';

class LanguageSettingsScreen extends StatelessWidget {
  const LanguageSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('言語設定'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('日本語'),
            trailing: const Icon(Icons.check),
            onTap: () {
              // 日本語を選択した時の処理
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('English'),
            onTap: () {
              // 英語を選択した時の処理
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('한국어'),
            onTap: () {
              // 韓国語を選択した時の処理
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('简体中文'),
            onTap: () {
              // 中国語（簡体字）を選択した時の処理
            },
          ),
        ],
      ),
    );
  }
}
