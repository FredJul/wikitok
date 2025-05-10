import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wikitok/src/data/models/wikipedia_article.dart';
import 'package:wikitok/src/domain/common/exceptions.dart';

class WikipediaRemoteDataSource {
  final http.Client _httpClient;

  WikipediaRemoteDataSource({required http.Client httpClient})
    : _httpClient = httpClient;

  /// Fetches a random Wikipedia article from the specified language.
  /// Throws [NetworkException] if there is a network error.
  /// Throws [ServerException] if the server returns an error.
  /// Throws [UnexpectedException] for any other errors.
  Future<WikipediaArticle> fetchRandomWikipediaArticle({
    required String languageCode,
  }) async {
    final baseUrl = '$languageCode.wikipedia.org';
    final randomWikipediaArticleRequest = Uri.https(
      baseUrl,
      'api/rest_v1/page/random/summary',
    );

    try {
      final randomWikipediaArticleResponse = await _httpClient.get(
        randomWikipediaArticleRequest,
      );

      if (randomWikipediaArticleResponse.statusCode != 200) {
        throw ServerException(randomWikipediaArticleResponse.statusCode);
      }

      return WikipediaArticle.fromJson(
        jsonDecode(randomWikipediaArticleResponse.body) as Map<String, dynamic>,
      );
    } on http.ClientException {
      throw NetworkException();
    } catch (_) {
      throw UnexpectedException();
    }
  }
}
