import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/models/article.dart';
import '../domain/models/requests/breaking_news_request.dart';
import '../domain/models/responses/breaking_news_response.dart';
import '../domain/repositories/database_article_repository.dart';
import '../domain/repositories/remote_article_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_service.g.dart';

class ArticleService {
  ArticleService(this.ref);

  final Ref ref;

  RemoteArticleRepository get remoteArticleRepository =>
      ref.read(remoteArticleRepositoryProvider);

  DatabaseArticleRepository get databaseArticleRepository =>
      ref.read(databaseArticleRepositoryProvider);

  // Fetch articles from remote
  Future<BreakingNewsResponse> fetchRemoteArticles(
      BreakingNewsRequest request) {
    return remoteArticleRepository.getBreakingNewsArticles(request: request);
  }

  // Fetch articles from local
  Future<List<Article>> fetchLocalArticles() {
    return databaseArticleRepository.getSavedArticles();
  }

  // Save article to local
  Future<void> saveLocalAricle(Article article) {
    return databaseArticleRepository.saveArticle(article);
  }

  // Remove article from local
  Future<void> removeLocalArticle(Article article) {
    return databaseArticleRepository.removeArticle(article);
  }
}

@riverpod
ArticleService articleService(ArticleServiceRef ref) {
  return ArticleService(ref);
}
