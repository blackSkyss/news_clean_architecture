import '../../../../util/resources/remote_base_repository.dart';
import '../../domain/models/requests/breaking_news_request.dart';
import '../../domain/models/responses/breaking_news_response.dart';
import '../../domain/repositories/remote_article_repository.dart';
import '../remote/remote_article_source.dart';

class RemoteArticleRepositoryImpl extends RemoteBaseRepository
    implements RemoteArticleRepository {
  RemoteArticleRepositoryImpl(this._newsApiService);

  final RemoteArticleSource _newsApiService;

  @override
  Future<BreakingNewsResponse> getBreakingNewsArticles({
    required BreakingNewsRequest request,
  }) {
    return getDataOf<BreakingNewsResponse>(
      request: () => _newsApiService.getBreakingNewsArticles(
        apiKey: request.apiKey,
        country: request.country,
        category: request.category,
        page: request.page,
        pageSize: request.pageSize,
      ),
    );
  }
}
