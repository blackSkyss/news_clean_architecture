import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../application/article_service.dart';
import '../../domain/models/article.dart';
import 'local_articles_state.dart';
part 'local_article_controller.g.dart';

@riverpod
class LocalArticleController extends _$LocalArticleController {
  @override
  FutureOr<void> build() {
    // nothing to do
  }

  ArticleService get _articleService => ref.read(articleServiceProvider);

  // Get list saved article
  Future<void> getSaveArticles() async {
    // state = const AsyncLoading<void>();
    state = const AsyncLoading();

    // Use guard instead try catch
    state = await AsyncValue.guard(
      () async {
        final result = await _articleService.fetchLocalArticles();
        ref.read(localArticlesStateProvider.notifier).addAll(result);
      },
    );
  }

  // Save article
  Future<void> saveArticles(Article article) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        await _articleService.saveLocalAricle(article);
        ref.read(localArticlesStateProvider.notifier).cleanAll();
        await getSaveArticles();
      },
    );
  }

  // Remove article
  Future<void> removeArticle(Article article) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () async {
        await _articleService.removeLocalArticle(article);
        ref.read(localArticlesStateProvider.notifier).cleanAll();
        await getSaveArticles();
      },
    );
  }
}
