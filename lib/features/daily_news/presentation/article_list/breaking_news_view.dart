import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../util/extensions/async_value_ui.dart';
import '../../../../util/extensions/scroll_controller.dart';
import '../../domain/models/article.dart';
import 'article_widget.dart';
import 'remote_articles_state.dart';
import 'remote_article_controller.dart';

@RoutePage()
class BreakingNewsView extends HookConsumerWidget {
  const BreakingNewsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // if have error in process => Show alert
    ref.listen<AsyncValue>(
      remoteArticleControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final articlesStates = ref.watch(remoteArticlesStateProvider);
    final scrollController = useScrollController();

    useEffect(() {
      // avoid error modify state of provider in lifecycle (init state)
      Future.delayed(const Duration(seconds: 1), () {
        ref
            .read(remoteArticleControllerProvider.notifier)
            .getBreakingNewsArticles();
      });

      scrollController.onScrollEndsListener(
        () {
          ref
              .read(remoteArticleControllerProvider.notifier)
              .getBreakingNewsArticles();
        },
      );
      return scrollController.dispose;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Daily News',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => appRouter.push(
              const SavedArticlesViewRoute(),
            ),
            icon: const Icon(
              Ionicons.bookmark,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: articlesStates.isInit
          ? _buildArticles(
              scrollController,
              articlesStates.articles,
              articlesStates.noMoreData,
            )
          : const Center(
              child: CupertinoActivityIndicator(),
            ),
    );
  }
}

Widget _buildArticles(
  ScrollController scrollController,
  List<Article> articles,
  bool noMoreData,
) {
  return CustomScrollView(
    controller: scrollController,
    slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => ArticleWidget(
            article: articles[index],
            onArticlePressed: (article) => appRouter.push(
              ArticleDetailsViewRoute(article: article),
            ),
          ),
          childCount: articles.length,
        ),
      ),
      if (!noMoreData)
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              top: 14,
              bottom: 32,
            ),
            child: CupertinoActivityIndicator(),
          ),
        )
    ],
  );
}
