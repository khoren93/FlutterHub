import 'package:chopper/chopper.dart';
import 'package:flutterhub/features/repositories/domain/entities/models.dart';

part "users_service.chopper.dart";

@ChopperApi(baseUrl: "/users")
abstract class UsersService extends ChopperService {
  static UsersService create([ChopperClient? client]) => _$UsersService(client);

  @Get(path: "/{owner}")
  Future<Response<User>> user(
    @Path() String owner,
  );
}
