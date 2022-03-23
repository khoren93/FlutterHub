import 'package:flutterhub/features/repositories/data/datasources/restapi/rest_service.dart';
import 'package:flutterhub/features/repositories/domain/repositories/repos_repository.dart';
import 'package:flutterhub/features/repositories/domain/repositories/search_repository.dart';
import 'package:flutterhub/features/repositories/domain/repositories/users_repository.dart';
import 'package:flutterhub/features/repositories/domain/usecases/usecases.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/repository/repository_cubit.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/search/search_cubit.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/user/user_cubit.dart';
import 'package:get_it/get_it.dart';

import '../features/repositories/data/repositories/repos_repository.dart';
import '../features/repositories/data/repositories/search_repository.dart';
import '../features/repositories/data/repositories/users_repository.dart';

final di = GetIt.instance;

Future<void> initDI() async {
  // Register Blocs and Cubits
  di.registerFactory(() => SearchCubit(
        searchRepositories: di(),
        searchUsers: di(),
      ));
  di.registerFactory(() => RepositoryCubit());
  di.registerFactory(() => UserCubit());

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
