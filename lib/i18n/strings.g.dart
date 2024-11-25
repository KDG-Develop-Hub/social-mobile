/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 75 (37 per locale)
///
/// Built on 2024-11-24 at 06:33 UTC

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
	late final _StringsBottomSheetEn bottomSheet = _StringsBottomSheetEn._(_root);
	late final _StringsHomeScreenEn homeScreen = _StringsHomeScreenEn._(_root);
	late final _StringsPostScreenEn postScreen = _StringsPostScreenEn._(_root);
	late final _StringsValidationEn validation = _StringsValidationEn._(_root);
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

// Path: bottomSheet
class _StringsBottomSheetEn {
	_StringsBottomSheetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cancelButton => 'cancel';
	late final _StringsBottomSheetPostDeleteEn postDelete = _StringsBottomSheetPostDeleteEn._(_root);
	late final _StringsBottomSheetPostReportEn postReport = _StringsBottomSheetPostReportEn._(_root);
}

// Path: homeScreen
class _StringsHomeScreenEn {
	_StringsHomeScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsHomeScreenPostEn post = _StringsHomeScreenPostEn._(_root);
}

// Path: postScreen
class _StringsPostScreenEn {
	_StringsPostScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'What are you going to write this time?';
	String get description => 'Feel free to write your thoughts and events! Don\'t forget to check the community guidelines!';
	String get textFieldLabel => 'Content';
	late final _StringsPostScreenButtonsEn buttons = _StringsPostScreenButtonsEn._(_root);
}

