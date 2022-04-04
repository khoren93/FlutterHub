import 'package:dartz/dartz.dart';
import '../datasources/restapi/rest_service.dart';
import '../../domain/repositories/repos_repository.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/models.dart';

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
