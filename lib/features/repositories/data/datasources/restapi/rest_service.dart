import 'package:chopper/chopper.dart';
import 'package:flutterhub/features/repositories/domain/entities/models.dart';

part 'rest_service.chopper.dart';
part 'repos_service.dart';
part 'search_service.dart';
part 'users_service.dart';

final chopper = ChopperClient(
  baseUrl: 'https://api.github.com',
  converter: const JsonConverter(),
  errorConverter: const JsonConverter(),
  services: [
    SearchService.create(),
    ReposService.create(),
    UsersService.create(),
  ],
  interceptors: [
    HttpLoggingInterceptor(),
  ],
);
