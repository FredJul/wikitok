import 'package:async/async.dart';
import 'package:wikitok/src/domain/common/exceptions.dart';
import 'package:wikitok/src/domain/entities/article.dart';
import 'package:wikitok/src/domain/repositories/article_repository.dart';

class FetchArticlesUseCase {
  final ArticleRepository _articleRepository;

  FetchArticlesUseCase({required ArticleRepository articleRepository})
    : _articleRepository = articleRepository;

  /// Returns only valid and unduplicated articles.
  /// [languageCode] is the language code to fetch articles in.
  /// [batchSize] is the number of articles to fetch in one go.
  /// If no valid articles are found, it returns an error which could be
  /// a [NetworkException], a [ServerException] or an [UnexpectedException].
  Future<Result<List<Article>>> call({
    required String languageCode,
    int batchSize = 20,
  }) async {
    final List<Article> validArticles = [];
    final Set<String> addedArticleTitles = {};

    // Fetch articles until we have enough valid ones
    for (int i = 0; i < batchSize * 2; i++) {
      final articleResult = await _articleRepository.fetchSingleArticle(
        languageCode: languageCode,
      );

      if (articleResult.isError) {
        // If we get an error, we stop fetching more articles
        return Result.error(articleResult.asError!.error);
      }

      final article = articleResult.asValue!.value;

      // Remove duplicates
      if (addedArticleTitles.contains(article.title)) continue;

      // Validate article has all required fields
      if (_isArticleValid(article)) {
        validArticles.add(article);
        addedArticleTitles.add(article.title);

        // Stop once we have enough articles
        if (validArticles.length >= batchSize) break;
      }
    }

    if (validArticles.isEmpty) {
      // Shouldn't really happen, but if no valid articles were found, result in an error
      return Result.error(UnexpectedException());
    }

    // Return whatever valid articles we found
    return Result.value(validArticles);
  }

  /// Checks if an article has all required fields
  bool _isArticleValid(Article article) {
    final bool hasTitle = article.title.isNotEmpty;
    final bool hasExcerpt = article.excerpt.isNotEmpty;
    final bool hasImage = article.imageUrl.isNotEmpty;

    return hasTitle && hasExcerpt && hasImage;
  }
}
