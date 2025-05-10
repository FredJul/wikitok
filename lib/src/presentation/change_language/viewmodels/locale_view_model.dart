import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wikitok/src/domain/providers/usecase_providers.dart';

class LocaleViewModel extends AutoDisposeNotifier<Locale?> {
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

final localeViewModelProvider =
    NotifierProvider.autoDispose<LocaleViewModel, Locale?>(LocaleViewModel.new);
