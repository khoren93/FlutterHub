import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/models.dart';

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
        leading: CachedNetworkImage(
          imageUrl: item.avatarUrl ?? '',
          width: 40,
          height: 40,
        ),
        title: Text(item.login ?? ''),
        subtitle: item.name != null ? Text(item.name ?? '') : null,
        onTap: () {
          onTap?.call(item);
        },
      ),
    );
  }
}
