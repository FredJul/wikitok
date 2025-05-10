import 'package:wikitok/src/domain/common/result_extension.dart';
import 'package:wikitok/src/domain/repositories/settings_repository.dart';

class GetLanguageUseCase {
  final SettingsRepository _settingsRepository;

  GetLanguageUseCase({required SettingsRepository settingsRepository})
    : _settingsRepository = settingsRepository;

  Future<String> call() async {
    const defaultLang = "en";

    return (await _settingsRepository.getPreferredLanguageCode()).when(
      value: (value) => value ?? defaultLang,

      // TODO: add proper error logging here
      error: (_, _) => defaultLang,
    );
  }
}
