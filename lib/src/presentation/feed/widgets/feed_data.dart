import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wikitok/src/domain/entities/article.dart';
import 'package:wikitok/src/presentation/change_language/viewmodels/locale_view_model.dart';
import 'package:wikitok/src/presentation/feed/viewmodels/feed_view_model.dart';
import 'package:wikitok/src/presentation/feed/widgets/article_feed_item.dart';

class FeedData extends ConsumerStatefulWidget {
  final List<Article> _feed;

  const FeedData({super.key, required List<Article> feed}) : _feed = feed;

  @override
  ConsumerState<FeedData> createState() => _FeedDataState();
}

class _FeedDataState extends ConsumerState<FeedData> {
  static const int _prefetchCount = 5; // Number of images to prefetch
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(_onScroll);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _prefetchImages(0); // Prefetch initial images
  }

  void _onScroll() {
    final currentPage = _pageController.page?.toInt() ?? 0;
    final totalPages = widget._feed.length;
    final bool isNearEndPage = currentPage >= totalPages - 5;

    if (isNearEndPage) {
      final locale = ref.read(localeViewModelProvider);
      if (locale != null) {
        ref
            .read(feedViewModelProvider.notifier)
            .fetchFeed(languageCode: locale.languageCode);
      }
    }

    _prefetchImages(currentPage);
  }

  Future<void> _prefetchImages(int startPage) async {
    for (
      int i = startPage;
      i < startPage + _prefetchCount && i < widget._feed.length;
      i++
    ) {
      if (!mounted) return;

      final String imageUrl = widget._feed[i].imageUrl;
      await precacheImage(NetworkImage(imageUrl), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemCount: widget._feed.length,
      itemBuilder: (context, index) {
        final Article article = widget._feed[index];
        return ArticleFeedItem(article: article);
      },
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
