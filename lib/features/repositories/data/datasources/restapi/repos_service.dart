import 'package:chopper/chopper.dart';
import 'package:flutterhub/features/repositories/domain/entities/models.dart';

part "repos_service.chopper.dart";

@ChopperApi(baseUrl: "/repos")
abstract class ReposService extends ChopperService {
  static ReposService create([ChopperClient? client]) => _$ReposService(client);

  @Get(path: "/{fullname}")
  Future<Response<Repository>> repository(
    @Path() String fullname,
  );
}
