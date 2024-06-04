import 'package:flutter/material.dart';
import 'package:social_mobile/utils/theme/extension/theme_extension.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    extensions: [
      CustomThemeExtension.light(),
    ],
  );
}
