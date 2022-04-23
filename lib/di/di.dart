import 'package:flutterhub/features/data/repositories/login_repository.dart';
import 'package:flutterhub/features/domain/repositories/login_repository.dart';
import 'package:flutterhub/features/domain/usecases/login_usecase.dart';
import 'package:flutterhub/features/presentation/cubit/languages/languages_cubit.dart';

import '../features/data/datasources/restapi/rest_service.dart';
import '../features/data/repositories/repositories.dart';
import '../features/domain/repositories/repositories.dart';
import '../features/domain/usecases/usecases.dart';
import '../features/presentation/cubit/cubits.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  // Register Blocs and Cubits
  di.registerFactory(() => LoginCubit(di(), di()));
  di.registerFactory(() => TrendingCubit(di(), di()));
  di.registerFactory(() => LanguagesCubit(di()));
  di.registerFactory(() => SearchCubit(di(), di()));
  di.registerFactory(() => RepositoryCubit(di()));
  di.registerFactory(() => UserCubit(di()));

  // Register usecases
  di.registerLazySingleton(() => TrendingRepositoriesUsecase(di()));
  di.registerLazySingleton(() => TrendingUsersUsecase(di()));
  di.registerLazySingleton(() => LanguagesUsecase(di()));
  di.registerLazySingleton(() => CreateAccessTokenUsecase(di()));
  di.registerLazySingleton(() => SearchRepositoriesUsecase(di()));
  di.registerLazySingleton(() => SearchUsersUsecase(di()));
  di.registerLazySingleton(() => GetRepositoryUsecase(di()));
  di.registerLazySingleton(() => GetUserUsecase(di()));
  di.registerLazySingleton(() => GetAuthenticatedUserUsecase(di()));

  // Register repositories
  di.registerFactory<LoginRepository>(() => LoginRepositoryImpl(di()));
  di.registerFactory<TrendRepository>(() => TrendRepositoryImpl(di()));
  di.registerFactory<SearchRepository>(() => SearchRepositoryImpl(di()));
  di.registerFactory<ReposRepository>(() => ReposRepositoryImpl(di()));
  di.registerFactory<UserRepository>(() => UserRepositoryImpl(di()));
  di.registerFactory<UsersRepository>(() => UsersRepositoryImpl(di()));

  // Register data sources
  di.registerLazySingleton(() => trendingClient.getService<TrendingService>());
  di.registerLazySingleton(() => githubClient.getService<LoginService>());
  di.registerLazySingleton(() => githubClient.getService<SearchService>());
  di.registerLazySingleton(() => githubClient.getService<ReposService>());
  di.registerLazySingleton(() => githubClient.getService<UserService>());
  di.registerLazySingleton(() => githubClient.getService<UsersService>());
}
