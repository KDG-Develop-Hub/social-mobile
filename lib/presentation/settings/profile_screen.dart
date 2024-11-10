import 'package:flutter/material.dart';
import 'package:social_mobile/presentation/components/text_field_widget.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _bioController = TextEditingController();
  final _locationController = TextEditingController();
  final _websiteController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController.text = '山田太郎';
    _displayNameController.text = '山田太郎';
    _bioController.text = 'こんにちは。山田太郎です。';
    _locationController.text = '東京都';
  }

  @override
  void dispose() {
    _nameController.dispose();
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
              // プロフィール画像 (既存のまま)
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
              TextFieldWidget(
                labelText: '表示名',
                helperText: '表示名を入力してください',
                maxLength: 32,
                controller: _displayNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '表示名を入力してください';
                  }
                  return null;
                },
              ),
              TextFieldWidget(
                labelText: '自己紹介',
                helperText: '自己紹介を入力してください',
                maxLength: 200,
                controller: _bioController,
              ),
              TextFieldWidget(
                labelText: '場所',
                helperText: '場所を入力してください',
                maxLength: 50,
                controller: _locationController,
                prefixIcon: const Icon(Icons.location_on),
              ),
              TextFieldWidget(
                labelText: 'Webサイト',
                helperText: 'https://example.com',
                maxLength: 100,
                controller: _websiteController,
                prefixIcon: const Icon(Icons.link),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
