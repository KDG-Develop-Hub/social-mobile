import 'dart:math';

import 'package:flutter/material.dart';

class AppearanceSettingsScreen extends StatefulWidget {
  const AppearanceSettingsScreen({super.key});

  @override
  State<AppearanceSettingsScreen> createState() =>
      _AppearanceSettingsScreenState();
}

class _AppearanceSettingsScreenState extends State<AppearanceSettingsScreen> {
  ThemeMode _themeMode = ThemeMode.system;
  double _fontSize = 16;
  double _postSpacing = 8;

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
              '見た目',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'テーマ設定',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          ThemeSelector(
            currentThemeMode: ThemeMode.system,
            onChanged: (ThemeMode newMode) {
              // テーマの変更処理
              setState(() {
                _themeMode = newMode;
              });
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
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
                        min: 12,
                        max: 24,
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
                const SizedBox(height: 16),
                const Text(
                  '投稿間隔',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    const Text('小', style: TextStyle(fontSize: 14)),
                    Expanded(
                      child: Slider(
                        value: _postSpacing,
                        min: 4,
                        max: 32,
                        divisions: 12,
                        label: '${_postSpacing.round()}px',
                        onChanged: (double value) {
                          setState(() {
                            _postSpacing = value;
                          });
                        },
                      ),
                    ),
                    const Text('大', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ThemeSelector extends StatefulWidget {
  const ThemeSelector({
    super.key,
    required this.onChanged,
    required this.currentThemeMode,
  });
  final void Function(ThemeMode) onChanged;
  final ThemeMode currentThemeMode;

  @override
  State<ThemeSelector> createState() => _ThemeSelectorState();
}

class _ThemeSelectorState extends State<ThemeSelector> {
  late ThemeMode _selectedThemeMode;

  @override
  void initState() {
    super.initState();
    _selectedThemeMode = widget.currentThemeMode;
  }

  Widget _buildThemeCircle(
    ThemeMode mode,
    Color color,
    String label,
    Color? halfColor,
  ) {
    final isSelected = _selectedThemeMode == mode;
    final borderColor =
        isSelected ? Theme.of(context).primaryColor : Colors.grey.shade400;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedThemeMode = mode;
        });
        widget.onChanged(mode);
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: borderColor,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: halfColor != null
                ? CustomPaint(
                    painter: HalfCirclePainter(
                      leftColor: color,
                      rightColor: halfColor,
                    ),
                  )
                : null,
          ),
          const SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildThemeCircle(
            ThemeMode.system,
            Colors.grey.shade300,
            'システム',
            Colors.grey.shade800,
          ),
          _buildThemeCircle(ThemeMode.light, Colors.white, 'ライト', null),
          _buildThemeCircle(ThemeMode.dark, Colors.grey.shade800, 'ダーク', null),
        ],
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  HalfCirclePainter({
    required this.leftColor,
    required this.rightColor,
  });
  final Color leftColor;
  final Color rightColor;

  @override
  void paint(Canvas canvas, Size size) {
    final leftPaint = Paint()
      ..color = leftColor
      ..style = PaintingStyle.fill;

    final rightPaint = Paint()
      ..color = rightColor
      ..style = PaintingStyle.fill;

    final radius = size.width / 2;
    final center = Offset(size.width / 2, size.height / 2);

    // 左半分（白）
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2, // 開始角度
      pi, // 描画する角度
      true,
      leftPaint,
    );

    // 右半分（黒）
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi / 2, // 開始角度
      pi, // 描画する角度
      true,
      rightPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
