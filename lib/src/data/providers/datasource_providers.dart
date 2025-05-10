import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wikitok/src/data/datasources/local/settings_local_data_source.dart';
import 'package:wikitok/src/data/datasources/remote/wikipedia_remote_data_source.dart';

part 'datasource_providers.g.dart';

@Riverpod(keepAlive: true)
http.Client httpClient(Ref ref) {
  final client = http.Client();
  ref.onDispose(() => client.close());
  return client;
}

@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) {
  return SharedPreferences.getInstance();
}

@Riverpod(keepAlive: true)
SharedPreferencesAsync sharedPreferencesAsync(Ref ref) {
  return SharedPreferencesAsync();
}

@Riverpod(keepAlive: true)
SettingsLocalDataSource settingsLocalDataSource(Ref ref) {
  final sharedPreferencesAsync = ref.watch(sharedPreferencesAsyncProvider);

  return SettingsLocalDataSource(
    sharedPreferencesAsync: sharedPreferencesAsync,
  );
}

@Riverpod(keepAlive: true)
WikipediaRemoteDataSource wikipediaRemoteDataSource(Ref ref) {
  final httpClient = ref.watch(httpClientProvider);

  return WikipediaRemoteDataSource(httpClient: httpClient);
}