// Path: validation
class _StringsValidationEn {
	_StringsValidationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get emailRequired => 'Please enter your email address';
	String get emailInvalid => 'The email address format is incorrect';
	String get informationRequired => 'Please enter the content';
	String get urlInvalid => 'The URL format is incorrect';
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

// Path: bottomSheet.postDelete
class _StringsBottomSheetPostDeleteEn {
	_StringsBottomSheetPostDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Do you want to delete this post?';
	String get explanation => 'Deleted posts will be permanently removed after 30 days.';
}

// Path: bottomSheet.postReport
class _StringsBottomSheetPostReportEn {
	_StringsBottomSheetPostReportEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Please tell us the reason for reporting.';
	late final _StringsBottomSheetPostReportReportReasonsEn reportReasons = _StringsBottomSheetPostReportReportReasonsEn._(_root);
}

// Path: homeScreen.post
class _StringsHomeScreenPostEn {
	_StringsHomeScreenPostEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsHomeScreenPostPopUpMenuEn popUpMenu = _StringsHomeScreenPostPopUpMenuEn._(_root);
}

// Path: postScreen.buttons
class _StringsPostScreenButtonsEn {
	_StringsPostScreenButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get post => 'Share it';
	String get cancel => 'Cancel';
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

// Path: bottomSheet.postReport.reportReasons
class _StringsBottomSheetPostReportReportReasonsEn {
	_StringsBottomSheetPostReportReportReasonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get spam => 'Spam';
	String get slander => 'Slander';
	String get offensiveAndLewdContent => 'Offensive or lewd content';
	String get misleadingInformation => 'Misleading information';
	String get exposureOfPrivateInformation => 'Exposure of private information';
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
	@override late final _StringsBottomSheetJa bottomSheet = _StringsBottomSheetJa._(_root);
	@override late final _StringsHomeScreenJa homeScreen = _StringsHomeScreenJa._(_root);
	@override late final _StringsPostScreenJa postScreen = _StringsPostScreenJa._(_root);
	@override late final _StringsValidationJa validation = _StringsValidationJa._(_root);
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

// Path: bottomSheet
class _StringsBottomSheetJa implements _StringsBottomSheetEn {
	_StringsBottomSheetJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get cancelButton => 'やっぱやめる';
	@override late final _StringsBottomSheetPostDeleteJa postDelete = _StringsBottomSheetPostDeleteJa._(_root);
	@override late final _StringsBottomSheetPostReportJa postReport = _StringsBottomSheetPostReportJa._(_root);
}

// Path: homeScreen
class _StringsHomeScreenJa implements _StringsHomeScreenEn {
	_StringsHomeScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsHomeScreenPostJa post = _StringsHomeScreenPostJa._(_root);
}

// Path: postScreen
class _StringsPostScreenJa implements _StringsPostScreenEn {
	_StringsPostScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '今回は何を綴るのかな？';
	@override String get description => '自分の考えや出来事を気楽に書こう！コミュニティーガイドラインの確認も忘れないでねッ！';
	@override String get textFieldLabel => '内容';
	@override late final _StringsPostScreenButtonsJa buttons = _StringsPostScreenButtonsJa._(_root);
}

// Path: validation
class _StringsValidationJa implements _StringsValidationEn {
	_StringsValidationJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get emailRequired => 'メールアドレスを入力してください';
	@override String get emailInvalid => 'メールアドレスの形式が正しくありません';
	@override String get passwordMatch => 'パスワードが一致しません';
	@override String get informationRequired => '内容を入力してください';
	@override String get urlInvalid => 'URLの形式が正しくありません';
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

// Path: bottomSheet.postDelete
class _StringsBottomSheetPostDeleteJa implements _StringsBottomSheetPostDeleteEn {
	_StringsBottomSheetPostDeleteJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'このつぶやきを削除しますか？';
	@override String get explanation => '削除されたつぶやきは、30日後に完全に削除されます。';
}

// Path: bottomSheet.postReport
class _StringsBottomSheetPostReportJa implements _StringsBottomSheetPostReportEn {
	_StringsBottomSheetPostReportJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '通報する理由を教えてください。';
	@override late final _StringsBottomSheetPostReportReportReasonsJa reportReasons = _StringsBottomSheetPostReportReportReasonsJa._(_root);
}

// Path: homeScreen.post
class _StringsHomeScreenPostJa implements _StringsHomeScreenPostEn {
	_StringsHomeScreenPostJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override late final _StringsHomeScreenPostPopUpMenuJa popUpMenu = _StringsHomeScreenPostPopUpMenuJa._(_root);
}

// Path: postScreen.buttons
class _StringsPostScreenButtonsJa implements _StringsPostScreenButtonsEn {
	_StringsPostScreenButtonsJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get post => '広めちゃうん';
	@override String get cancel => 'やっぱやめる';
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

// Path: bottomSheet.postReport.reportReasons
class _StringsBottomSheetPostReportReportReasonsJa implements _StringsBottomSheetPostReportReportReasonsEn {
	_StringsBottomSheetPostReportReportReasonsJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get spam => 'スパム';
	@override String get slander => '誹謗中傷';
	@override String get offensiveAndLewdContent => '攻撃的、卑劣なコンテンツ';
	@override String get misleadingInformation => '誤解を生む情報';
	@override String get exposureOfPrivateInformation => 'プライベートな情報の提示';
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
			case 'bottomSheet.cancelButton': return 'cancel';
			case 'bottomSheet.postDelete.title': return 'Do you want to delete this post?';
			case 'bottomSheet.postDelete.explanation': return 'Deleted posts will be permanently removed after 30 days.';
			case 'bottomSheet.postReport.title': return 'Please tell us the reason for reporting.';
			case 'bottomSheet.postReport.reportReasons.spam': return 'Spam';
			case 'bottomSheet.postReport.reportReasons.slander': return 'Slander';
			case 'bottomSheet.postReport.reportReasons.offensiveAndLewdContent': return 'Offensive or lewd content';
			case 'bottomSheet.postReport.reportReasons.misleadingInformation': return 'Misleading information';
			case 'bottomSheet.postReport.reportReasons.exposureOfPrivateInformation': return 'Exposure of private information';
			case 'homeScreen.post.popUpMenu.reaction': return 'add reaction';
			case 'homeScreen.post.popUpMenu.comment': return 'comment';
			case 'homeScreen.post.popUpMenu.bookMark': return 'book mark';
			case 'homeScreen.post.popUpMenu.share': return 'share';
			case 'homeScreen.post.popUpMenu.delete': return 'delete';
			case 'homeScreen.post.popUpMenu.report': return 'report';
			case 'postScreen.title': return 'What are you going to write this time?';
			case 'postScreen.description': return 'Feel free to write your thoughts and events! Don\'t forget to check the community guidelines!';
			case 'postScreen.textFieldLabel': return 'Content';
			case 'postScreen.buttons.post': return 'Share it';
			case 'postScreen.buttons.cancel': return 'Cancel';
			case 'validation.emailRequired': return 'Please enter your email address';
			case 'validation.emailInvalid': return 'The email address format is incorrect';
			case 'validation.informationRequired': return 'Please enter the content';
			case 'validation.urlInvalid': return 'The URL format is incorrect';
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
			case 'bottomSheet.cancelButton': return 'やっぱやめる';
			case 'bottomSheet.postDelete.title': return 'このつぶやきを削除しますか？';
			case 'bottomSheet.postDelete.explanation': return '削除されたつぶやきは、30日後に完全に削除されます。';
			case 'bottomSheet.postReport.title': return '通報する理由を教えてください。';
			case 'bottomSheet.postReport.reportReasons.spam': return 'スパム';
			case 'bottomSheet.postReport.reportReasons.slander': return '誹謗中傷';
			case 'bottomSheet.postReport.reportReasons.offensiveAndLewdContent': return '攻撃的、卑劣なコンテンツ';
			case 'bottomSheet.postReport.reportReasons.misleadingInformation': return '誤解を生む情報';
			case 'bottomSheet.postReport.reportReasons.exposureOfPrivateInformation': return 'プライベートな情報の提示';
			case 'homeScreen.post.popUpMenu.reaction': return '絵文字を追加';
			case 'homeScreen.post.popUpMenu.comment': return 'コメント';
			case 'homeScreen.post.popUpMenu.bookMark': return 'ブックマーク';
			case 'homeScreen.post.popUpMenu.share': return '共有する';
			case 'homeScreen.post.popUpMenu.delete': return '削除する';
			case 'homeScreen.post.popUpMenu.report': return '報告する';
			case 'postScreen.title': return '今回は何を綴るのかな？';
			case 'postScreen.description': return '自分の考えや出来事を気楽に書こう！コミュニティーガイドラインの確認も忘れないでねッ！';
			case 'postScreen.textFieldLabel': return '内容';
			case 'postScreen.buttons.post': return '広めちゃうん';
			case 'postScreen.buttons.cancel': return 'やっぱやめる';
			case 'validation.emailRequired': return 'メールアドレスを入力してください';
			case 'validation.emailInvalid': return 'メールアドレスの形式が正しくありません';
			case 'validation.passwordMatch': return 'パスワードが一致しません';
			case 'validation.informationRequired': return '内容を入力してください';
			case 'validation.urlInvalid': return 'URLの形式が正しくありません';
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
