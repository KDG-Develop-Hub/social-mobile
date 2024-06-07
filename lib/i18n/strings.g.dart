/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 12 (6 per locale)
///
/// Built on 2024-06-07 at 15:00 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ja(languageCode: 'ja', build: _StringsJa.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsNavigationBarEn navigationBar = _StringsNavigationBarEn._(_root);
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
	Map<String, String> get locales => {
		'en': 'English',
		'ja': 'Japanese',
	};
}

// Path: navigationBar
class _StringsNavigationBarEn {
	_StringsNavigationBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsNavigationBarHomeEn home = _StringsNavigationBarHomeEn._(_root);
	late final _StringsNavigationBarSettingsEn settings = _StringsNavigationBarSettingsEn._(_root);
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsSettingsLanguageEn language = _StringsSettingsLanguageEn._(_root);
}

// Path: navigationBar.home
class _StringsNavigationBarHomeEn {
	_StringsNavigationBarHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'home';
}

// Path: navigationBar.settings
class _StringsNavigationBarSettingsEn {
	_StringsNavigationBarSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'settings';
}

// Path: settings.language
class _StringsSettingsLanguageEn {
	_StringsSettingsLanguageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Language';
	String get currentLanguage => 'English';
}

// Path: <root>
class _StringsJa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsNavigationBarJa navigationBar = _StringsNavigationBarJa._(_root);
	@override late final _StringsSettingsJa settings = _StringsSettingsJa._(_root);
	@override Map<String, String> get locales => {
		'en': '英語',
		'ja': '日本語',
	};
}

// Path: navigationBar
class _StringsNavigationBarJa implements _StringsNavigationBarEn {
	_StringsNavigationBarJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsNavigationBarHomeJa home = _StringsNavigationBarHomeJa._(_root);
	@override late final _StringsNavigationBarSettingsJa settings = _StringsNavigationBarSettingsJa._(_root);
}

// Path: settings
class _StringsSettingsJa implements _StringsSettingsEn {
	_StringsSettingsJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsSettingsLanguageJa language = _StringsSettingsLanguageJa._(_root);
}

// Path: navigationBar.home
class _StringsNavigationBarHomeJa implements _StringsNavigationBarHomeEn {
	_StringsNavigationBarHomeJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ホーム';
}

// Path: navigationBar.settings
class _StringsNavigationBarSettingsJa implements _StringsNavigationBarSettingsEn {
	_StringsNavigationBarSettingsJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
}

// Path: settings.language
class _StringsSettingsLanguageJa implements _StringsSettingsLanguageEn {
	_StringsSettingsLanguageJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '言語';
	@override String get currentLanguage => '日本語';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navigationBar.home.title': return 'home';
			case 'navigationBar.settings.title': return 'settings';
			case 'settings.language.title': return 'Language';
			case 'settings.language.currentLanguage': return 'English';
			case 'locales.en': return 'English';
			case 'locales.ja': return 'Japanese';
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navigationBar.home.title': return 'ホーム';
			case 'navigationBar.settings.title': return '設定';
			case 'settings.language.title': return '言語';
			case 'settings.language.currentLanguage': return '日本語';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日本語';
			default: return null;
		}
	}
}
