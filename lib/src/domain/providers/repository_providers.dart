import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wikitok/src/data/providers/datasource_providers.dart';
import 'package:wikitok/src/data/repositories/article_repository_impl.dart';
import 'package:wikitok/src/data/repositories/settings_repository_impl.dart';
import 'package:wikitok/src/domain/repositories/article_repository.dart';
import 'package:wikitok/src/domain/repositories/settings_repository.dart';

part 'repository_providers.g.dart';

// This file contains the providers for the repositories used in the app.
// In theory, the domain layer should not depend on the data layer, this file
// is here for convenience.

@Riverpod(keepAlive: true)
ArticleRepository articleRepository(Ref ref) {
  final wikipediaRemoteDataSource = ref.watch(
    wikipediaRemoteDataSourceProvider,
  );

  return ArticleRepositoryImpl(
    wikipediaRemoteDataSource: wikipediaRemoteDataSource,
  );
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(Ref ref) {
  final settingsLocalDataSource = ref.watch(settingsLocalDataSourceProvider);

  return SettingsRepositoryImpl(
    settingsLocalDataSource: settingsLocalDataSource,
  );
}
