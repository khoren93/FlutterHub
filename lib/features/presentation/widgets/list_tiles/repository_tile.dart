import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/models.dart';

class RepositoryTile extends StatelessWidget {
  const RepositoryTile({
    Key? key,
    required this.item,
    this.onTap,
  }) : super(key: key);

  final Repository item;
  final Function(Repository)? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CachedNetworkImage(
          imageUrl: item.owner?.avatarUrl ?? '',
          width: 40,
          height: 40,
        ),
        title: Text(item.name ?? ''),
        subtitle:
            item.description != null ? Text(item.description ?? '') : null,
        onTap: () {
          onTap?.call(item);
        },
      ),
    );
  }
}
