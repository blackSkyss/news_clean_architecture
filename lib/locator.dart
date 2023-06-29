import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/daily_news/data/local/app_database.dart';
import 'features/daily_news/data/remote/remote_article_source.dart';

import 'util/constants/strings.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  // Database
  final db = await $FloorAppDatabase.databaseBuilder(dabaseName).build();
  locator.registerSingleton<AppDatabase>(db);

  // Dio
  final dio = Dio();
  dio.interceptors.add(AwesomeDioInterceptor());
  locator.registerSingleton<Dio>(dio);

  // Services
  locator.registerSingleton<RemoteArticleSource>(
    RemoteArticleSource(locator<Dio>()),
  );

  // Repositories
  // locator.registerSingleton<RemoteArticleRepository>(
  //   RemoteArticleRepositoryImpl(locator<RemoteArticleSource>()),
  // );

  // locator.registerSingleton<DatabaseArticleRepository>(
  //   DatabaseArticleRepositoryImpl(locator<AppDatabase>()),
  // );
}
