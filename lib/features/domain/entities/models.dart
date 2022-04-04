import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';
part 'trending_repository.dart';
part 'trending_user.dart';
part 'repository_language.dart';
part 'repository_search.dart';
part 'repository.dart';
part 'user_search.dart';
part 'user.dart';

extension StringExtension on String? {
  int? parseColor() {
    if (this == null) return null;
    return int.tryParse(this?.replaceAll('#', '0xff') ?? '');
  }
}
