import '../entities/models.dart';

abstract class UserRepository {
  Future<UserSearch> searchUsers(String query, int page);
  Future<User> user(String owner);
}
