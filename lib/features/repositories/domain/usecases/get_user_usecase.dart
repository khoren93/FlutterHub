import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/features/repositories/domain/repositories/user_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';

class GetUserParams {
  GetUserParams(this.owner);
  final String owner;
}

class GetUserUsecase extends UseCase<User, GetUserParams> {
  GetUserUsecase(this._repository);
  final UserRepository _repository;

  @override
  Future<Either<Failure, User>> call(GetUserParams params) async {
    try {
      return right(
        await _repository.user(params.owner),
      );
    } catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure());
    }
  }
}
