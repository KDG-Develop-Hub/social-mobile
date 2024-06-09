// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'theme_extension.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$CustomThemeExtensionTailorMixin
    on ThemeExtension<CustomThemeExtension> {
  TextThemeExtension get textTheme;
  ColorThemeExtension get colorTheme;

  @override
  CustomThemeExtension copyWith({
    TextThemeExtension? textTheme,
    ColorThemeExtension? colorTheme,
  }) {
    return CustomThemeExtension(
      textTheme: textTheme ?? this.textTheme,
      colorTheme: colorTheme ?? this.colorTheme,
    );
  }

  @override
  CustomThemeExtension lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this as CustomThemeExtension;
    return CustomThemeExtension(
      textTheme: textTheme.lerp(other.textTheme, t) as TextThemeExtension,
      colorTheme: colorTheme.lerp(other.colorTheme, t) as ColorThemeExtension,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomThemeExtension &&
            const DeepCollectionEquality().equals(textTheme, other.textTheme) &&
            const DeepCollectionEquality()
                .equals(colorTheme, other.colorTheme));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(textTheme),
      const DeepCollectionEquality().hash(colorTheme),
    );
  }
}

extension CustomThemeExtensionThemeData on ThemeData {
  CustomThemeExtension get customThemeExtension =>
      extension<CustomThemeExtension>()!;
}

mixin _$TextThemeExtensionTailorMixin on ThemeExtension<TextThemeExtension> {
  TextStyle get heading;
  TextStyle get heading2;
  TextStyle get strong;
  TextStyle get body;
  TextStyle get labelStrong;
  TextStyle get label;
  TextStyle get labelSmallStrong;
  TextStyle get labelSmall;

  @override
  TextThemeExtension copyWith({
    TextStyle? heading,
    TextStyle? heading2,
    TextStyle? strong,
    TextStyle? body,
    TextStyle? labelStrong,
    TextStyle? label,
    TextStyle? labelSmallStrong,
    TextStyle? labelSmall,
  }) {
    return TextThemeExtension(
      heading: heading ?? this.heading,
      heading2: heading2 ?? this.heading2,
      strong: strong ?? this.strong,
      body: body ?? this.body,
      labelStrong: labelStrong ?? this.labelStrong,
      label: label ?? this.label,
      labelSmallStrong: labelSmallStrong ?? this.labelSmallStrong,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  TextThemeExtension lerp(
      covariant ThemeExtension<TextThemeExtension>? other, double t) {
    if (other is! TextThemeExtension) return this as TextThemeExtension;
    return TextThemeExtension(
      heading: TextStyle.lerp(heading, other.heading, t)!,
      heading2: TextStyle.lerp(heading2, other.heading2, t)!,
      strong: TextStyle.lerp(strong, other.strong, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      labelStrong: TextStyle.lerp(labelStrong, other.labelStrong, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      labelSmallStrong:
          TextStyle.lerp(labelSmallStrong, other.labelSmallStrong, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextThemeExtension &&
            const DeepCollectionEquality().equals(heading, other.heading) &&
            const DeepCollectionEquality().equals(heading2, other.heading2) &&
            const DeepCollectionEquality().equals(strong, other.strong) &&
            const DeepCollectionEquality().equals(body, other.body) &&
            const DeepCollectionEquality()
                .equals(labelStrong, other.labelStrong) &&
            const DeepCollectionEquality().equals(label, other.label) &&
            const DeepCollectionEquality()
                .equals(labelSmallStrong, other.labelSmallStrong) &&
            const DeepCollectionEquality()
                .equals(labelSmall, other.labelSmall));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(heading),
      const DeepCollectionEquality().hash(heading2),
      const DeepCollectionEquality().hash(strong),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(labelStrong),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(labelSmallStrong),
      const DeepCollectionEquality().hash(labelSmall),
    );
  }
}

mixin _$ColorThemeExtensionTailorMixin on ThemeExtension<ColorThemeExtension> {
  Map<int, Color> get neutral;
  Map<int, Color> get primary;
  Map<int, Color> get secondary;
  Map<int, Color> get teriary;
  Map<int, Color> get error;

  @override
  ColorThemeExtension copyWith({
    Map<int, Color>? neutral,
    Map<int, Color>? primary,
    Map<int, Color>? secondary,
    Map<int, Color>? teriary,
    Map<int, Color>? error,
  }) {
    return ColorThemeExtension(
      neutral: neutral ?? this.neutral,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      teriary: teriary ?? this.teriary,
      error: error ?? this.error,
    );
  }

  @override
  ColorThemeExtension lerp(
      covariant ThemeExtension<ColorThemeExtension>? other, double t) {
    if (other is! ColorThemeExtension) return this as ColorThemeExtension;
    return ColorThemeExtension(
      neutral: t < 0.5 ? neutral : other.neutral,
      primary: t < 0.5 ? primary : other.primary,
      secondary: t < 0.5 ? secondary : other.secondary,
      teriary: t < 0.5 ? teriary : other.teriary,
      error: t < 0.5 ? error : other.error,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColorThemeExtension &&
            const DeepCollectionEquality().equals(neutral, other.neutral) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(teriary, other.teriary) &&
            const DeepCollectionEquality().equals(error, other.error));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(neutral),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(teriary),
      const DeepCollectionEquality().hash(error),
    );
  }
}
