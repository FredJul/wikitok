import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wikitok/src/data/models/wikipedia_article.dart';

part 'wikipedia_api_client.g.dart';

@RestApi(baseUrl: "")
abstract class WikipediaApiClient {
  factory WikipediaApiClient(Dio dio, {String baseUrl}) = _WikipediaApiClient;

  @GET("https://{languageCode}.wikipedia.org/api/rest_v1/page/random/summary")
  Future<WikipediaArticle> getRandomArticle(
    @Path("languageCode") String languageCode,
  );
}
