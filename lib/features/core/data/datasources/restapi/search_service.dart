part of 'rest_service.dart';

@ChopperApi(baseUrl: '/search')
abstract class SearchService extends ChopperService {
  static SearchService create([ChopperClient? client]) =>
      _$SearchService(client);

  @Get(path: '/repositories')
  Future<Response<RepositorySearch>> searchRepositories(
    @Query('q') String query,
    @Query() String order,
    @Query() String sort,
    @Query() int page,
    @Query('per_page') int perPage,
  );

  @Get(path: '/users')
  Future<Response<UserSearch>> searchUsers(
    @Query('q') String query,
    @Query() String order,
    @Query() String sort,
    @Query() int page,
    @Query('per_page') int perPage,
  );
}
