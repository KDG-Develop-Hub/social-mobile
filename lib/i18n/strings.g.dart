/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 56 (28 per locale)
///
/// Built on 2024-11-23 at 12:03 UTC

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
	late final _StringsAppBarEn appBar = _StringsAppBarEn._(_root);
	late final _StringsNavigationBarEn navigationBar = _StringsNavigationBarEn._(_root);
	late final _StringsHomeScreenEn homeScreen = _StringsHomeScreenEn._(_root);
	Map<String, String> get locales => {
		'en': 'English',
		'ja': 'Japanese',
	};
	late final _StringsProfileScreenEn profileScreen = _StringsProfileScreenEn._(_root);
}

// Path: appBar
class _StringsAppBarEn {
	_StringsAppBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsAppBarHomeEn home = _StringsAppBarHomeEn._(_root);
	late final _StringsAppBarSettingsEn settings = _StringsAppBarSettingsEn._(_root);
}

// Path: navigationBar
class _StringsNavigationBarEn {
	_StringsNavigationBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'home';
	String get search => 'search';
	String get profile => 'profile';
	String get friends => 'friends';
	String get settings => 'settings';
}

// Path: homeScreen
class _StringsHomeScreenEn {
	_StringsHomeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsHomeScreenPostEn post = _StringsHomeScreenPostEn._(_root);
	late final _StringsHomeScreenBottomSheetEn bottomSheet = _StringsHomeScreenBottomSheetEn._(_root);
}

// Path: profileScreen
class _StringsProfileScreenEn {
	_StringsProfileScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsProfileScreenTabsEn tabs = _StringsProfileScreenTabsEn._(_root);
	late final _StringsProfileScreenProfileHeaderEn profileHeader = _StringsProfileScreenProfileHeaderEn._(_root);
}

// Path: appBar.home
class _StringsAppBarHomeEn {
	_StringsAppBarHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'home';
}

// Path: appBar.settings
class _StringsAppBarSettingsEn {
	_StringsAppBarSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'settings';
}

// Path: homeScreen.post
class _StringsHomeScreenPostEn {
	_StringsHomeScreenPostEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsHomeScreenPostPopUpMenuEn popUpMenu = _StringsHomeScreenPostPopUpMenuEn._(_root);
}

// Path: homeScreen.bottomSheet
class _StringsHomeScreenBottomSheetEn {
	_StringsHomeScreenBottomSheetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cancelButton => 'cancel';
	late final _StringsHomeScreenBottomSheetPostDeleteEn postDelete = _StringsHomeScreenBottomSheetPostDeleteEn._(_root);
	late final _StringsHomeScreenBottomSheetPostReportEn postReport = _StringsHomeScreenBottomSheetPostReportEn._(_root);
}

// Path: profileScreen.tabs
class _StringsProfileScreenTabsEn {
	_StringsProfileScreenTabsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tweet => 'tweet';
	String get comment => 'comment';
	String get media => 'media';
}

// Path: profileScreen.profileHeader
class _StringsProfileScreenProfileHeaderEn {
	_StringsProfileScreenProfileHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'Edit your profile';
}

// Path: homeScreen.post.popUpMenu
class _StringsHomeScreenPostPopUpMenuEn {
	_StringsHomeScreenPostPopUpMenuEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get reaction => 'add reaction';
	String get comment => 'comment';
	String get bookMark => 'book mark';
	String get share => 'share';
	String get delete => 'delete';
	String get report => 'report';
}

// Path: homeScreen.bottomSheet.postDelete
class _StringsHomeScreenBottomSheetPostDeleteEn {
	_StringsHomeScreenBottomSheetPostDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Do you want to delete this post?';
	String get explanation => 'Deleted posts will be permanently removed after 30 days.';
}

// Path: homeScreen.bottomSheet.postReport
class _StringsHomeScreenBottomSheetPostReportEn {
	_StringsHomeScreenBottomSheetPostReportEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Please tell us the reason for reporting.';
	late final _StringsHomeScreenBottomSheetPostReportReportReasonsEn reportReasons = _StringsHomeScreenBottomSheetPostReportReportReasonsEn._(_root);
}

// Path: homeScreen.bottomSheet.postReport.reportReasons
class _StringsHomeScreenBottomSheetPostReportReportReasonsEn {
	_StringsHomeScreenBottomSheetPostReportReportReasonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get spam => 'Spam';
	String get slander => 'Slander';
	String get offensiveAndLewdContent => 'Offensive or lewd content';
	String get misleadingInformation => 'Misleading information';
	String get exposureOfPrivateInformation => 'Exposure of private information';
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
	@override late final _StringsAppBarJa appBar = _StringsAppBarJa._(_root);
	@override late final _StringsNavigationBarJa navigationBar = _StringsNavigationBarJa._(_root);
	@override late final _StringsHomeScreenJa homeScreen = _StringsHomeScreenJa._(_root);
	@override Map<String, String> get locales => {
		'en': '英語',
		'ja': '日本語',
	};
	@override late final _StringsProfileScreenJa profileScreen = _StringsProfileScreenJa._(_root);
}

