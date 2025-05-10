// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$feedRoute, $articleWebViewRoute];

RouteBase get $feedRoute =>
    GoRouteData.$route(path: '/', factory: $FeedRouteExtension._fromState);

extension $FeedRouteExtension on FeedRoute {
  static FeedRoute _fromState(GoRouterState state) => FeedRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $articleWebViewRoute => GoRouteData.$route(
  path: '/article',

  factory: $ArticleWebViewRouteExtension._fromState,
);

extension $ArticleWebViewRouteExtension on ArticleWebViewRoute {
  static ArticleWebViewRoute _fromState(GoRouterState state) =>
      ArticleWebViewRoute(
        title: state.uri.queryParameters['title']!,
        url: state.uri.queryParameters['url']!,
      );

  String get location => GoRouteData.$location(
    '/article',
    queryParams: {'title': title, 'url': url},
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
