import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
  BuildContext context,
  String bodyFontString,
  String displayFontString,
) {
  final baseTextTheme = Theme.of(context).textTheme;
  final bodyTextTheme = GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  final displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  final textTheme = displayTextTheme.copyWith(
    headlineMedium: bodyTextTheme.headlineMedium?.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: bodyTextTheme.headlineSmall?.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: bodyTextTheme.bodyMedium?.copyWith(
      fontSize: 16,
    ),
    labelMedium: bodyTextTheme.labelMedium?.copyWith(fontSize: 14),
    labelSmall: bodyTextTheme.labelSmall?.copyWith(fontSize: 12),
  );
  return textTheme;
}

class TextThemeX extends TextTheme {
  const TextThemeX({
    required super.headlineMedium,
    required super.headlineSmall,
    required super.bodyMedium,
    required super.labelMedium,
    required super.labelSmall,
    required this.labelMediumStrong,
    required this.labelSmallStrong,
  });

  final TextStyle labelMediumStrong;
  final TextStyle labelSmallStrong;
}
