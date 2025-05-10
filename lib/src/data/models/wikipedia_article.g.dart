// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikipedia_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WikipediaArticle _$WikipediaArticleFromJson(Map<String, dynamic> json) =>
    _WikipediaArticle(
      type: json['type'] as String,
      title: json['title'] as String,
      displayTitle: json['displaytitle'] as String,
      wikibaseItem: json['wikibase_item'] as String,
      pageId: (json['pageid'] as num).toInt(),
      thumbnail:
          json['thumbnail'] == null
              ? null
              : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      originalimage:
          json['originalimage'] == null
              ? null
              : OriginalImage.fromJson(
                json['originalimage'] as Map<String, dynamic>,
              ),
      lang: json['lang'] as String,
      dir: json['dir'] as String,
      revision: json['revision'] as String,
      tid: json['tid'] as String,
      timestamp: json['timestamp'] as String,
      description: json['description'] as String?,
      descriptionSource: json['description_source'] as String?,
      contentUrls: ContentUrls.fromJson(
        json['content_urls'] as Map<String, dynamic>,
      ),
      extract: json['extract'] as String,
      extractHtml: json['extract_html'] as String,
    );

Map<String, dynamic> _$WikipediaArticleToJson(_WikipediaArticle instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'displaytitle': instance.displayTitle,
      'wikibase_item': instance.wikibaseItem,
      'pageid': instance.pageId,
      'thumbnail': instance.thumbnail,
      'originalimage': instance.originalimage,
      'lang': instance.lang,
      'dir': instance.dir,
      'revision': instance.revision,
      'tid': instance.tid,
      'timestamp': instance.timestamp,
      'description': instance.description,
      'description_source': instance.descriptionSource,
      'content_urls': instance.contentUrls,
      'extract': instance.extract,
      'extract_html': instance.extractHtml,
    };

_Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => _Thumbnail(
  source: json['source'] as String,
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
);

Map<String, dynamic> _$ThumbnailToJson(_Thumbnail instance) =>
    <String, dynamic>{
      'source': instance.source,
      'width': instance.width,
      'height': instance.height,
    };

_OriginalImage _$OriginalImageFromJson(Map<String, dynamic> json) =>
    _OriginalImage(
      source: json['source'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$OriginalImageToJson(_OriginalImage instance) =>
    <String, dynamic>{
      'source': instance.source,
      'width': instance.width,
      'height': instance.height,
    };

_ContentUrls _$ContentUrlsFromJson(Map<String, dynamic> json) => _ContentUrls(
  desktop: DesktopMobileUrls.fromJson(json['desktop'] as Map<String, dynamic>),
  mobile: DesktopMobileUrls.fromJson(json['mobile'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ContentUrlsToJson(_ContentUrls instance) =>
    <String, dynamic>{'desktop': instance.desktop, 'mobile': instance.mobile};

_DesktopMobileUrls _$DesktopMobileUrlsFromJson(Map<String, dynamic> json) =>
    _DesktopMobileUrls(
      page: json['page'] as String,
      revisions: json['revisions'] as String,
      edit: json['edit'] as String,
      talk: json['talk'] as String,
    );

Map<String, dynamic> _$DesktopMobileUrlsToJson(_DesktopMobileUrls instance) =>
    <String, dynamic>{
      'page': instance.page,
      'revisions': instance.revisions,
      'edit': instance.edit,
      'talk': instance.talk,
    };
