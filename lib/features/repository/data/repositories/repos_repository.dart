import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/data/datasources/restapi/rest_service.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/repository/domain/repositories/repos_repository.dart';

class ReposRepositoryImpl implements ReposRepository {
  ReposRepositoryImpl(this._restService);
  final ReposService _restService;

  @override
  Future<Either<Failure, Repository>> repository(
      GetRepositoryParams params) async {
    final result = await _restService.repository(params.fullname);
    if (result.isSuccessful) {
      return right(result.body ?? const Repository());
    } else {
      return left(result.error.toServerFailure());
    }
  }
}
