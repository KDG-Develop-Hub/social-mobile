import 'package:email_validator/email_validator.dart';
import 'package:social_mobile/i18n/strings.g.dart';
import 'package:social_mobile/utils/routes/app_router.dart';

class Validator {
  Validator._();

  static Translations get _i18n =>
      Translations.of(rootNavigatorKey.currentContext!);

  /// 認証情報で扱う、emailのバリデーション
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return _i18n.validation.emailRequired;
    }
    if (!EmailValidator.validate(value)) {
      return _i18n.validation.emailInvalid;
    }
    return null;
  }

  /// 通常情報入力時のバリデーション
  static String? common(String? value) {
    if (value == null || value.isEmpty) {
      return _i18n.validation.informationRequired;
    }
    return null;
  }

  /// URL情報入力時のバリデーション
  static String? url(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!Uri.tryParse(value)!.hasAbsolutePath) {
      return _i18n.validation.urlInvalid;
    }
    return null;
  }
}
