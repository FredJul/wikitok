import 'package:shared_preferences/shared_preferences.dart';
import 'package:wikitok/src/domain/common/exceptions.dart';

class SettingsLocalDataSource {
  static const _preferredLanguageKey = 'preferred_language';

  final SharedPreferencesAsync _sharedPreferencesAsync;

  SettingsLocalDataSource({
    required SharedPreferencesAsync sharedPreferencesAsync,
  }) : _sharedPreferencesAsync = sharedPreferencesAsync;

  Future<String?> getPreferredLanguageCode() async {
    try {
      final preferredLanguage = await _sharedPreferencesAsync.getString(
        _preferredLanguageKey,
      );
      return preferredLanguage;
    } catch (e) {
      throw CacheException();
    }
  }

  Future<void> savePreferredLanguage({required String languageCode}) async {
    try {
      await _sharedPreferencesAsync.setString(
        _preferredLanguageKey,
        languageCode,
      );
    } catch (e) {
      throw CacheException();
    }
  }
}
