import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/article.dart';

part 'local_articles_state.freezed.dart';
part 'local_articles_state.g.dart';

@freezed
class LocalArticlesObject with _$LocalArticlesObject {
  factory LocalArticlesObject({
    required List<Article> articles,
    required bool isInit,
  }) = _LocalArticlesObject;
}

@riverpod
class LocalArticlesState extends _$LocalArticlesState {
  @override
  LocalArticlesObject build() {
    return LocalArticlesObject(
      articles: const [],
      isInit: false,
    );
  }

  // Add new articles
  void addAll(List<Article> articlesOut) {
    final updateArticles = [...state.articles, ...articlesOut];
    final isInitNew = state.isInit == true ? true : true;
    state = LocalArticlesObject(
      articles: updateArticles,
      isInit: isInitNew,
    );
  }

  // Clean articles
  void cleanAll() {
    state = LocalArticlesObject(
      articles: const [],
      isInit: false,
    );
  }
}
