import '../features/data/datasources/restapi/rest_service.dart';
import '../features/data/repositories/trend_repository.dart';
import '../features/domain/repositories/repos_repository.dart';
import '../features/domain/repositories/search_repository.dart';
import '../features/domain/repositories/trend_repository.dart';
import '../features/domain/repositories/users_repository.dart';
import '../features/domain/usecases/languages_usecase.dart';
import '../features/domain/usecases/trending_repositories_usecase.dart';
import '../features/domain/usecases/trending_users_usecase.dart';
import '../features/domain/usecases/usecases.dart';
import '../features/presentation/cubit/repository/repository_cubit.dart';
import '../features/presentation/cubit/search/search_cubit.dart';
import '../features/presentation/cubit/trending/trending_cubit.dart';
import '../features/presentation/cubit/user/user_cubit.dart';
import 'package:get_it/get_it.dart';

import '../features/data/repositories/repos_repository.dart';
import '../features/data/repositories/search_repository.dart';
import '../features/data/repositories/users_repository.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  // Register Blocs and Cubits
  di.registerFactory(() => TrendingRepositoryCubit(di()));
  di.registerFactory(() => TrendingUserCubit(di()));
  di.registerFactory(
      () => SearchRepositoryCubit(searchRepositoriesUsecase: di()));
  di.registerFactory(() => SearchUserCubit(searchUsersUsecase: di()));
  di.registerFactory(() => RepositoryCubit(getRepositoryUsecase: di()));
  di.registerFactory(() => UserCubit(getUserUsecase: di()));

  // Register usecases
  di.registerLazySingleton(() => TrendingRepositoriesUsecase(di()));
  di.registerLazySingleton(() => TrendingUsersUsecase(di()));
  di.registerLazySingleton(() => LanguagesUsecase(di()));
  di.registerLazySingleton(() => SearchRepositoriesUsecase(di()));
  di.registerLazySingleton(() => SearchUsersUsecase(di()));
  di.registerLazySingleton(() => GetRepositoryUsecase(di()));
  di.registerLazySingleton(() => GetUserUsecase(di()));

  // Register repositories
  di.registerFactory<TrendRepository>(() => TrendRepositoryImpl(di()));
  di.registerFactory<SearchRepository>(() => SearchRepositoryImpl(di()));
  di.registerFactory<ReposRepository>(() => ReposRepositoryImpl(di()));
  di.registerFactory<UsersRepository>(() => UsersRepositoryImpl(di()));

  // Register data sources
  di.registerLazySingleton(() => trendingClient.getService<TrendingService>());
  di.registerLazySingleton(() => githubClient.getService<SearchService>());
  di.registerLazySingleton(() => githubClient.getService<ReposService>());
  di.registerLazySingleton(() => githubClient.getService<UsersService>());
}
