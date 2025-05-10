import 'package:async/async.dart';
import 'package:wikitok/src/data/datasources/local/settings_local_data_source.dart';
import 'package:wikitok/src/domain/repositories/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsLocalDataSource _settingsLocalDataSource;

  SettingsRepositoryImpl({
    required SettingsLocalDataSource settingsLocalDataSource,
  }) : _settingsLocalDataSource = settingsLocalDataSource;

  @override
  Future<Result<String?>> getPreferredLanguageCode() {
    return Result.capture(_settingsLocalDataSource.getPreferredLanguageCode());
  }

  @override
  Future<Result<void>> savePreferredLanguageCode({
    required String languageCode,
  }) {
    return Result.capture(
      _settingsLocalDataSource.savePreferredLanguage(
        languageCode: languageCode,
      ),
    );
  }
}
