// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
  BuildContext context,
  String bodyFontString,
  String displayFontString,
) {
  final baseTextTheme = Theme.of(context).textTheme;
  final bodyTextTheme = GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);

  final textThemeX = TextThemeX(
    displayLarge: bodyTextTheme.displayLarge?.copyWith(fontSize: 57),
    displayMedium: bodyTextTheme.displayMedium?.copyWith(fontSize: 45),
    displaySmall: bodyTextTheme.displaySmall?.copyWith(fontSize: 36),
    headlineLarge: bodyTextTheme.headlineLarge?.copyWith(fontSize: 32),
    headlineMedium: bodyTextTheme.headlineMedium?.copyWith(fontSize: 28),
    headlineSmall: bodyTextTheme.headlineSmall?.copyWith(fontSize: 24),
    bodyLarge: bodyTextTheme.bodyLarge?.copyWith(fontSize: 16),
    bodyMedium: bodyTextTheme.bodyMedium?.copyWith(fontSize: 14),
    bodySmall: bodyTextTheme.bodySmall?.copyWith(fontSize: 12),
    labelLarge: bodyTextTheme.labelLarge?.copyWith(fontSize: 14),
    labelMedium: bodyTextTheme.labelMedium?.copyWith(fontSize: 12),
    labelSmall: bodyTextTheme.labelSmall?.copyWith(fontSize: 11),
    titleLarge: bodyTextTheme.titleLarge?.copyWith(fontSize: 22),
    titleMedium: bodyTextTheme.titleMedium?.copyWith(fontSize: 16),
    titleSmall: bodyTextTheme.titleSmall?.copyWith(fontSize: 14),
    labelProminentLarge: bodyTextTheme.labelMedium?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    labelProminentMedium: bodyTextTheme.labelSmall?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  );

  return textThemeX;
}


/// if you wanna use labelProminentLarge or labelProminentMedium, must be used explicitly in the code
class TextThemeX extends TextTheme {
  const TextThemeX({
    required super.displayLarge,
    required super.displayMedium,
    required super.displaySmall,
    required super.headlineLarge,
    required super.headlineMedium,
    required super.headlineSmall,
    required super.bodyLarge,
    required super.bodyMedium,
    required super.bodySmall,
    required super.labelLarge,
    required super.labelMedium,
    required super.labelSmall,
    required super.titleLarge,
    required super.titleMedium,
    required super.titleSmall,
    required this.labelProminentLarge,
    required this.labelProminentMedium,
  });

  final TextStyle? labelProminentLarge;
  final TextStyle? labelProminentMedium;
}
