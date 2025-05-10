import 'package:flutter/material.dart';
import 'package:wikitok/src/presentation/article/widgets/article_web_view.dart';

class ArticleWebViewScreen extends StatelessWidget {
  final String title;
  final String url;

  const ArticleWebViewScreen({
    super.key,
    required this.title,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ArticleWebView(url: url),
    );
  }
}
