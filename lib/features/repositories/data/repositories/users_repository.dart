import 'package:flutterhub/features/repositories/data/datasources/restapi/rest_service.dart';

import '../../domain/entities/models.dart';
import '../../domain/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl(this._restService);
  final UsersService _restService;

  @override
  Future<User?> user(String owner) async {
    return (await _restService.user(owner)).body;
  }
}
