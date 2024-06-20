import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_service.g.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>(
  (_) => throw UnimplementedError(),
);

@riverpod
class SharedPreferencesService extends _$SharedPreferencesService {
  @override
  String build() {
    return '';
  }

  void setStringValue({
    required String key,
    required String value,
  }) {
    ref.watch(sharedPreferencesProvider).setString(key, value);
  }

  String getStringValue({required String key}) {
    final value = ref.watch(sharedPreferencesProvider).getString(key);
    return value ?? '';
  }

  void removeValue({required String key}) {
    ref.watch(sharedPreferencesProvider).remove(key);
  }
}
