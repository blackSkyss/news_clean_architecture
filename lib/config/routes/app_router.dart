import 'package:auto_route/auto_route.dart';

import '../../features/daily_news/domain/models/article.dart';
import '../../features/daily_news/presentation/article_detail/article_details_view.dart';
import '../../features/daily_news/presentation/article_detail/saved_articles_view.dart';
import '../../features/daily_news/presentation/article_list/breaking_news_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // routes go here
        AutoRoute(page: BreakingNewsViewRoute.page, initial: true),
        AutoRoute(page: ArticleDetailsViewRoute.page),
        AutoRoute(page: SavedArticlesViewRoute.page),
      ];
}

final appRouter = AppRouter();
