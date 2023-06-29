import '../../../../locator.dart';
import '../../data/repositories/remote_article_repository_impl.dart';
import '../../data/remote/remote_article_source.dart';
import '../models/requests/breaking_news_request.dart';
import '../models/responses/breaking_news_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'remote_article_repository.g.dart';

abstract class RemoteArticleRepository {
  Future<BreakingNewsResponse> getBreakingNewsArticles({
    required BreakingNewsRequest request,
  });
}

@Riverpod(keepAlive: true)
RemoteArticleRepository remoteArticleRepository(
        RemoteArticleRepositoryRef ref) =>
    RemoteArticleRepositoryImpl(locator<RemoteArticleSource>());
