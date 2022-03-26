import 'package:flutterhub/features/data/datasources/restapi/rest_service.dart';
import 'package:flutterhub/features/domain/repositories/repos_repository.dart';
import 'package:flutterhub/features/domain/repositories/search_repository.dart';
import 'package:flutterhub/features/domain/repositories/users_repository.dart';
import 'package:flutterhub/features/domain/usecases/usecases.dart';
import 'package:flutterhub/features/presentation/cubit/repository/repository_cubit.dart';
import 'package:flutterhub/features/presentation/cubit/search/search_cubit.dart';
import 'package:flutterhub/features/presentation/cubit/user/user_cubit.dart';
import 'package:get_it/get_it.dart';

import '../features/data/repositories/repos_repository.dart';
import '../features/data/repositories/search_repository.dart';
import '../features/data/repositories/users_repository.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  // Register Blocs and Cubits
  di.registerFactory(
      () => SearchRepositoryCubit(searchRepositoriesUsecase: di()));
  di.registerFactory(() => SearchUserCubit(searchUsersUsecase: di()));
  di.registerFactory(() => RepositoryCubit(getRepositoryUsecase: di()));
  di.registerFactory(() => UserCubit(getUserUsecase: di()));

  // Register usecases
  di.registerLazySingleton(() => SearchRepositoriesUsecase(di()));
  di.registerLazySingleton(() => SearchUsersUsecase(di()));
  di.registerLazySingleton(() => GetRepositoryUsecase(di()));
  di.registerLazySingleton(() => GetUserUsecase(di()));

  // Register repositories
  di.registerFactory<SearchRepository>(() => SearchRepositoryImpl(di()));
  di.registerFactory<ReposRepository>(() => ReposRepositoryImpl(di()));
  di.registerFactory<UsersRepository>(() => UsersRepositoryImpl(di()));

  // Register data sources
  di.registerLazySingleton(() => chopper.getService<SearchService>());
  di.registerLazySingleton(() => chopper.getService<ReposService>());
  di.registerLazySingleton(() => chopper.getService<UsersService>());
}
