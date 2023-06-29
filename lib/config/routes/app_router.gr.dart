// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BreakingNewsViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BreakingNewsView(),
      );
    },
    ArticleDetailsViewRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailsViewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticleDetailsView(article: args.article),
      );
    },
    SavedArticlesViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SavedArticlesView(),
      );
    },
  };
}

/// generated route for
/// [BreakingNewsView]
class BreakingNewsViewRoute extends PageRouteInfo<void> {
  const BreakingNewsViewRoute({List<PageRouteInfo>? children})
      : super(
          BreakingNewsViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'BreakingNewsViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ArticleDetailsView]
class ArticleDetailsViewRoute
    extends PageRouteInfo<ArticleDetailsViewRouteArgs> {
  ArticleDetailsViewRoute({
    required Article article,
    List<PageRouteInfo>? children,
  }) : super(
          ArticleDetailsViewRoute.name,
          args: ArticleDetailsViewRouteArgs(article: article),
          initialChildren: children,
        );

  static const String name = 'ArticleDetailsViewRoute';

  static const PageInfo<ArticleDetailsViewRouteArgs> page =
      PageInfo<ArticleDetailsViewRouteArgs>(name);
}

class ArticleDetailsViewRouteArgs {
  const ArticleDetailsViewRouteArgs({required this.article});

  final Article article;

  @override
  String toString() {
    return 'ArticleDetailsViewRouteArgs{article: $article}';
  }
}

/// generated route for
/// [SavedArticlesView]
class SavedArticlesViewRoute extends PageRouteInfo<void> {
  const SavedArticlesViewRoute({List<PageRouteInfo>? children})
      : super(
          SavedArticlesViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedArticlesViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
