import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wikitok/src/data/datasources/local/settings_local_data_source.dart';
import 'package:wikitok/src/data/datasources/remote/wikipedia_remote_data_source.dart';

final httpClientProvider = Provider<http.Client>((ref) {
  final client = http.Client();
  ref.onDispose(() => client.close());
  return client;
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
  final httpClient = ref.watch(httpClientProvider);

  return WikipediaRemoteDataSource(httpClient: httpClient);
});
