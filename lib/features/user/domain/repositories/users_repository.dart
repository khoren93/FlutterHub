import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';

abstract class UsersRepository {
  Future<Either<Failure, User>> user(
    UserParams params,
  );
}

class UserParams {
  UserParams(this.owner);
  final String owner;
}
