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
  final List<MapEntry<TextEditingController, TextEditingController>>
      _snsControllers = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController.text = '山田太郎';
    _displayNameController.text = '山田太郎';
    _bioController.text = 'こんにちは。山田太郎です。';
    _locationController.text = '東京都';
    _updateControllersFromMap({
      "Twitter": "https://twitter.com/username",
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _displayNameController.dispose();
    _bioController.dispose();
    _locationController.dispose();
    _websiteController.dispose();
    _snsControllers.forEach((key) {
      key.key.dispose();
      key.value.dispose();
    });

    super.dispose();
  }

// SnsFieldWidgetのプロパティ
  final Map<String, String> snsMap = {};

// Stateクラスで実装
  void _updateControllersFromMap(Map<String, String> newSnsMap) {
    // 既存のコントローラーをクリア
    for (final controller in _snsControllers) {
      controller.key.dispose();
      controller.value.dispose();
    }
    _snsControllers.clear();

    // 新しいMapの値からコントローラーを生成
    newSnsMap.forEach((key, value) {
      _snsControllers.add(
        MapEntry(
          TextEditingController(text: key),
          TextEditingController(text: value),
        ),
      );
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'プロフィール',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const SizedBox(height: 20),
                      // プロフィール画像 (既存のまま)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'プロフィール画像',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(width: 16), // 間隔を調整
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.grey[200],
                                child: const Icon(Icons.person, size: 50),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: CircleAvatar(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  radius: 18,
                                  child: IconButton(
                                    icon:
                                        const Icon(Icons.camera_alt, size: 18),
                                    color: Colors.white,
                                    onPressed: () {
                                      // TODO: 画像選択の処理
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFieldWidget(
                        labelText: '表示名',
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
                        maxLength: 200,
                        maxLines: 5,
                        controller: _bioController,
                      ),
                      SnsFieldWidget(
                        onChanged: _updateControllersFromMap,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom:
                  MediaQuery.of(context).viewInsets.bottom + 16, // キーボードの高さを考慮
              top: 16,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.1),
              //     blurRadius: 4,
              //     offset: const Offset(0, -2),
              //   ),
              // ],
            ),
            child: SafeArea(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    // キーボードを閉じる
                    FocusScope.of(context).unfocus();

                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('保存しました'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  child: const Text('保存'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SnsFieldWidget extends StatefulWidget {
  const SnsFieldWidget({super.key, required this.onChanged});
  final void Function(Map<String, String> snsMap) onChanged;

  @override
  State<SnsFieldWidget> createState() => _SnsFieldWidgetState();
}

class _SnsFieldWidgetState extends State<SnsFieldWidget> {
  final List<MapEntry<TextEditingController, TextEditingController>>
      _controllers = [];

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.key.dispose();
      controller.value.dispose();
    }
    super.dispose();
  }

  void _addNewField() {
    setState(() {
      _controllers.add(
        MapEntry(TextEditingController(), TextEditingController()),
      );
    });
    _updateParent();
  }

  void _removeField(int index) {
    setState(() {
      _controllers[index].key.dispose();
      _controllers[index].value.dispose();
      _controllers.removeAt(index);
    });
    _updateParent();
  }

  void _updateParent() {
    final snsMap = <String, String>{};
    for (final controller in _controllers) {
      if (controller.key.text.isNotEmpty && controller.value.text.isNotEmpty) {
        snsMap[controller.key.text] = controller.value.text;
      }
    }
    widget.onChanged(snsMap);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // 左寄せに設定
        children: [
          ..._controllers.asMap().entries.map((entry) {
            final index = entry.key;
            final controllers = entry.value;
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextFieldWidget(
                      labelText: 'SNS名',
                      controller: controllers.key,
                      onChanged: (_) => _updateParent(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFieldWidget(
                      labelText: 'ID',
                      controller: controllers.value,
                      onChanged: (_) => _updateParent(),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () => _removeField(index),
                  ),
                ],
              ),
            );
          }),
          ElevatedButton.icon(
            onPressed: _addNewField,
            icon: const Icon(Icons.add),
            label: const Text('SNSを追加'),
          ),
        ],
      ),
    );
  }
}
