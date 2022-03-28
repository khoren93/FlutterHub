import 'package:flutter/material.dart';

import '../../../domain/entities/models.dart';
import '../network_image.dart';

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
    return Card(
      child: ListTile(
        leading: networkImage(context, item.avatarUrl),
        title: Text(item.login ?? ''),
        subtitle: item.name != null ? Text(item.name ?? '') : null,
        onTap: () {
          onTap?.call(item);
        },
      ),
    );
  }
}
