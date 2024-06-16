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

// GENERATED CODE - by Material Theme Builder

class MaterialTheme {
  const MaterialTheme(this.textTheme);
  final TextTheme textTheme;

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff466730),
      surfaceTint: Color(0xff466730),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc7eea9),
      onPrimaryContainer: Color(0xff092100),
      secondary: Color(0xff56624b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd9e7ca),
      onSecondaryContainer: Color(0xff141e0d),
      tertiary: Color(0xff386666),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbbebeb),
      onTertiaryContainer: Color(0xff002020),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff8faf0),
      onBackground: Color(0xff191d16),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff191d16),
      surfaceVariant: Color(0xffe0e4d6),
      onSurfaceVariant: Color(0xff43483e),
      outline: Color(0xff74796d),
      outlineVariant: Color(0xffc4c8bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312a),
      inverseOnSurface: Color(0xfff0f2e7),
      inversePrimary: Color(0xffabd28f),
      primaryFixed: Color(0xffc7eea9),
      onPrimaryFixed: Color(0xff092100),
      primaryFixedDim: Color(0xffabd28f),
      onPrimaryFixedVariant: Color(0xff2f4f1b),
      secondaryFixed: Color(0xffd9e7ca),
      onSecondaryFixed: Color(0xff141e0d),
      secondaryFixedDim: Color(0xffbdcbaf),
      onSecondaryFixedVariant: Color(0xff3e4a35),
      tertiaryFixed: Color(0xffbbebeb),
      onTertiaryFixed: Color(0xff002020),
      tertiaryFixedDim: Color(0xffa0cfcf),
      onTertiaryFixedVariant: Color(0xff1e4e4e),
      surfaceDim: Color(0xffd9dbd1),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5ea),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe7e9df),
      surfaceContainerHighest: Color(0xffe1e4d9),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff2b4b17),
      surfaceTint: Color(0xff466730),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5b7e45),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3a4631),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6c7960),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff194a4a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f7c7c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff8faf0),
      onBackground: Color(0xff191d16),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff191d16),
      surfaceVariant: Color(0xffe0e4d6),
      onSurfaceVariant: Color(0xff3f443a),
      outline: Color(0xff5c6156),
      outlineVariant: Color(0xff777c71),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312a),
      inverseOnSurface: Color(0xfff0f2e7),
      inversePrimary: Color(0xffabd28f),
      primaryFixed: Color(0xff5b7e45),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff44652e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6c7960),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff536049),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4f7c7c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff356363),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9dbd1),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5ea),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe7e9df),
      surfaceContainerHighest: Color(0xffe1e4d9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff0d2800),
      surfaceTint: Color(0xff466730),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2b4b17),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1a2513),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3a4631),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002727),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff194a4a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff8faf0),
      onBackground: Color(0xff191d16),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffe0e4d6),
      onSurfaceVariant: Color(0xff21251c),
      outline: Color(0xff3f443a),
      outlineVariant: Color(0xff3f443a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312a),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffd0f8b2),
      primaryFixed: Color(0xff2b4b17),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff153403),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3a4631),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff25301c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff194a4a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003333),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9dbd1),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5ea),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe7e9df),
      surfaceContainerHighest: Color(0xffe1e4d9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffabd28f),
      surfaceTint: Color(0xffabd28f),
      onPrimary: Color(0xff193706),
      primaryContainer: Color(0xff2f4f1b),
      onPrimaryContainer: Color(0xffc7eea9),
      secondary: Color(0xffbdcbaf),
      onSecondary: Color(0xff283420),
      secondaryContainer: Color(0xff3e4a35),
      onSecondaryContainer: Color(0xffd9e7ca),
      tertiary: Color(0xffa0cfcf),
      onTertiary: Color(0xff003737),
      tertiaryContainer: Color(0xff1e4e4e),
      onTertiaryContainer: Color(0xffbbebeb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff11140e),
      onBackground: Color(0xffe1e4d9),
      surface: Color(0xff11140e),
      onSurface: Color(0xffe1e4d9),
      surfaceVariant: Color(0xff43483e),
      onSurfaceVariant: Color(0xffc4c8bb),
      outline: Color(0xff8e9286),
      outlineVariant: Color(0xff43483e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4d9),
      inverseOnSurface: Color(0xff2e312a),
      inversePrimary: Color(0xff466730),
      primaryFixed: Color(0xffc7eea9),
      onPrimaryFixed: Color(0xff092100),
      primaryFixedDim: Color(0xffabd28f),
      onPrimaryFixedVariant: Color(0xff2f4f1b),
      secondaryFixed: Color(0xffd9e7ca),
      onSecondaryFixed: Color(0xff141e0d),
      secondaryFixedDim: Color(0xffbdcbaf),
      onSecondaryFixedVariant: Color(0xff3e4a35),
      tertiaryFixed: Color(0xffbbebeb),
      onTertiaryFixed: Color(0xff002020),
      tertiaryFixedDim: Color(0xffa0cfcf),
      onTertiaryFixedVariant: Color(0xff1e4e4e),
      surfaceDim: Color(0xff11140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff191d16),
      surfaceContainer: Color(0xff1d211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362f),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffafd693),
      surfaceTint: Color(0xffabd28f),
      onPrimary: Color(0xff071b00),
      primaryContainer: Color(0xff779b5e),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc1cfb3),
      onSecondary: Color(0xff0f1908),
      secondaryContainer: Color(0xff88957b),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa4d3d3),
      onTertiary: Color(0xff001a1a),
      tertiaryContainer: Color(0xff6b9998),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff11140e),
      onBackground: Color(0xffe1e4d9),
      surface: Color(0xff11140e),
      onSurface: Color(0xfffafcf1),
      surfaceVariant: Color(0xff43483e),
      onSurfaceVariant: Color(0xffc8ccbf),
      outline: Color(0xffa0a598),
      outlineVariant: Color(0xff808579),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4d9),
      inverseOnSurface: Color(0xff282b24),
      inversePrimary: Color(0xff30501c),
      primaryFixed: Color(0xffc7eea9),
      onPrimaryFixed: Color(0xff051500),
      primaryFixedDim: Color(0xffabd28f),
      onPrimaryFixedVariant: Color(0xff1f3d0b),
      secondaryFixed: Color(0xffd9e7ca),
      onSecondaryFixed: Color(0xff091404),
      secondaryFixedDim: Color(0xffbdcbaf),
      onSecondaryFixedVariant: Color(0xff2e3a25),
      tertiaryFixed: Color(0xffbbebeb),
      onTertiaryFixed: Color(0xff001414),
      tertiaryFixedDim: Color(0xffa0cfcf),
      onTertiaryFixedVariant: Color(0xff073d3d),
      surfaceDim: Color(0xff11140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff191d16),
      surfaceContainer: Color(0xff1d211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362f),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff3ffe4),
      surfaceTint: Color(0xffabd28f),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffafd693),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff3ffe4),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc1cfb3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffeafffe),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa4d3d3),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff11140e),
      onBackground: Color(0xffe1e4d9),
      surface: Color(0xff11140e),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff43483e),
      onSurfaceVariant: Color(0xfff8fdee),
      outline: Color(0xffc8ccbf),
      outlineVariant: Color(0xffc8ccbf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4d9),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff123101),
      primaryFixed: Color(0xffcbf3ad),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffafd693),
      onPrimaryFixedVariant: Color(0xff071b00),
      secondaryFixed: Color(0xffddecce),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc1cfb3),
      onSecondaryFixedVariant: Color(0xff0f1908),
      tertiaryFixed: Color(0xffc0f0ef),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa4d3d3),
      onTertiaryFixedVariant: Color(0xff001a1a),
      surfaceDim: Color(0xff11140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff191d16),
      surfaceContainer: Color(0xff1d211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362f),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
