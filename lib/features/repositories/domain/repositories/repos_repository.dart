import '../entities/models.dart';

abstract class ReposRepository {
  Future<Repository?> repository(String fullname);
}
