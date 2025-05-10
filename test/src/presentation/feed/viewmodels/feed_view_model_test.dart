import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wikitok/src/domain/common/exceptions.dart';
import 'package:wikitok/src/domain/entities/article.dart';
import 'package:wikitok/src/domain/providers/usecase_providers.dart';
import 'package:wikitok/src/domain/usecases/fetch_articles_use_case.dart';
import 'package:wikitok/src/presentation/common/failures/failures.dart';
import 'package:wikitok/src/presentation/feed/viewmodels/feed_state.dart';
import 'package:wikitok/src/presentation/feed/viewmodels/feed_view_model.dart';

class MockFetchArticlesUseCase extends Mock implements FetchArticlesUseCase {}

void main() {
  late MockFetchArticlesUseCase mockFetchArticlesUseCase;
  late ProviderContainer container;

  setUp(() {
    mockFetchArticlesUseCase = MockFetchArticlesUseCase();

    // Override the fetchArticlesUsecaseProvider to use our mock
    container = ProviderContainer(
      overrides: [
        fetchArticlesUseCaseProvider.overrideWithValue(
          mockFetchArticlesUseCase,
        ),
      ],
    );

    addTearDown(container.dispose);
  });

  const testLanguage = 'en';
  final testArticles = [
    const Article(
      id: 1,
      title: 'Test Article',
      excerpt: 'Test excerpt',
      url: 'https://example.com',
      imageUrl: 'https://example.com/image.jpg',
      imageHeight: 200,
      imageWidth: 300,
    ),
    const Article(
      id: 2,
      title: 'Test Article',
      excerpt: 'Test excerpt',
      url: 'https://example.com',
      imageUrl: 'https://example.com/image.jpg',
      imageHeight: 200,
      imageWidth: 300,
    ),
  ];

  group('FeedViewModel', () {
    test('initial state should be correct', () {
      final initialState = container.read(feedViewModelProvider);
      expect(initialState, equals(const FeedState()));
    });

    test(
      'should emit loading and success states when fetchFeed succeeds',
      () async {
        when(
          () => mockFetchArticlesUseCase.call(languageCode: testLanguage),
        ).thenAnswer((_) async => Result.value(testArticles));

        await container
            .read(feedViewModelProvider.notifier)
            .fetchFeed(languageCode: testLanguage);

        expect(
          container.read(feedViewModelProvider).status,
          equals(FeedStatus.success),
        );
        expect(
          container.read(feedViewModelProvider).feed,
          equals(testArticles),
        );
      },
    );

    test(
      'should emit loading and failure states when fetchFeed fails',
      () async {
        when(
          () => mockFetchArticlesUseCase.call(languageCode: testLanguage),
        ).thenAnswer((_) async => Result.error(ServerException(500)));

        await container
            .read(feedViewModelProvider.notifier)
            .fetchFeed(languageCode: testLanguage);

        expect(
          container.read(feedViewModelProvider).status,
          equals(FeedStatus.failure),
        );
        expect(
          container.read(feedViewModelProvider).error,
          isA<ServerFailure>(),
        );
      },
    );
  });
}
