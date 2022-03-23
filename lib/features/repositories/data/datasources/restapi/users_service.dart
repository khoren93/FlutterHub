part of 'rest_service.dart';

@ChopperApi(baseUrl: "/users")
abstract class UsersService extends ChopperService {
  static UsersService create([ChopperClient? client]) => _$UsersService(client);

  @Get(path: "/{owner}")
  Future<Response<User>> user(
    @Path() String owner,
  );
}
