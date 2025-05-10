// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wikipedia_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WikipediaArticle {

 String get type; String get title;@JsonKey(name: 'displaytitle') String get displayTitle;@JsonKey(name: 'wikibase_item') String get wikibaseItem;@JsonKey(name: 'pageid') int get pageId; Thumbnail? get thumbnail; OriginalImage? get originalimage; String get lang; String get dir; String get revision; String get tid; String get timestamp; String? get description;@JsonKey(name: 'description_source') String? get descriptionSource;@JsonKey(name: 'content_urls') ContentUrls get contentUrls; String get extract;@JsonKey(name: 'extract_html') String get extractHtml;
/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WikipediaArticleCopyWith<WikipediaArticle> get copyWith => _$WikipediaArticleCopyWithImpl<WikipediaArticle>(this as WikipediaArticle, _$identity);

  /// Serializes this WikipediaArticle to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WikipediaArticle&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.displayTitle, displayTitle) || other.displayTitle == displayTitle)&&(identical(other.wikibaseItem, wikibaseItem) || other.wikibaseItem == wikibaseItem)&&(identical(other.pageId, pageId) || other.pageId == pageId)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.originalimage, originalimage) || other.originalimage == originalimage)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.dir, dir) || other.dir == dir)&&(identical(other.revision, revision) || other.revision == revision)&&(identical(other.tid, tid) || other.tid == tid)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionSource, descriptionSource) || other.descriptionSource == descriptionSource)&&(identical(other.contentUrls, contentUrls) || other.contentUrls == contentUrls)&&(identical(other.extract, extract) || other.extract == extract)&&(identical(other.extractHtml, extractHtml) || other.extractHtml == extractHtml));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,displayTitle,wikibaseItem,pageId,thumbnail,originalimage,lang,dir,revision,tid,timestamp,description,descriptionSource,contentUrls,extract,extractHtml);

@override
String toString() {
  return 'WikipediaArticle(type: $type, title: $title, displayTitle: $displayTitle, wikibaseItem: $wikibaseItem, pageId: $pageId, thumbnail: $thumbnail, originalimage: $originalimage, lang: $lang, dir: $dir, revision: $revision, tid: $tid, timestamp: $timestamp, description: $description, descriptionSource: $descriptionSource, contentUrls: $contentUrls, extract: $extract, extractHtml: $extractHtml)';
}


}

