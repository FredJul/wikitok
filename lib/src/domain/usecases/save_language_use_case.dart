import 'package:wikitok/src/domain/repositories/settings_repository.dart';

class SaveLanguageUseCase {
  final SettingsRepository _settingsRepository;

  SaveLanguageUseCase({required SettingsRepository settingsRepository})
    : _settingsRepository = settingsRepository;

  Future<void> call({required String languageCode}) async {
    // No real intelligence here, it is here to be homogenous with the
    // rest of the codebase
    await _settingsRepository.savePreferredLanguageCode(
      languageCode: languageCode,
    );
  }
}
