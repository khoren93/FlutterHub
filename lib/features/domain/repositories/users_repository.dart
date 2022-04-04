import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/models.dart';

abstract class UsersRepository {
  Future<Either<Failure, User>> user(
    GetUserParams params,
  );
}

class GetUserParams {
  GetUserParams(this.owner);
  final String owner;
}
