import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wikitok/src/domain/entities/article.dart';
import 'package:wikitok/src/presentation/common/failures/failures.dart';

part 'feed_state.freezed.dart';

enum FeedStatus { loading, success, failure }

@freezed
abstract class FeedState with _$FeedState {
  const factory FeedState({
    @Default(FeedStatus.loading) FeedStatus status,
    @Default(<Article>[]) List<Article> feed,
    Failure? error,
  }) = _FeedState;
}
