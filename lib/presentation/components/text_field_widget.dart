import 'package:flutter/material.dart';
import 'package:social_mobile/utils/theme/extension/theme_extension.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.labelText,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final colorTheme = theme.customThemeExtension.colorTheme;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            style: textTheme.body.copyWith(
              color: colorTheme.neutral[10],
            ),
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: textTheme.body.copyWith(
                color: colorTheme.neutral[30],
              ),
              contentPadding: const EdgeInsets.all(16),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorTheme.neutral[50]!),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorTheme.neutral[50]!),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
