import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
abstract class Article with _$Article {
  const factory Article({
    required int id,
    required String title,
    required String excerpt,
    required String url,
    required String imageUrl,
    required int imageHeight,
    required int imageWidth,
  }) = _Article;
}
