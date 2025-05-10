import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wikitok/src/domain/providers/usecase_providers.dart';

part 'locale_view_model.g.dart';

@riverpod
class LocaleViewModel extends _$LocaleViewModel {
  @override
  Locale? build() {
    _initLocale();
    return null;
  }

  Future<void> _initLocale() async {
    final getLanguageUseCase = ref.read(getLanguageUseCaseProvider);
    state = Locale(await getLanguageUseCase.call());
  }

  Future<void> setLocale(String languageCode) async {
    state = Locale(languageCode);

    await ref
        .read(saveLanguageUseCaseProvider)
        .call(languageCode: languageCode);
  }
}
