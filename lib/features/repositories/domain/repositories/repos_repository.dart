import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/models.dart';

abstract class ReposRepository {
  Future<Either<Failure, Repository>> repository(String fullname);
}
