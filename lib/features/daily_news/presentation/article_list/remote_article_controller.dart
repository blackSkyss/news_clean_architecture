import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../util/constants/nums.dart';
import '../../application/article_service.dart';
import '../../domain/models/requests/breaking_news_request.dart';
import 'remote_articles_state.dart';

part 'remote_article_controller.g.dart';

@riverpod
class RemoteArticleController extends _$RemoteArticleController {
  @override
  FutureOr<void> build() {
    // nothing to do
  }

  ArticleService get _articleService => ref.read(articleServiceProvider);

  Future<void> getBreakingNewsArticles() async {
    final articlesState = ref.read(remoteArticlesStateProvider);
    // state = const AsyncLoading<void>();
    state = const AsyncLoading();

    // Use guard instead try catch
    state = await AsyncValue.guard(
      () async {
        final response = await _articleService.fetchRemoteArticles(
          BreakingNewsRequest(page: articlesState.page),
        );

        final articles = response.articles;
        final noMoreData = articles.length < defaultPageSize;

        ref.read(remoteArticlesStateProvider.notifier).addAll(
              articles,
              noMoreData,
              articlesState.page + 1,
            );
      },
    );
  }
}
