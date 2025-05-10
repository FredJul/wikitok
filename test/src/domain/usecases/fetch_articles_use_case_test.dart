import 'package:async/async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wikitok/src/domain/common/exceptions.dart';
import 'package:wikitok/src/domain/entities/article.dart';
import 'package:wikitok/src/domain/repositories/article_repository.dart';
import 'package:wikitok/src/domain/usecases/fetch_articles_use_case.dart';

class MockArticleRepository extends Mock implements ArticleRepository {}

void main() {
  late FetchArticlesUseCase fetchArticlesUseCase;
  late MockArticleRepository mockArticleRepository;

  setUp(() {
    mockArticleRepository = MockArticleRepository();
    fetchArticlesUseCase = FetchArticlesUseCase(
      articleRepository: mockArticleRepository,
    );
  });

  const testLanguage = 'en';
  const article = Article(
    id: 1,
    title: 'Test Article',
    excerpt: 'Test excerpt',
    url: 'https://example.com',
    imageUrl: 'https://example.com/image.jpg',
    imageHeight: 200,
    imageWidth: 300,
  );

  test(
    'should get articles from the repository and deduplicate them',
    () async {
      when(
        () => mockArticleRepository.fetchSingleArticle(
          languageCode: testLanguage,
        ),
      ).thenAnswer((_) async => Result.value(article));

      final result = await fetchArticlesUseCase.call(
        languageCode: testLanguage,
        batchSize: 2,
      );

      expect(result.isValue, isTrue);
      expect(
        result.asValue!.value,
        // Only one article is returned because it is deduplicated
        equals([article]),
      );
    },
  );

  test('should return error when repository fails', () async {
    when(
      () =>
          mockArticleRepository.fetchSingleArticle(languageCode: testLanguage),
    ).thenAnswer((_) async => Result.error(ServerException(500)));

    final articlesResult = await fetchArticlesUseCase.call(
      languageCode: testLanguage,
    );
    expect(articlesResult.isError, isTrue);

    expect(articlesResult.asError!.error, isA<ServerException>());
  });
}
