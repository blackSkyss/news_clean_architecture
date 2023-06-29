import '../../domain/models/article.dart';
import '../../domain/repositories/database_article_repository.dart';
import '../local/app_database.dart';

class DatabaseArticleRepositoryImpl implements DatabaseArticleRepository {
  DatabaseArticleRepositoryImpl(
    this._appDatabase,
  );

  final AppDatabase _appDatabase;

  @override
  Future<List<Article>> getSavedArticles() async {
    return _appDatabase.articleDao.getAllArticles();
  }

  @override
  Future<void> removeArticle(Article article) async {
    return _appDatabase.articleDao.deleteArticle(article);
  }

  @override
  Future<void> saveArticle(Article article) async {
    return _appDatabase.articleDao.insertArticle(article);
  }
}