/// @nodoc
abstract mixin class $WikipediaArticleCopyWith<$Res>  {
  factory $WikipediaArticleCopyWith(WikipediaArticle value, $Res Function(WikipediaArticle) _then) = _$WikipediaArticleCopyWithImpl;
@useResult
$Res call({
 String type, String title,@JsonKey(name: 'displaytitle') String displayTitle,@JsonKey(name: 'wikibase_item') String wikibaseItem,@JsonKey(name: 'pageid') int pageId, Thumbnail? thumbnail, OriginalImage? originalimage, String lang, String dir, String revision, String tid, String timestamp, String? description,@JsonKey(name: 'description_source') String? descriptionSource,@JsonKey(name: 'content_urls') ContentUrls contentUrls, String extract,@JsonKey(name: 'extract_html') String extractHtml
});


$ThumbnailCopyWith<$Res>? get thumbnail;$OriginalImageCopyWith<$Res>? get originalimage;$ContentUrlsCopyWith<$Res> get contentUrls;

}
/// @nodoc
class _$WikipediaArticleCopyWithImpl<$Res>
    implements $WikipediaArticleCopyWith<$Res> {
  _$WikipediaArticleCopyWithImpl(this._self, this._then);

  final WikipediaArticle _self;
  final $Res Function(WikipediaArticle) _then;

/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? displayTitle = null,Object? wikibaseItem = null,Object? pageId = null,Object? thumbnail = freezed,Object? originalimage = freezed,Object? lang = null,Object? dir = null,Object? revision = null,Object? tid = null,Object? timestamp = null,Object? description = freezed,Object? descriptionSource = freezed,Object? contentUrls = null,Object? extract = null,Object? extractHtml = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,displayTitle: null == displayTitle ? _self.displayTitle : displayTitle // ignore: cast_nullable_to_non_nullable
as String,wikibaseItem: null == wikibaseItem ? _self.wikibaseItem : wikibaseItem // ignore: cast_nullable_to_non_nullable
as String,pageId: null == pageId ? _self.pageId : pageId // ignore: cast_nullable_to_non_nullable
as int,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as Thumbnail?,originalimage: freezed == originalimage ? _self.originalimage : originalimage // ignore: cast_nullable_to_non_nullable
as OriginalImage?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,dir: null == dir ? _self.dir : dir // ignore: cast_nullable_to_non_nullable
as String,revision: null == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as String,tid: null == tid ? _self.tid : tid // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionSource: freezed == descriptionSource ? _self.descriptionSource : descriptionSource // ignore: cast_nullable_to_non_nullable
as String?,contentUrls: null == contentUrls ? _self.contentUrls : contentUrls // ignore: cast_nullable_to_non_nullable
as ContentUrls,extract: null == extract ? _self.extract : extract // ignore: cast_nullable_to_non_nullable
as String,extractHtml: null == extractHtml ? _self.extractHtml : extractHtml // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThumbnailCopyWith<$Res>? get thumbnail {
    if (_self.thumbnail == null) {
    return null;
  }

  return $ThumbnailCopyWith<$Res>(_self.thumbnail!, (value) {
    return _then(_self.copyWith(thumbnail: value));
  });
}/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalImageCopyWith<$Res>? get originalimage {
    if (_self.originalimage == null) {
    return null;
  }

  return $OriginalImageCopyWith<$Res>(_self.originalimage!, (value) {
    return _then(_self.copyWith(originalimage: value));
  });
}/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentUrlsCopyWith<$Res> get contentUrls {
  
  return $ContentUrlsCopyWith<$Res>(_self.contentUrls, (value) {
    return _then(_self.copyWith(contentUrls: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _WikipediaArticle implements WikipediaArticle {
  const _WikipediaArticle({required this.type, required this.title, @JsonKey(name: 'displaytitle') required this.displayTitle, @JsonKey(name: 'wikibase_item') required this.wikibaseItem, @JsonKey(name: 'pageid') required this.pageId, this.thumbnail, this.originalimage, required this.lang, required this.dir, required this.revision, required this.tid, required this.timestamp, this.description, @JsonKey(name: 'description_source') this.descriptionSource, @JsonKey(name: 'content_urls') required this.contentUrls, required this.extract, @JsonKey(name: 'extract_html') required this.extractHtml});
  factory _WikipediaArticle.fromJson(Map<String, dynamic> json) => _$WikipediaArticleFromJson(json);

@override final  String type;
@override final  String title;
@override@JsonKey(name: 'displaytitle') final  String displayTitle;
@override@JsonKey(name: 'wikibase_item') final  String wikibaseItem;
@override@JsonKey(name: 'pageid') final  int pageId;
@override final  Thumbnail? thumbnail;
@override final  OriginalImage? originalimage;
@override final  String lang;
@override final  String dir;
@override final  String revision;
@override final  String tid;
@override final  String timestamp;
@override final  String? description;
@override@JsonKey(name: 'description_source') final  String? descriptionSource;
@override@JsonKey(name: 'content_urls') final  ContentUrls contentUrls;
@override final  String extract;
@override@JsonKey(name: 'extract_html') final  String extractHtml;

/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WikipediaArticleCopyWith<_WikipediaArticle> get copyWith => __$WikipediaArticleCopyWithImpl<_WikipediaArticle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WikipediaArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WikipediaArticle&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.displayTitle, displayTitle) || other.displayTitle == displayTitle)&&(identical(other.wikibaseItem, wikibaseItem) || other.wikibaseItem == wikibaseItem)&&(identical(other.pageId, pageId) || other.pageId == pageId)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.originalimage, originalimage) || other.originalimage == originalimage)&&(identical(other.lang, lang) || other.lang == lang)&&(identical(other.dir, dir) || other.dir == dir)&&(identical(other.revision, revision) || other.revision == revision)&&(identical(other.tid, tid) || other.tid == tid)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionSource, descriptionSource) || other.descriptionSource == descriptionSource)&&(identical(other.contentUrls, contentUrls) || other.contentUrls == contentUrls)&&(identical(other.extract, extract) || other.extract == extract)&&(identical(other.extractHtml, extractHtml) || other.extractHtml == extractHtml));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,displayTitle,wikibaseItem,pageId,thumbnail,originalimage,lang,dir,revision,tid,timestamp,description,descriptionSource,contentUrls,extract,extractHtml);

