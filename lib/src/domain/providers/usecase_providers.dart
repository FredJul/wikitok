import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wikitok/src/domain/providers/repository_providers.dart';
import 'package:wikitok/src/domain/usecases/fetch_articles_use_case.dart';
import 'package:wikitok/src/domain/usecases/get_language_use_case.dart';
import 'package:wikitok/src/domain/usecases/save_language_use_case.dart';

final fetchArticlesUseCaseProvider = Provider<FetchArticlesUseCase>((ref) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return FetchArticlesUseCase(articleRepository: articleRepository);
});

final getLanguageUseCaseProvider = Provider<GetLanguageUseCase>((ref) {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  return GetLanguageUseCase(settingsRepository: settingsRepository);
});

final saveLanguageUseCaseProvider = Provider<SaveLanguageUseCase>((ref) {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  return SaveLanguageUseCase(settingsRepository: settingsRepository);
});
