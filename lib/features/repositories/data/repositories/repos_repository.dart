import 'package:flutterhub/features/repositories/data/datasources/restapi/repos_service.dart';
import 'package:flutterhub/features/repositories/domain/repositories/repos_repository.dart';

import '../../domain/entities/models.dart';

class ReposRepositoryImpl implements ReposRepository {
  ReposRepositoryImpl(this._restService);
  final ReposService _restService;

  @override
  Future<Repository?> repository(String fullname) async {
    return (await _restService.repository(fullname)).body;
  }
}
