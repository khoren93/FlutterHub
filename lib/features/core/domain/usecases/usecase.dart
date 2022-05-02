import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
