import 'package:dartz/dartz.dart';
import '../datasources/restapi/rest_service.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/models.dart';
import '../../domain/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl(this._restService);
  final UsersService _restService;

  @override
  Future<Either<Failure, User>> user(GetUserParams params) async {
    final result = await _restService.user(params.owner);
    if (result.isSuccessful) {
      return right(result.body ?? const User());
    } else {
      return left(result.error.toServerFailure());
    }
  }
}
