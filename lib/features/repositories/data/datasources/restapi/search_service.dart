import 'package:chopper/chopper.dart';
import 'package:flutterhub/features/repositories/domain/entities/models.dart';

part "search_service.chopper.dart";

@ChopperApi(baseUrl: "/search")
abstract class SearchService extends ChopperService {
  static SearchService create([ChopperClient? client]) =>
      _$SearchService(client);

  @Get(path: "/repositories")
  Future<Response<RepositorySearch>> searchRepositories(
    @Query("q") String query,
    @Query() int page,
  );

  @Get(path: "/users")
  Future<Response<UserSearch>> searchUsers(
    @Query("q") String query,
    @Query() int page,
  );
}
