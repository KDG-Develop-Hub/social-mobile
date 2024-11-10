import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_mobile/utils/routes/routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定', style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Search Input
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: '設定を検索',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          // Settings List
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('プロフィール'),
                  subtitle: const Text('表示名、プロフィール画像、自己紹介などの編集'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    context.push(AppRoutes.settingsProfile);
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('アカウント'),
                  subtitle: const Text('個人情報、無効化など'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    context.push(AppRoutes.settingsAccount);
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.palette),
                  title: const Text('見た目'),
                  subtitle: const Text('テーマ、文字の大きさ'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    context.push(AppRoutes.settingsAppearance);
                  },
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.language),
                  title: const Text('言語'),
                  subtitle: const Text('アプリの言語設定'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    context.push(AppRoutes.settingsLanguage);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('アカウント設定'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('メールアドレス変更'),
            onTap: () {
              // メールアドレス変更画面への遷移
            },
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('パスワード変更'),
            onTap: () {
              // パスワード変更画面への遷移
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('アカウント削除'),
            onTap: () {
              // アカウント削除の確認ダイアログを表示
            },
          ),
        ],
      ),
    );
  }
}

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

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _displayNameController = TextEditingController();
  final _bioController = TextEditingController();
  final _locationController = TextEditingController();
  final _websiteController = TextEditingController();

  @override
  void dispose() {
    _displayNameController.dispose();
    _bioController.dispose();
    _locationController.dispose();
    _websiteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール設定'),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // TODO: プロフィール更新の処理
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('プロフィールを更新しました')),
                );
              }
            },
            child: const Text('保存'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              // プロフィール画像
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[200],
                      child: const Icon(Icons.person, size: 50),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 18,
                        child: IconButton(
                          icon: const Icon(Icons.camera_alt, size: 18),
                          color: Colors.white,
                          onPressed: () {
                            // TODO: 画像選択の処理
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // 表示名
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _displayNameController,
                  decoration: const InputDecoration(
                    labelText: '表示名',
                    hintText: '表示名を入力してください',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '表示名を入力してください';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16),
              // 自己紹介
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _bioController,
                  decoration: const InputDecoration(
                    labelText: '自己紹介',
                    hintText: '自己紹介を入力してください',
                  ),
                  maxLines: 3,
                ),
              ),
              const SizedBox(height: 16),
              // 場所
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(
                    labelText: '場所',
                    hintText: '場所を入力してください',
                    prefixIcon: Icon(Icons.location_on),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Webサイト
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  controller: _websiteController,
                  decoration: const InputDecoration(
                    labelText: 'Webサイト',
                    hintText: 'https://example.com',
                    prefixIcon: Icon(Icons.link),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
