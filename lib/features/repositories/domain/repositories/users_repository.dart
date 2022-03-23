import '../entities/models.dart';

abstract class UsersRepository {
  Future<User?> user(String owner);
}
