import 'package:flutter/material.dart';

class AppearanceSettingsScreen extends StatefulWidget {
  const AppearanceSettingsScreen({super.key});

  @override
  State<AppearanceSettingsScreen> createState() =>
      _AppearanceSettingsScreenState();
}

class _AppearanceSettingsScreenState extends State<AppearanceSettingsScreen> {
  bool _isDarkMode = false;
  double _fontSize = 16.0;
  bool _isHighContrast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('見た目'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'テーマ設定',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          SwitchListTile(
            title: const Text('ダークモード'),
            subtitle: const Text('暗いテーマに切り替えます'),
            value: _isDarkMode,
            onChanged: (bool value) {
              setState(() {
                _isDarkMode = value;
              });
              // TODO: テーマの変更を実装
            },
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('ハイコントラストモード'),
            subtitle: const Text('コントラストを強調します'),
            value: _isHighContrast,
            onChanged: (bool value) {
              setState(() {
                _isHighContrast = value;
              });
              // TODO: コントラスト設定の変更を実装
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '文字サイズ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    const Text('A', style: TextStyle(fontSize: 14)),
                    Expanded(
                      child: Slider(
                        value: _fontSize,
                        min: 12.0,
                        max: 24.0,
                        divisions: 12,
                        label: _fontSize.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _fontSize = value;
                          });
                          // TODO: フォントサイズの変更を実装
                        },
                      ),
                    ),
                    const Text('A', style: TextStyle(fontSize: 24)),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('アニメーション'),
            subtitle: const Text('アニメーション効果の設定'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // TODO: アニメーション設定画面への遷移
            },
          ),
        ],
      ),
    );
  }
}
