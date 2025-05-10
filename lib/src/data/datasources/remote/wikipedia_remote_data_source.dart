import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wikitok/src/data/models/wikipedia_article.dart';

part 'wikipedia_remote_data_source.g.dart';

@RestApi(baseUrl: "")
abstract class WikipediaRemoteDataSource {
  factory WikipediaRemoteDataSource(Dio dio, {String baseUrl}) =
      _WikipediaRemoteDataSource;

  @GET("https://{languageCode}.wikipedia.org/api/rest_v1/page/random/summary")
  Future<WikipediaArticle> fetchRandomArticle(
    @Path("languageCode") String languageCode,
  );
}
