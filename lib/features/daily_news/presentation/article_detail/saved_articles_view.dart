import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:auto_route/auto_route.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../util/extensions/async_value_ui.dart';
import '../../../../util/extensions/string_hardcoded.dart';
import '../../domain/models/article.dart';
import '../article_list/article_widget.dart';
import 'local_article_controller.dart';
import 'local_articles_state.dart';

@RoutePage()
class SavedArticlesView extends HookConsumerWidget {
  const SavedArticlesView({super.key});

  Widget _buildArticlesList(List<Article> articles, WidgetRef ref) {
    if (articles.isEmpty) {
      return Center(
        child: Text(
          'NO SAVED ARTICLES'.hardcoded,
          style: const TextStyle(color: Colors.black),
        ),
      );
    }

    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return ArticleWidget(
          article: articles[index],
          isRemovable: true,
          onRemove: (article) => ref
              .read(localArticleControllerProvider.notifier)
              .removeArticle(article),
          onArticlePressed: (article) => appRouter.push(
            ArticleDetailsViewRoute(article: article),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue>(
      localArticleControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final articlesStates = ref.watch(localArticlesStateProvider);

    useEffect(() {
      Future.delayed(
        const Duration(seconds: 1),
        () {
          ref.read(localArticleControllerProvider.notifier).getSaveArticles();
        },
      );
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => appRouter.pop(),
          child: const Icon(Ionicons.chevron_back, color: Colors.black),
        ),
        title: Text(
          'Saved Articles'.hardcoded,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: articlesStates.isInit
          ? _buildArticlesList(articlesStates.articles, ref)
          : const Center(
              child: CupertinoActivityIndicator(),
            ),
    );
  }
}
