import '../../../../locator.dart';
import '../../data/local/app_database.dart';
import '../../data/repositories/database_article_repository_impl.dart';
import '../models/article.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'database_article_repository.g.dart';

abstract class DatabaseArticleRepository {
  Future<List<Article>> getSavedArticles();

  Future<void> saveArticle(Article article);

  Future<void> removeArticle(Article article);
}

@Riverpod(keepAlive: true)
DatabaseArticleRepository databaseArticleRepository(
        DatabaseArticleRepositoryRef ref) =>
    DatabaseArticleRepositoryImpl(locator<AppDatabase>());
