part of 'rest_service.dart';

@ChopperApi(baseUrl: '/users')
abstract class UsersService extends ChopperService {
  static UsersService create([ChopperClient? client]) => _$UsersService(client);

  @Get(path: '/{owner}')
  Future<Response<User>> user(
    @Path() String owner,
  );

  @Get(path: '/{username}/repos')
  Future<Response<List<Repository>>> repositories(
    @Path() String username,
    @Query() int page,
    @Query('per_page') int perPage,
  );

  @Get(path: '/{username}/starred')
  Future<Response<List<Repository>>> starredRepositories(
    @Path() String username,
    @Query() int page,
    @Query('per_page') int perPage,
  );

  @Get(path: '/{username}/subscriptions')
  Future<Response<List<Repository>>> watchingRepositories(
    @Path() String username,
    @Query() int page,
    @Query('per_page') int perPage,
  );
}
