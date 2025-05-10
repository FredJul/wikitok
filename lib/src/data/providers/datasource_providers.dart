import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wikitok/src/data/datasources/local/settings_local_data_source.dart';
import 'package:wikitok/src/data/datasources/remote/dio_error_interceptor.dart';
import 'package:wikitok/src/data/datasources/remote/wikipedia_api_client.dart';
import 'package:wikitok/src/data/datasources/remote/wikipedia_remote_data_source.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  dio.interceptors.add(DioErrorInterceptor());
  ref.onDispose(() => dio.close());
  return dio;
});

final wikipediaApiClientProvider = Provider<WikipediaApiClient>((ref) {
  final dio = ref.watch(dioProvider);
  return WikipediaApiClient(dio);
});

final sharedPreferencesAsyncProvider = Provider<SharedPreferencesAsync>((ref) {
  return SharedPreferencesAsync();
});

final settingsLocalDataSourceProvider = Provider<SettingsLocalDataSource>((
  ref,
) {
  final sharedPreferencesAsync = ref.watch(sharedPreferencesAsyncProvider);

  return SettingsLocalDataSource(
    sharedPreferencesAsync: sharedPreferencesAsync,
  );
});

final wikipediaRemoteDataSourceProvider = Provider<WikipediaRemoteDataSource>((
  ref,
) {
  final apiClient = ref.watch(wikipediaApiClientProvider);
  return WikipediaRemoteDataSource(apiClient: apiClient);
});
