import 'package:freezed_annotation/freezed_annotation.dart';

part 'wikipedia_article.freezed.dart';
part 'wikipedia_article.g.dart';

@freezed
abstract class WikipediaArticle with _$WikipediaArticle {
  const factory WikipediaArticle({
    required String type,
    required String title,
    @JsonKey(name: 'displaytitle') required String displayTitle,
    @JsonKey(name: 'wikibase_item') required String wikibaseItem,
    @JsonKey(name: 'pageid') required int pageId,
    Thumbnail? thumbnail,
    OriginalImage? originalimage,
    required String lang,
    required String dir,
    required String revision,
    required String tid,
    required String timestamp,
    String? description,
    @JsonKey(name: 'description_source') String? descriptionSource,
    @JsonKey(name: 'content_urls') required ContentUrls contentUrls,
    required String extract,
    @JsonKey(name: 'extract_html') required String extractHtml,
  }) = _WikipediaArticle;

  factory WikipediaArticle.fromJson(Map<String, dynamic> json) =>
      _$WikipediaArticleFromJson(json);
}

@freezed
abstract class Thumbnail with _$Thumbnail {
  const factory Thumbnail({
    required String source,
    required int width,
    required int height,
  }) = _Thumbnail;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);
}

@freezed
abstract class OriginalImage with _$OriginalImage {
  const factory OriginalImage({
    required String source,
    required int width,
    required int height,
  }) = _OriginalImage;

  factory OriginalImage.fromJson(Map<String, dynamic> json) =>
      _$OriginalImageFromJson(json);
}

@freezed
abstract class ContentUrls with _$ContentUrls {
  const factory ContentUrls({
    required DesktopMobileUrls desktop,
    required DesktopMobileUrls mobile,
  }) = _ContentUrls;

  factory ContentUrls.fromJson(Map<String, dynamic> json) =>
      _$ContentUrlsFromJson(json);
}

@freezed
abstract class DesktopMobileUrls with _$DesktopMobileUrls {
  const factory DesktopMobileUrls({
    required String page,
    required String revisions,
    required String edit,
    required String talk,
  }) = _DesktopMobileUrls;

  factory DesktopMobileUrls.fromJson(Map<String, dynamic> json) =>
      _$DesktopMobileUrlsFromJson(json);
}