// Path: appBar
class _StringsAppBarJa implements _StringsAppBarEn {
	_StringsAppBarJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsAppBarHomeJa home = _StringsAppBarHomeJa._(_root);
	@override late final _StringsAppBarSettingsJa settings = _StringsAppBarSettingsJa._(_root);
}

// Path: navigationBar
class _StringsNavigationBarJa implements _StringsNavigationBarEn {
	_StringsNavigationBarJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ほーむ';
	@override String get search => '見つける';
	@override String get profile => 'あなた';
	@override String get friends => '知り合い';
	@override String get settings => 'せってー';
}

// Path: homeScreen
class _StringsHomeScreenJa implements _StringsHomeScreenEn {
	_StringsHomeScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsHomeScreenPostJa post = _StringsHomeScreenPostJa._(_root);
	@override late final _StringsHomeScreenBottomSheetJa bottomSheet = _StringsHomeScreenBottomSheetJa._(_root);
}

// Path: profileScreen
class _StringsProfileScreenJa implements _StringsProfileScreenEn {
	_StringsProfileScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsProfileScreenTabsJa tabs = _StringsProfileScreenTabsJa._(_root);
	@override late final _StringsProfileScreenProfileHeaderJa profileHeader = _StringsProfileScreenProfileHeaderJa._(_root);
}

// Path: appBar.home
class _StringsAppBarHomeJa implements _StringsAppBarHomeEn {
	_StringsAppBarHomeJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ホーム';
}

// Path: appBar.settings
class _StringsAppBarSettingsJa implements _StringsAppBarSettingsEn {
	_StringsAppBarSettingsJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
}

// Path: homeScreen.post
class _StringsHomeScreenPostJa implements _StringsHomeScreenPostEn {
	_StringsHomeScreenPostJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsHomeScreenPostPopUpMenuJa popUpMenu = _StringsHomeScreenPostPopUpMenuJa._(_root);
}

// Path: homeScreen.bottomSheet
class _StringsHomeScreenBottomSheetJa implements _StringsHomeScreenBottomSheetEn {
	_StringsHomeScreenBottomSheetJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get cancelButton => 'やっぱやめる';
	@override late final _StringsHomeScreenBottomSheetPostDeleteJa postDelete = _StringsHomeScreenBottomSheetPostDeleteJa._(_root);
	@override late final _StringsHomeScreenBottomSheetPostReportJa postReport = _StringsHomeScreenBottomSheetPostReportJa._(_root);
}

// Path: profileScreen.tabs
class _StringsProfileScreenTabsJa implements _StringsProfileScreenTabsEn {
	_StringsProfileScreenTabsJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get tweet => 'つぶやき';
	@override String get comment => 'コメント';
	@override String get media => 'メディア';
}

// Path: profileScreen.profileHeader
class _StringsProfileScreenProfileHeaderJa implements _StringsProfileScreenProfileHeaderEn {
	_StringsProfileScreenProfileHeaderJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'プロフィールをいじる';
}

// Path: homeScreen.post.popUpMenu
class _StringsHomeScreenPostPopUpMenuJa implements _StringsHomeScreenPostPopUpMenuEn {
	_StringsHomeScreenPostPopUpMenuJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get reaction => '絵文字を追加';
	@override String get comment => 'コメント';
	@override String get bookMark => 'ブックマーク';
	@override String get share => '共有する';
	@override String get delete => '削除する';
	@override String get report => '報告する';
}

// Path: homeScreen.bottomSheet.postDelete
class _StringsHomeScreenBottomSheetPostDeleteJa implements _StringsHomeScreenBottomSheetPostDeleteEn {
	_StringsHomeScreenBottomSheetPostDeleteJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'このつぶやきを削除しますか？';
	@override String get explanation => '削除されたつぶやきは、30日後に完全に削除されます。';
}

// Path: homeScreen.bottomSheet.postReport
class _StringsHomeScreenBottomSheetPostReportJa implements _StringsHomeScreenBottomSheetPostReportEn {
	_StringsHomeScreenBottomSheetPostReportJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '通報する理由を教えてください。';
	@override late final _StringsHomeScreenBottomSheetPostReportReportReasonsJa reportReasons = _StringsHomeScreenBottomSheetPostReportReportReasonsJa._(_root);
}