@override
String toString() {
  return 'WikipediaArticle(type: $type, title: $title, displayTitle: $displayTitle, wikibaseItem: $wikibaseItem, pageId: $pageId, thumbnail: $thumbnail, originalimage: $originalimage, lang: $lang, dir: $dir, revision: $revision, tid: $tid, timestamp: $timestamp, description: $description, descriptionSource: $descriptionSource, contentUrls: $contentUrls, extract: $extract, extractHtml: $extractHtml)';
}


}

/// @nodoc
abstract mixin class _$WikipediaArticleCopyWith<$Res> implements $WikipediaArticleCopyWith<$Res> {
  factory _$WikipediaArticleCopyWith(_WikipediaArticle value, $Res Function(_WikipediaArticle) _then) = __$WikipediaArticleCopyWithImpl;
@override @useResult
$Res call({
 String type, String title,@JsonKey(name: 'displaytitle') String displayTitle,@JsonKey(name: 'wikibase_item') String wikibaseItem,@JsonKey(name: 'pageid') int pageId, Thumbnail? thumbnail, OriginalImage? originalimage, String lang, String dir, String revision, String tid, String timestamp, String? description,@JsonKey(name: 'description_source') String? descriptionSource,@JsonKey(name: 'content_urls') ContentUrls contentUrls, String extract,@JsonKey(name: 'extract_html') String extractHtml
});


@override $ThumbnailCopyWith<$Res>? get thumbnail;@override $OriginalImageCopyWith<$Res>? get originalimage;@override $ContentUrlsCopyWith<$Res> get contentUrls;

}
/// @nodoc
class __$WikipediaArticleCopyWithImpl<$Res>
    implements _$WikipediaArticleCopyWith<$Res> {
  __$WikipediaArticleCopyWithImpl(this._self, this._then);

  final _WikipediaArticle _self;
  final $Res Function(_WikipediaArticle) _then;

/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? displayTitle = null,Object? wikibaseItem = null,Object? pageId = null,Object? thumbnail = freezed,Object? originalimage = freezed,Object? lang = null,Object? dir = null,Object? revision = null,Object? tid = null,Object? timestamp = null,Object? description = freezed,Object? descriptionSource = freezed,Object? contentUrls = null,Object? extract = null,Object? extractHtml = null,}) {
  return _then(_WikipediaArticle(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,displayTitle: null == displayTitle ? _self.displayTitle : displayTitle // ignore: cast_nullable_to_non_nullable
as String,wikibaseItem: null == wikibaseItem ? _self.wikibaseItem : wikibaseItem // ignore: cast_nullable_to_non_nullable
as String,pageId: null == pageId ? _self.pageId : pageId // ignore: cast_nullable_to_non_nullable
as int,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as Thumbnail?,originalimage: freezed == originalimage ? _self.originalimage : originalimage // ignore: cast_nullable_to_non_nullable
as OriginalImage?,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as String,dir: null == dir ? _self.dir : dir // ignore: cast_nullable_to_non_nullable
as String,revision: null == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as String,tid: null == tid ? _self.tid : tid // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,descriptionSource: freezed == descriptionSource ? _self.descriptionSource : descriptionSource // ignore: cast_nullable_to_non_nullable
as String?,contentUrls: null == contentUrls ? _self.contentUrls : contentUrls // ignore: cast_nullable_to_non_nullable
as ContentUrls,extract: null == extract ? _self.extract : extract // ignore: cast_nullable_to_non_nullable
as String,extractHtml: null == extractHtml ? _self.extractHtml : extractHtml // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThumbnailCopyWith<$Res>? get thumbnail {
    if (_self.thumbnail == null) {
    return null;
  }

  return $ThumbnailCopyWith<$Res>(_self.thumbnail!, (value) {
    return _then(_self.copyWith(thumbnail: value));
  });
}/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalImageCopyWith<$Res>? get originalimage {
    if (_self.originalimage == null) {
    return null;
  }

  return $OriginalImageCopyWith<$Res>(_self.originalimage!, (value) {
    return _then(_self.copyWith(originalimage: value));
  });
}/// Create a copy of WikipediaArticle
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContentUrlsCopyWith<$Res> get contentUrls {
  
  return $ContentUrlsCopyWith<$Res>(_self.contentUrls, (value) {
    return _then(_self.copyWith(contentUrls: value));
  });
}
}


/// @nodoc
mixin _$Thumbnail {

 String get source; int get width; int get height;
/// Create a copy of Thumbnail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThumbnailCopyWith<Thumbnail> get copyWith => _$ThumbnailCopyWithImpl<Thumbnail>(this as Thumbnail, _$identity);

  /// Serializes this Thumbnail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Thumbnail&&(identical(other.source, source) || other.source == source)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,width,height);

@override
String toString() {
  return 'Thumbnail(source: $source, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $ThumbnailCopyWith<$Res>  {
  factory $ThumbnailCopyWith(Thumbnail value, $Res Function(Thumbnail) _then) = _$ThumbnailCopyWithImpl;
@useResult
$Res call({
 String source, int width, int height
});




}
/// @nodoc
class _$ThumbnailCopyWithImpl<$Res>
    implements $ThumbnailCopyWith<$Res> {
  _$ThumbnailCopyWithImpl(this._self, this._then);

  final Thumbnail _self;
  final $Res Function(Thumbnail) _then;

/// Create a copy of Thumbnail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? width = null,Object? height = null,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Thumbnail implements Thumbnail {
  const _Thumbnail({required this.source, required this.width, required this.height});
  factory _Thumbnail.fromJson(Map<String, dynamic> json) => _$ThumbnailFromJson(json);

@override final  String source;
@override final  int width;
@override final  int height;

/// Create a copy of Thumbnail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThumbnailCopyWith<_Thumbnail> get copyWith => __$ThumbnailCopyWithImpl<_Thumbnail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThumbnailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Thumbnail&&(identical(other.source, source) || other.source == source)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,width,height);

@override
String toString() {
  return 'Thumbnail(source: $source, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$ThumbnailCopyWith<$Res> implements $ThumbnailCopyWith<$Res> {
  factory _$ThumbnailCopyWith(_Thumbnail value, $Res Function(_Thumbnail) _then) = __$ThumbnailCopyWithImpl;
@override @useResult
$Res call({
 String source, int width, int height
});




}
/// @nodoc
class __$ThumbnailCopyWithImpl<$Res>
    implements _$ThumbnailCopyWith<$Res> {
  __$ThumbnailCopyWithImpl(this._self, this._then);

  final _Thumbnail _self;
  final $Res Function(_Thumbnail) _then;

/// Create a copy of Thumbnail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? width = null,Object? height = null,}) {
  return _then(_Thumbnail(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OriginalImage {

 String get source; int get width; int get height;
/// Create a copy of OriginalImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OriginalImageCopyWith<OriginalImage> get copyWith => _$OriginalImageCopyWithImpl<OriginalImage>(this as OriginalImage, _$identity);

  /// Serializes this OriginalImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OriginalImage&&(identical(other.source, source) || other.source == source)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,width,height);

@override
String toString() {
  return 'OriginalImage(source: $source, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $OriginalImageCopyWith<$Res>  {
  factory $OriginalImageCopyWith(OriginalImage value, $Res Function(OriginalImage) _then) = _$OriginalImageCopyWithImpl;
@useResult
$Res call({
 String source, int width, int height
});




}
/// @nodoc
class _$OriginalImageCopyWithImpl<$Res>
    implements $OriginalImageCopyWith<$Res> {
  _$OriginalImageCopyWithImpl(this._self, this._then);

  final OriginalImage _self;
  final $Res Function(OriginalImage) _then;

/// Create a copy of OriginalImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? width = null,Object? height = null,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _OriginalImage implements OriginalImage {
  const _OriginalImage({required this.source, required this.width, required this.height});
  factory _OriginalImage.fromJson(Map<String, dynamic> json) => _$OriginalImageFromJson(json);

@override final  String source;
@override final  int width;
@override final  int height;

/// Create a copy of OriginalImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OriginalImageCopyWith<_OriginalImage> get copyWith => __$OriginalImageCopyWithImpl<_OriginalImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OriginalImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OriginalImage&&(identical(other.source, source) || other.source == source)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,width,height);

@override
String toString() {
  return 'OriginalImage(source: $source, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$OriginalImageCopyWith<$Res> implements $OriginalImageCopyWith<$Res> {
  factory _$OriginalImageCopyWith(_OriginalImage value, $Res Function(_OriginalImage) _then) = __$OriginalImageCopyWithImpl;
@override @useResult
$Res call({
 String source, int width, int height
});




}
/// @nodoc
class __$OriginalImageCopyWithImpl<$Res>
    implements _$OriginalImageCopyWith<$Res> {
  __$OriginalImageCopyWithImpl(this._self, this._then);

  final _OriginalImage _self;
  final $Res Function(_OriginalImage) _then;

/// Create a copy of OriginalImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? width = null,Object? height = null,}) {
  return _then(_OriginalImage(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ContentUrls {

 DesktopMobileUrls get desktop; DesktopMobileUrls get mobile;
/// Create a copy of ContentUrls
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentUrlsCopyWith<ContentUrls> get copyWith => _$ContentUrlsCopyWithImpl<ContentUrls>(this as ContentUrls, _$identity);

  /// Serializes this ContentUrls to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentUrls&&(identical(other.desktop, desktop) || other.desktop == desktop)&&(identical(other.mobile, mobile) || other.mobile == mobile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,desktop,mobile);

@override
String toString() {
  return 'ContentUrls(desktop: $desktop, mobile: $mobile)';
}


}

/// @nodoc
abstract mixin class $ContentUrlsCopyWith<$Res>  {
  factory $ContentUrlsCopyWith(ContentUrls value, $Res Function(ContentUrls) _then) = _$ContentUrlsCopyWithImpl;
@useResult
$Res call({
 DesktopMobileUrls desktop, DesktopMobileUrls mobile
});


$DesktopMobileUrlsCopyWith<$Res> get desktop;$DesktopMobileUrlsCopyWith<$Res> get mobile;

}
/// @nodoc
class _$ContentUrlsCopyWithImpl<$Res>
    implements $ContentUrlsCopyWith<$Res> {
  _$ContentUrlsCopyWithImpl(this._self, this._then);

  final ContentUrls _self;
  final $Res Function(ContentUrls) _then;

/// Create a copy of ContentUrls
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? desktop = null,Object? mobile = null,}) {
  return _then(_self.copyWith(
desktop: null == desktop ? _self.desktop : desktop // ignore: cast_nullable_to_non_nullable
as DesktopMobileUrls,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as DesktopMobileUrls,
  ));
}
/// Create a copy of ContentUrls
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DesktopMobileUrlsCopyWith<$Res> get desktop {
  
  return $DesktopMobileUrlsCopyWith<$Res>(_self.desktop, (value) {
    return _then(_self.copyWith(desktop: value));
  });
}/// Create a copy of ContentUrls
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DesktopMobileUrlsCopyWith<$Res> get mobile {
  
  return $DesktopMobileUrlsCopyWith<$Res>(_self.mobile, (value) {
    return _then(_self.copyWith(mobile: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ContentUrls implements ContentUrls {
  const _ContentUrls({required this.desktop, required this.mobile});
  factory _ContentUrls.fromJson(Map<String, dynamic> json) => _$ContentUrlsFromJson(json);

@override final  DesktopMobileUrls desktop;
@override final  DesktopMobileUrls mobile;

/// Create a copy of ContentUrls
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentUrlsCopyWith<_ContentUrls> get copyWith => __$ContentUrlsCopyWithImpl<_ContentUrls>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentUrlsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentUrls&&(identical(other.desktop, desktop) || other.desktop == desktop)&&(identical(other.mobile, mobile) || other.mobile == mobile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,desktop,mobile);

@override
String toString() {
  return 'ContentUrls(desktop: $desktop, mobile: $mobile)';
}


}

/// @nodoc
abstract mixin class _$ContentUrlsCopyWith<$Res> implements $ContentUrlsCopyWith<$Res> {
  factory _$ContentUrlsCopyWith(_ContentUrls value, $Res Function(_ContentUrls) _then) = __$ContentUrlsCopyWithImpl;
@override @useResult
$Res call({
 DesktopMobileUrls desktop, DesktopMobileUrls mobile
});


@override $DesktopMobileUrlsCopyWith<$Res> get desktop;@override $DesktopMobileUrlsCopyWith<$Res> get mobile;

}
/// @nodoc
class __$ContentUrlsCopyWithImpl<$Res>
    implements _$ContentUrlsCopyWith<$Res> {
  __$ContentUrlsCopyWithImpl(this._self, this._then);

  final _ContentUrls _self;
  final $Res Function(_ContentUrls) _then;

/// Create a copy of ContentUrls
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? desktop = null,Object? mobile = null,}) {
  return _then(_ContentUrls(
desktop: null == desktop ? _self.desktop : desktop // ignore: cast_nullable_to_non_nullable
as DesktopMobileUrls,mobile: null == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as DesktopMobileUrls,
  ));
}

/// Create a copy of ContentUrls
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DesktopMobileUrlsCopyWith<$Res> get desktop {
  
  return $DesktopMobileUrlsCopyWith<$Res>(_self.desktop, (value) {
    return _then(_self.copyWith(desktop: value));
  });
}/// Create a copy of ContentUrls
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DesktopMobileUrlsCopyWith<$Res> get mobile {
  
  return $DesktopMobileUrlsCopyWith<$Res>(_self.mobile, (value) {
    return _then(_self.copyWith(mobile: value));
  });
}
}


/// @nodoc
mixin _$DesktopMobileUrls {

 String get page; String get revisions; String get edit; String get talk;
/// Create a copy of DesktopMobileUrls
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DesktopMobileUrlsCopyWith<DesktopMobileUrls> get copyWith => _$DesktopMobileUrlsCopyWithImpl<DesktopMobileUrls>(this as DesktopMobileUrls, _$identity);

  /// Serializes this DesktopMobileUrls to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DesktopMobileUrls&&(identical(other.page, page) || other.page == page)&&(identical(other.revisions, revisions) || other.revisions == revisions)&&(identical(other.edit, edit) || other.edit == edit)&&(identical(other.talk, talk) || other.talk == talk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,revisions,edit,talk);

@override
String toString() {
  return 'DesktopMobileUrls(page: $page, revisions: $revisions, edit: $edit, talk: $talk)';
}


}

/// @nodoc
abstract mixin class $DesktopMobileUrlsCopyWith<$Res>  {
  factory $DesktopMobileUrlsCopyWith(DesktopMobileUrls value, $Res Function(DesktopMobileUrls) _then) = _$DesktopMobileUrlsCopyWithImpl;
@useResult
$Res call({
 String page, String revisions, String edit, String talk
});




}
/// @nodoc
class _$DesktopMobileUrlsCopyWithImpl<$Res>
    implements $DesktopMobileUrlsCopyWith<$Res> {
  _$DesktopMobileUrlsCopyWithImpl(this._self, this._then);

  final DesktopMobileUrls _self;
  final $Res Function(DesktopMobileUrls) _then;

/// Create a copy of DesktopMobileUrls
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? revisions = null,Object? edit = null,Object? talk = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String,revisions: null == revisions ? _self.revisions : revisions // ignore: cast_nullable_to_non_nullable
as String,edit: null == edit ? _self.edit : edit // ignore: cast_nullable_to_non_nullable
as String,talk: null == talk ? _self.talk : talk // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DesktopMobileUrls implements DesktopMobileUrls {
  const _DesktopMobileUrls({required this.page, required this.revisions, required this.edit, required this.talk});
  factory _DesktopMobileUrls.fromJson(Map<String, dynamic> json) => _$DesktopMobileUrlsFromJson(json);

@override final  String page;
@override final  String revisions;
@override final  String edit;
@override final  String talk;

/// Create a copy of DesktopMobileUrls
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DesktopMobileUrlsCopyWith<_DesktopMobileUrls> get copyWith => __$DesktopMobileUrlsCopyWithImpl<_DesktopMobileUrls>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DesktopMobileUrlsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DesktopMobileUrls&&(identical(other.page, page) || other.page == page)&&(identical(other.revisions, revisions) || other.revisions == revisions)&&(identical(other.edit, edit) || other.edit == edit)&&(identical(other.talk, talk) || other.talk == talk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,revisions,edit,talk);

@override
String toString() {
  return 'DesktopMobileUrls(page: $page, revisions: $revisions, edit: $edit, talk: $talk)';
}


}

/// @nodoc
abstract mixin class _$DesktopMobileUrlsCopyWith<$Res> implements $DesktopMobileUrlsCopyWith<$Res> {
  factory _$DesktopMobileUrlsCopyWith(_DesktopMobileUrls value, $Res Function(_DesktopMobileUrls) _then) = __$DesktopMobileUrlsCopyWithImpl;
@override @useResult
$Res call({
 String page, String revisions, String edit, String talk
});




}
/// @nodoc
class __$DesktopMobileUrlsCopyWithImpl<$Res>
    implements _$DesktopMobileUrlsCopyWith<$Res> {
  __$DesktopMobileUrlsCopyWithImpl(this._self, this._then);

  final _DesktopMobileUrls _self;
  final $Res Function(_DesktopMobileUrls) _then;

/// Create a copy of DesktopMobileUrls
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? revisions = null,Object? edit = null,Object? talk = null,}) {
  return _then(_DesktopMobileUrls(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String,revisions: null == revisions ? _self.revisions : revisions // ignore: cast_nullable_to_non_nullable
as String,edit: null == edit ? _self.edit : edit // ignore: cast_nullable_to_non_nullable
as String,talk: null == talk ? _self.talk : talk // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
