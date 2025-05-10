import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:wikitok/src/presentation/article/screens/article_web_view_screen.dart';
import 'package:wikitok/src/presentation/feed/screens/feed_screen.dart';

part 'router.g.dart';

@TypedGoRoute<FeedRoute>(path: '/')
class FeedRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      FeedScreen(key: state.pageKey);
}

@TypedGoRoute<ArticleWebViewRoute>(path: '/article')
class ArticleWebViewRoute extends GoRouteData {
  final String title;
  final String url;

  ArticleWebViewRoute({required this.title, required this.url});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ArticleWebViewScreen(key: state.pageKey, title: title, url: url);
}

final appRouter = GoRouter(routes: $appRoutes);