// Path: homeScreen.bottomSheet.postReport.reportReasons
class _StringsHomeScreenBottomSheetPostReportReportReasonsJa implements _StringsHomeScreenBottomSheetPostReportReportReasonsEn {
	_StringsHomeScreenBottomSheetPostReportReportReasonsJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get spam => 'スパム';
	@override String get slander => '誹謗中傷';
	@override String get offensiveAndLewdContent => '攻撃的、卑劣なコンテンツ';
	@override String get misleadingInformation => '誤解を生む情報';
	@override String get presentationOfPrivateInformation => 'プライベートな情報の提示';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appBar.home.title': return 'home';
			case 'appBar.settings.title': return 'settings';
			case 'navigationBar.home': return 'home';
			case 'navigationBar.search': return 'search';
			case 'navigationBar.profile': return 'profile';
			case 'navigationBar.friends': return 'friends';
			case 'navigationBar.settings': return 'settings';
			case 'homeScreen.post.popUpMenu.reaction': return 'add reaction';
			case 'homeScreen.post.popUpMenu.comment': return 'comment';
			case 'homeScreen.post.popUpMenu.bookMark': return 'book mark';
			case 'homeScreen.post.popUpMenu.share': return 'share';
			case 'homeScreen.post.popUpMenu.delete': return 'delete';
			case 'homeScreen.post.popUpMenu.report': return 'report';
			case 'homeScreen.bottomSheet.cancelButton': return 'cancel';
			case 'homeScreen.bottomSheet.postDelete.title': return 'Do you want to delete this post?';
			case 'homeScreen.bottomSheet.postDelete.explanation': return 'Deleted posts will be permanently removed after 30 days.';
			case 'homeScreen.bottomSheet.postReport.title': return 'Please tell us the reason for reporting.';
			case 'homeScreen.bottomSheet.postReport.reportReasons.spam': return 'Spam';
			case 'homeScreen.bottomSheet.postReport.reportReasons.slander': return 'Slander';
			case 'homeScreen.bottomSheet.postReport.reportReasons.offensiveAndLewdContent': return 'Offensive or lewd content';
			case 'homeScreen.bottomSheet.postReport.reportReasons.misleadingInformation': return 'Misleading information';
			case 'homeScreen.bottomSheet.postReport.reportReasons.exposureOfPrivateInformation': return 'Exposure of private information';
			case 'locales.en': return 'English';
			case 'locales.ja': return 'Japanese';
			case 'profileScreen.tabs.tweet': return 'tweet';
			case 'profileScreen.tabs.comment': return 'comment';
			case 'profileScreen.tabs.media': return 'media';
			case 'profileScreen.profileHeader.buttonText': return 'Edit your profile';
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appBar.home.title': return 'ホーム';
			case 'appBar.settings.title': return '設定';
			case 'navigationBar.home': return 'ほーむ';
			case 'navigationBar.search': return '見つける';
			case 'navigationBar.profile': return 'あなた';
			case 'navigationBar.friends': return '知り合い';
			case 'navigationBar.settings': return 'せってー';
			case 'homeScreen.post.popUpMenu.reaction': return '絵文字を追加';
			case 'homeScreen.post.popUpMenu.comment': return 'コメント';
			case 'homeScreen.post.popUpMenu.bookMark': return 'ブックマーク';
			case 'homeScreen.post.popUpMenu.share': return '共有する';
			case 'homeScreen.post.popUpMenu.delete': return '削除する';
			case 'homeScreen.post.popUpMenu.report': return '報告する';
			case 'homeScreen.bottomSheet.cancelButton': return 'やっぱやめる';
			case 'homeScreen.bottomSheet.postDelete.title': return 'このつぶやきを削除しますか？';
			case 'homeScreen.bottomSheet.postDelete.explanation': return '削除されたつぶやきは、30日後に完全に削除されます。';
			case 'homeScreen.bottomSheet.postReport.title': return '通報する理由を教えてください。';
			case 'homeScreen.bottomSheet.postReport.reportReasons.spam': return 'スパム';
			case 'homeScreen.bottomSheet.postReport.reportReasons.slander': return '誹謗中傷';
			case 'homeScreen.bottomSheet.postReport.reportReasons.offensiveAndLewdContent': return '攻撃的、卑劣なコンテンツ';
			case 'homeScreen.bottomSheet.postReport.reportReasons.misleadingInformation': return '誤解を生む情報';
			case 'homeScreen.bottomSheet.postReport.reportReasons.presentationOfPrivateInformation': return 'プライベートな情報の提示';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日本語';
			case 'profileScreen.tabs.tweet': return 'つぶやき';
			case 'profileScreen.tabs.comment': return 'コメント';
			case 'profileScreen.tabs.media': return 'メディア';
			case 'profileScreen.profileHeader.buttonText': return 'プロフィールをいじる';
			default: return null;
		}
	}
}
