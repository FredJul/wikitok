import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wikitok/src/domain/common/result_extension.dart';
import 'package:wikitok/src/domain/entities/article.dart';
import 'package:wikitok/src/domain/providers/usecase_providers.dart';
import 'package:wikitok/src/presentation/common/failures/failures.dart';
import 'package:wikitok/src/presentation/feed/viewmodels/feed_state.dart';

class FeedViewModel extends AutoDisposeNotifier<FeedState> {
  CancelableOperation<Result<List<Article>>>? _fetchFeedOperation;

  @override
  FeedState build() {
    return const FeedState();
  }

  Future<void> fetchFeed({
    required String languageCode,
    bool emptyCurrentFeed = false,
  }) async {
    // Prevent initiating a new fetch if one is already in progress
    if (!emptyCurrentFeed && _fetchFeedOperation != null) {
      return;
    }

    if (emptyCurrentFeed) {
      // Cancel any ongoing fetch operation
      unawaited(_fetchFeedOperation?.cancel());
      _fetchFeedOperation = null;

      state = state.copyWith(status: FeedStatus.loading, feed: []);
    }

    _fetchFeedOperation = CancelableOperation.fromFuture(
      ref.read(fetchArticlesUseCaseProvider).call(languageCode: languageCode),
    );
    await _fetchFeedOperation!.value.then((articlesResult) {
      articlesResult.when(
        value: (articles) {
          state = state.copyWith(status: FeedStatus.success, feed: articles);
        },
        error: (e, t) {
          _fetchFeedOperation = null;
          state = state.copyWith(
            status: FeedStatus.failure,
            error: e.toFailure(),
          );
        },
      );
    });
  }
}

final feedViewModelProvider =
    NotifierProvider.autoDispose<FeedViewModel, FeedState>(FeedViewModel.new);
