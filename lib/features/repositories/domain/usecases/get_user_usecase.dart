import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../repositories/users_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';

class GetUserParams {
  GetUserParams(this.owner);
  final String owner;
}

class GetUserUsecase extends UseCase<User, GetUserParams> {
  GetUserUsecase(this._repository);
  final UsersRepository _repository;

  @override
  Future<Either<Failure, User>> call(GetUserParams params) async {
    try {
      final result = await _repository.user(params.owner);
      if (result != null) {
        return right(result);
      } else {
        return left(ServerFailure());
      }
    } catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure());
    }
  }
}
