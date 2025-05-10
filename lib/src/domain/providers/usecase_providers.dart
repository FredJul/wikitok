import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wikitok/src/domain/providers/repository_providers.dart';
import 'package:wikitok/src/domain/usecases/fetch_articles_use_case.dart';
import 'package:wikitok/src/domain/usecases/get_language_use_case.dart';
import 'package:wikitok/src/domain/usecases/save_language_use_case.dart';

part 'usecase_providers.g.dart';

@Riverpod(keepAlive: true)
FetchArticlesUseCase fetchArticlesUseCase(Ref ref) {
  final articleRepository = ref.watch(articleRepositoryProvider);
  return FetchArticlesUseCase(articleRepository: articleRepository);
}

@Riverpod(keepAlive: true)
GetLanguageUseCase getLanguageUseCase(Ref ref) {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  return GetLanguageUseCase(settingsRepository: settingsRepository);
}

@Riverpod(keepAlive: true)
SaveLanguageUseCase saveLanguageUseCase(Ref ref) {
  final settingsRepository = ref.watch(settingsRepositoryProvider);
  return SaveLanguageUseCase(settingsRepository: settingsRepository);
}
