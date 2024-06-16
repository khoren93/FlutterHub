part of 'rest_service.dart';

@ChopperApi(baseUrl: '/repos')
abstract class ReposService extends ChopperService {
  static ReposService create([ChopperClient? client]) => _$ReposService(client);

  @Get(path: '/{fullname}')
  Future<Response<Repository>> repository(
    @Path() String fullname,
  );

  @Get(path: '/{fullname}/forks')
  Future<Response<List<Repository>>> forks(
    @Path() String fullname,
    @Query() int page,
    @Query('per_page') int perPage,
  );
}
