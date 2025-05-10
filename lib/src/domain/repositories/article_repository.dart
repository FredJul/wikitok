import 'package:async/async.dart';
import 'package:wikitok/src/domain/entities/article.dart';

abstract class ArticleRepository {
  /// Fetches a single article without retries nor article validation.
  /// In case of failure, it returns a [Result] with an error which could be
  /// a [NetworkException], a [ServerException] or an [UnexpectedException].
  Future<Result<Article>> fetchSingleArticle({required String languageCode});
}
