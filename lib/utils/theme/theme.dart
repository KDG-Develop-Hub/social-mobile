import 'package:flutter/material.dart';
import 'package:social_mobile/utils/theme/extension/theme_extension.dart';

ThemeData lightTheme() {
  final theme = CustomThemeExtension.light();

  return ThemeData.light().copyWith(
    navigationBarTheme: NavigationBarThemeData(
      labelTextStyle: MaterialStateTextStyle.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return theme.textTheme.labelSmallStrong.copyWith(
              color: theme.colorTheme.primary[10],
            );
          }
          return theme.textTheme.labelSmall.copyWith(
            color: theme.colorTheme.neutral[10],
          );
        },
      ),
    ),
    extensions: [
      theme,
    ],
  );
}
