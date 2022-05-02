import 'package:flutter/material.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/core/presentation/widgets/grid_item.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.item,
    this.onTap,
  }) : super(key: key);

  final User item;
  final Function(User)? onTap;

  @override
  Widget build(BuildContext context) {
    return GridItem(
      imageUrl: item.avatarUrl,
      title: item.login,
      subtitle: item.name,
      onTap: () {
        onTap?.call(item);
      },
    );
  }
}
