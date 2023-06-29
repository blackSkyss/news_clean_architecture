import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:oktoast/oktoast.dart';
import 'package:auto_route/auto_route.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../util/extensions/async_value_ui.dart';
import '../../domain/models/article.dart';
import 'local_article_controller.dart';

@RoutePage()
class ArticleDetailsView extends ConsumerWidget {
  const ArticleDetailsView({required this.article});

  final Article article;

  Widget _buildArticleTitleAndDate() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title ?? '',
            style: const TextStyle(
              fontFamily: 'Butler',
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              const Icon(Ionicons.time_outline, size: 16),
              const SizedBox(width: 4),
              Text(
                DateFormat.yMd()
                    .add_Hms()
                    .format(DateTime.parse(article.publishedAt as String)),
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildArticleImage() {
    return Container(
      width: double.maxFinite,
      height: 250,
      margin: const EdgeInsets.only(top: 14),
      child: Hero(
        tag: article.publishedAt!,
        child: Image.network(
          article.urlToImage ?? '',
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) {
            return const Center(
              child: Text(
                '404\nNOT FOUND',
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildArticleDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
      child: Text(
        '${article.description}\n\n${article.content}',
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue>(
      localArticleControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );

    final state = ref.watch(localArticleControllerProvider);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => appRouter.pop(),
          child: const Icon(Ionicons.chevron_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          _buildArticleTitleAndDate(),
          _buildArticleImage(),
          _buildArticleDescription(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref
              .read(localArticleControllerProvider.notifier)
              .saveArticles(article);

          showToast('Article Saved Successfully');
        },
        child: state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : const Icon(Ionicons.bookmark, color: Colors.white),
      ),
    );
  }
}
