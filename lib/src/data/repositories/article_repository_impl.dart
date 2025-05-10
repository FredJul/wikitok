import 'dart:async';

import 'package:async/async.dart';
import 'package:wikitok/src/data/datasources/remote/wikipedia_remote_data_source.dart';
import 'package:wikitok/src/data/models/wikipedia_article.dart';
import 'package:wikitok/src/domain/common/exceptions.dart';
import 'package:wikitok/src/domain/common/result_extension.dart';
import 'package:wikitok/src/domain/entities/article.dart';
import 'package:wikitok/src/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final WikipediaRemoteDataSource _wikipediaRemoteDataSource;

  ArticleRepositoryImpl({
    required WikipediaRemoteDataSource wikipediaRemoteDataSource,
  }) : _wikipediaRemoteDataSource = wikipediaRemoteDataSource;

  @override
  Future<Result<Article>> fetchSingleArticle({required String languageCode}) {
    // TODO: to add more intelligence to the repo, we could implement here a retry or cache mechanism

    return Result.capture<WikipediaArticle>(
      _wikipediaRemoteDataSource.fetchRandomWikipediaArticle(
        languageCode: languageCode,
      ),
    ).map<Article>((value) => _mapToArticle(value));
  }

  /// Maps data model to domain entity
  Article _mapToArticle(WikipediaArticle wikipediaArticle) {
    if (wikipediaArticle.originalimage == null) {
      throw UnexpectedException();
    }

    return Article(
      id: wikipediaArticle.pageId,
      title: wikipediaArticle.title,
      excerpt: wikipediaArticle.extract,
      url: wikipediaArticle.contentUrls.desktop.page,
      imageUrl: wikipediaArticle.originalimage!.source,
      imageHeight: wikipediaArticle.originalimage!.height,
      imageWidth: wikipediaArticle.originalimage!.width,
    );
  }
}
