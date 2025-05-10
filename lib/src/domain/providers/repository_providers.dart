import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wikitok/src/data/providers/datasource_providers.dart';
import 'package:wikitok/src/data/repositories/article_repository_impl.dart';
import 'package:wikitok/src/data/repositories/settings_repository_impl.dart';
import 'package:wikitok/src/domain/repositories/article_repository.dart';
import 'package:wikitok/src/domain/repositories/settings_repository.dart';

// This file contains the providers for the repositories used in the app.
// In theory, the domain layer should not depend on the data layer, this file
// is here for convenience.

final articleRepositoryProvider = Provider<ArticleRepository>((ref) {
  final wikipediaRemoteDataSource = ref.watch(
    wikipediaRemoteDataSourceProvider,
  );

  return ArticleRepositoryImpl(
    wikipediaRemoteDataSource: wikipediaRemoteDataSource,
  );
});

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  final settingsLocalDataSource = ref.watch(settingsLocalDataSourceProvider);

  return SettingsRepositoryImpl(
    settingsLocalDataSource: settingsLocalDataSource,
  );
});
