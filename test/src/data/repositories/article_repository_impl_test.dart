import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wikitok/src/data/datasources/remote/wikipedia_remote_data_source.dart';
import 'package:wikitok/src/data/models/wikipedia_article.dart';
import 'package:wikitok/src/data/repositories/article_repository_impl.dart';

class MockWikipediaRemoteDataSource extends Mock
    implements WikipediaRemoteDataSource {}

void main() {
  late ArticleRepositoryImpl articleRepository;
  late MockWikipediaRemoteDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockWikipediaRemoteDataSource();
    articleRepository = ArticleRepositoryImpl(
      wikipediaRemoteDataSource: mockDataSource,
    );
  });

  const testLanguage = 'en';

  const validWikipediaArticle = WikipediaArticle(
    type: 'standard',
    title: 'Test Article',
    displayTitle: 'Test Article',
    wikibaseItem: 'Q12345',
    pageId: 1,
    lang: testLanguage,
    dir: 'ltr',
    revision: '123456789',
    tid: 'abc123',
    timestamp: '2024-03-24T12:00:00Z',
    description: 'A test article for unit testing',
    descriptionSource: 'central',
    contentUrls: ContentUrls(
      desktop: DesktopMobileUrls(
        page: 'https://en.wikipedia.org/wiki/Test_Article',
        revisions: 'https://en.wikipedia.org/wiki/Test_Article?action=history',
        edit: 'https://en.wikipedia.org/wiki/Test_Article?action=edit',
        talk: 'https://en.wikipedia.org/wiki/Talk:Test_Article',
      ),
      mobile: DesktopMobileUrls(
        page: 'https://en.m.wikipedia.org/wiki/Test_Article',
        revisions:
            'https://en.m.wikipedia.org/wiki/Test_Article?action=history',
        edit: 'https://en.m.wikipedia.org/wiki/Test_Article?action=edit',
        talk: 'https://en.m.wikipedia.org/wiki/Talk:Test_Article',
      ),
    ),
    extract: 'This is a test article extract for testing purposes.',
    extractHtml: '<p>This is a test article extract for testing purposes.</p>',
    thumbnail: Thumbnail(
      source: 'https://example.com/thumbnail.jpg',
      width: 100,
      height: 100,
    ),
    originalimage: OriginalImage(
      source: 'https://example.com/image.jpg',
      width: 800,
      height: 600,
    ),
  );

  test('should return article when API call is successful', () async {
    when(
      () => mockDataSource.fetchRandomArticle(testLanguage),
    ).thenAnswer((_) async => validWikipediaArticle);

    final articleResult = await articleRepository.fetchSingleArticle(
      languageCode: testLanguage,
    );

    expect(articleResult.isValue, isTrue);

    final article = articleResult.asValue!.value;

    // Check that domain entity was correctly mapped from data model
    expect(article.title, equals('Test Article'));
    expect(
      article.excerpt,
      equals('This is a test article extract for testing purposes.'),
    );
    expect(article.url, equals('https://en.wikipedia.org/wiki/Test_Article'));
    expect(article.imageUrl, equals('https://example.com/image.jpg'));
    expect(article.imageWidth, equals(800));
    expect(article.imageHeight, equals(600));
  });
}
