part of 'rest_service.dart';

@ChopperApi(baseUrl: '')
abstract class TrendingService extends ChopperService {
  static TrendingService create([ChopperClient? client]) =>
      _$TrendingService(client);

  @Get(path: '/repositories')
  Future<Response<List<TrendingRepository>>> trendingRepositories(
    @Query() String language,
    @Query() String since,
  );

  @Get(path: '/developers')
  Future<Response<List<TrendingUser>>> trendingDevelopers(
    @Query() String language,
    @Query() String since,
  );

  @Get(path: '/languages')
  Future<Response<List<RepositoryLanguage>>> languages();
}
