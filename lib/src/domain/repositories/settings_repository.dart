import 'package:async/async.dart';

abstract class SettingsRepository {
  /// Fetches the preferred language code.
  /// In case of failure, it returns a [Result] with an error which could be
  /// a [CacheException].
  Future<Result<String?>> getPreferredLanguageCode();

  /// Saves the preferred language code.
  /// In case of failure, it returns a [Result] with an error which could be
  /// a [CacheException].
  Future<Result<void>> savePreferredLanguageCode({
    required String languageCode,
  });
}
