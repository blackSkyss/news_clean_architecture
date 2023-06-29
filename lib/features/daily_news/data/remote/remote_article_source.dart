import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../util/constants/strings.dart';
import '../../domain/models/responses/breaking_news_response.dart';

part 'remote_article_source.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class RemoteArticleSource {
  factory RemoteArticleSource(Dio dio, {String baseUrl}) = _RemoteArticleSource;

  @GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponse>> getBreakingNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
    @Query("page") int? page,
    @Query("pageSize") int? pageSize,
  });
}
