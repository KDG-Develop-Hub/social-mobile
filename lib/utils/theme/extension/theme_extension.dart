// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme_extension.tailor.dart';

@TailorMixin(
  themeGetter: ThemeGetter.onThemeData,
)
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension>
    with _$CustomThemeExtensionTailorMixin {
  CustomThemeExtension({
    required this.textTheme,
    required this.colorTheme,
  });

  factory CustomThemeExtension.light() => CustomThemeExtension(
        textTheme: TextThemeExtension.light(),
        colorTheme: ColorThemeExtension.light(),
      );

  final TextThemeExtension textTheme;
  final ColorThemeExtension colorTheme;
}

@tailorMixinComponent
class TextThemeExtension extends ThemeExtension<TextThemeExtension>
    with _$TextThemeExtensionTailorMixin {
  TextThemeExtension({
    required this.heading,
    required this.heading2,
    required this.strong,
    required this.body,
    required this.labelStrong,
    required this.label,
    required this.labelSmallStrong,
    required this.labelSmall,
  });

  factory TextThemeExtension.light() {
    final zenMaruGothicStyle = GoogleFonts.zenMaruGothic();

    return TextThemeExtension(
      heading: zenMaruGothicStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      heading2: zenMaruGothicStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      strong: zenMaruGothicStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      body: zenMaruGothicStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      labelStrong: zenMaruGothicStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      label: zenMaruGothicStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      labelSmallStrong: zenMaruGothicStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      labelSmall: zenMaruGothicStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  final TextStyle heading;
  final TextStyle heading2;
  final TextStyle strong;
  final TextStyle body;
  final TextStyle labelStrong;
  final TextStyle label;
  final TextStyle labelSmallStrong;
  final TextStyle labelSmall;
}

@tailorMixinComponent
class ColorThemeExtension extends ThemeExtension<ColorThemeExtension>
    with _$ColorThemeExtensionTailorMixin {
  ColorThemeExtension({
    required this.neutral,
    required this.primary,
    required this.secondary,
    required this.teriary,
    required this.error,
  });

  factory ColorThemeExtension.light() {
    return ColorThemeExtension(
      neutral: {
        98: const Color(0xFFFCFCF8),
        96: const Color(0xFFF7F7F3),
        94: const Color(0xFFF0F0EC),
        90: const Color(0xFFE8E8E3),
        80: const Color(0xFFCECECA),
        70: const Color(0xFFB5B5B0),
        60: const Color(0xFF9D9D95),
        50: const Color(0xFF81817E),
        40: const Color(0xFF6A6A62),
        30: const Color(0xFF4D4D4C),
        20: const Color(0xFF353531),
        10: const Color(0xFF1A1A19),
      },
      primary: {
        90: const Color(0xFFDEF5D6),
        80: const Color(0xFFBEEBAD),
        70: const Color(0xFF9DE085),
        60: const Color(0xFF7CD65C),
        50: const Color(0xFF5CCC33),
        40: const Color(0xFF49A329),
        30: const Color(0xFF377A1F),
        20: const Color(0xFF245115),
        10: const Color(0xFF12290A),
      },
      secondary: {
        90: const Color(0xFFE6EFDC),
        80: const Color(0xFFCDDFB9),
        70: const Color(0xFFB3CF96),
        60: const Color(0xFF9ABF73),
        50: const Color(0xFF81AF50),
        40: const Color(0xFF678C40),
        30: const Color(0xFF4D6930),
        20: const Color(0xFF344620),
        10: const Color(0xFF1A2310),
      },
      teriary: {
        90: const Color(0xFFD9DCF2),
        80: const Color(0xFFB3B8E5),
        70: const Color(0xFF8C95D9),
        60: const Color(0xFF6672CC),
        50: const Color(0xFF404FBF),
        40: const Color(0xFF333F99),
        30: const Color(0xFF262F73),
        20: const Color(0xFF191F4C),
        10: const Color(0xFF0D1026),
      },
      error: {
        90: const Color(0xFFF8D5D3),
        80: const Color(0xFFF0ACA8),
        70: const Color(0xFFE9827C),
        60: const Color(0xFFE25850),
        50: const Color(0xFFDA2E25),
        40: const Color(0xFFAF251D),
        30: const Color(0xFF831C16),
        20: const Color(0xFF57130F),
        10: const Color(0xFF2C0907),
      },
    );
  }

  final Map<int, Color> neutral;
  final Map<int, Color> primary;
  final Map<int, Color> secondary;
  final Map<int, Color> teriary;
  final Map<int, Color> error;
}
