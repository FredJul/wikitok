import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:share_plus/share_plus.dart';
import 'package:wikitok/src/domain/entities/article.dart';
import 'package:wikitok/src/presentation/common/l10n/l10n.dart';
import 'package:wikitok/src/presentation/common/router/router.dart';

class ArticleFeedItem extends StatelessWidget {
  final Article _article;

  const ArticleFeedItem({super.key, required Article article})
    : _article = article;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: _ArticleBackgroundImage(
            imageUrl: _article.imageUrl,
            imageHeight: _article.imageHeight,
            imageWidth: _article.imageWidth,
          ),
        ),

        // Gradient overlay
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.7),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),

        Positioned(
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
          child: _ArticleContentAndActions(article: _article),
        ),
      ],
    );
  }
}

class _ArticleBackgroundImage extends StatelessWidget {
  final String _imageUrl;
  final int _imageHeight;
  final int _imageWidth;

  const _ArticleBackgroundImage({
    required String imageUrl,
    required int imageHeight,
    required int imageWidth,
  }) : _imageUrl = imageUrl,
       _imageHeight = imageHeight,
       _imageWidth = imageWidth;

  @override
  Widget build(BuildContext context) {
    // Optimize images loading and bandwidth
    // https://medium.com/make-android/save-your-memory-usage-by-optimizing-network-image-in-flutter-cbc9f8af47cd
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final aspectRatio = _imageWidth / _imageHeight;

    int cacheWidth;
    int cacheHeight;

    if (screenWidth / screenHeight > aspectRatio) {
      // Screen is wider than the image aspect ratio
      cacheWidth = screenWidth.round();
      cacheHeight = (cacheWidth / aspectRatio).round();
    } else {
      // Screen is taller than the image aspect ratio
      cacheHeight = screenHeight.round();
      cacheWidth = (cacheHeight * aspectRatio).round();
    }

    return Image.network(
      _imageUrl,
      // cacheHeight: cacheHeight,
      // cacheWidth: cacheWidth,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return const Center(child: CircularProgressIndicator.adaptive());
      },
      errorBuilder:
          (context, error, stackTrace) => Container(
            color: Colors.grey[900],
            child: Center(
              child: Icon(Icons.image, size: 100, color: Colors.grey[700]),
            ),
          ),
    );
  }
}

class _ArticleContentAndActions extends StatelessWidget {
  const _ArticleContentAndActions({required Article article})
    : _article = article;

  final Article _article;

  void _share(String content) {
    SharePlus.instance.share(ShareParams(text: content));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_article.title, style: Theme.of(context).textTheme.headlineSmall),
        const Gap(16.0),
        Text(
          _article.excerpt,
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const Gap(16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilledButton(
              onPressed:
                  () => ArticleWebViewRoute(
                    title: _article.title,
                    url: _article.url,
                  ).push(context),
              child: Text(context.l10n.articleReadMoreButton),
            ),
            IconButton(
              icon: const Icon(Icons.share, color: Colors.white),
              onPressed:
                  () => _share(
                    context.l10n.articleShareContent(
                      _article.title,
                      _article.excerpt,
                      _article.url,
                    ),
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
