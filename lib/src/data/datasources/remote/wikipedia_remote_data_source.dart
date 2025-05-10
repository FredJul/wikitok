import 'package:dio/dio.dart';
import 'package:wikitok/src/data/datasources/remote/dio_error_interceptor.dart';
import 'package:wikitok/src/data/datasources/remote/wikipedia_api_client.dart';
import 'package:wikitok/src/data/models/wikipedia_article.dart';
import 'package:wikitok/src/domain/common/exceptions.dart';

class WikipediaRemoteDataSource {
  final WikipediaApiClient _apiClient;

  WikipediaRemoteDataSource({WikipediaApiClient? apiClient})
    : _apiClient = apiClient ?? _createDefaultApiClient();

  static WikipediaApiClient _createDefaultApiClient() {
    final dio = Dio();
    dio.interceptors.add(DioErrorInterceptor());
    return WikipediaApiClient(dio);
  }

  /// Fetches a random Wikipedia article from the specified language.
  /// Throws [NetworkException] if there is a network error.
  /// Throws [ServerException] if the server returns an error.
  /// Throws [UnexpectedException] for any other errors.
  Future<WikipediaArticle> fetchRandomWikipediaArticle({
    required String languageCode,
  }) {
    return _apiClient.getRandomArticle(languageCode);
  }
}
