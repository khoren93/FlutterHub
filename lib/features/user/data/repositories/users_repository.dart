import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/data/datasources/restapi/rest_service.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/user/domain/repositories/users_repository.dart';

class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl(this._restService);
  final UsersService _restService;

  @override
  Future<Either<Failure, User>> user(UserParams params) async {
    final result = await _restService.user(params.owner);
    if (result.isSuccessful) {
      return right(result.body ?? const User());
    } else {
      return left(result.error.toServerFailure());
    }
  }
}
