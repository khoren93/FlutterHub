part of 'rest_service.dart';

@ChopperApi(baseUrl: '/user')
abstract class UserService extends ChopperService {
  static UserService create([ChopperClient? client]) => _$UserService(client);

  @Get()
  Future<Response<User>> user();
}
