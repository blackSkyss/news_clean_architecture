import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/article.dart';

part 'remote_articles_state.freezed.dart';
part 'remote_articles_state.g.dart';

@freezed
class RemoteArticlesObject with _$RemoteArticlesObject {
  factory RemoteArticlesObject({
    required List<Article> articles,
    required bool noMoreData,
    required int page,
    required bool isInit,
  }) = _RemoteArticlesObject;
}

@riverpod
class RemoteArticlesState extends _$RemoteArticlesState {
  @override
  RemoteArticlesObject build() {
    return RemoteArticlesObject(
      articles: const [],
      noMoreData: true,
      page: 1,
      isInit: false,
    );
  }

  void addAll(
    List<Article> articlesOut,
    bool noMoreData,
    int pageOut,
  ) {
    // final => can't set new value => Modify
    final updatedArticles = [...state.articles, ...articlesOut];

    // First add (init) will change to true
    final isInitNew = state.isInit == true ? true : true;

    state = RemoteArticlesObject(
      articles: updatedArticles,
      noMoreData: noMoreData,
      page: pageOut,
      isInit: isInitNew,
    );
  }
}
