// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datasource_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpClientHash() => r'333b5ea441c82facedda18bb59b7f46d82fd2ce4';

/// See also [httpClient].
@ProviderFor(httpClient)
final httpClientProvider = Provider<http.Client>.internal(
  httpClient,
  name: r'httpClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$httpClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef HttpClientRef = ProviderRef<http.Client>;
String _$sharedPreferencesHash() => r'48e60558ea6530114ea20ea03e69b9fb339ab129';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = FutureProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedPreferencesRef = FutureProviderRef<SharedPreferences>;
String _$sharedPreferencesAsyncHash() =>
    r'24c27489edf1c52c5baa3f6aacd905a58c9cfad9';

/// See also [sharedPreferencesAsync].
@ProviderFor(sharedPreferencesAsync)
final sharedPreferencesAsyncProvider =
    Provider<SharedPreferencesAsync>.internal(
      sharedPreferencesAsync,
      name: r'sharedPreferencesAsyncProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$sharedPreferencesAsyncHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SharedPreferencesAsyncRef = ProviderRef<SharedPreferencesAsync>;
String _$settingsLocalDataSourceHash() =>
    r'f21a2aab7c72376706424d9a02c0771839c4b79d';

/// See also [settingsLocalDataSource].
@ProviderFor(settingsLocalDataSource)
final settingsLocalDataSourceProvider =
    Provider<SettingsLocalDataSource>.internal(
      settingsLocalDataSource,
      name: r'settingsLocalDataSourceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$settingsLocalDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SettingsLocalDataSourceRef = ProviderRef<SettingsLocalDataSource>;
String _$wikipediaRemoteDataSourceHash() =>
    r'f9b7713dcdd0615f8b57e9be32c0cc3f9b19b83a';

/// See also [wikipediaRemoteDataSource].
@ProviderFor(wikipediaRemoteDataSource)
final wikipediaRemoteDataSourceProvider =
    Provider<WikipediaRemoteDataSource>.internal(
      wikipediaRemoteDataSource,
      name: r'wikipediaRemoteDataSourceProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$wikipediaRemoteDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WikipediaRemoteDataSourceRef = ProviderRef<WikipediaRemoteDataSource>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
