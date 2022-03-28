import 'package:flutter/material.dart';

import '../../../domain/entities/models.dart';
import '../network_image.dart';

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
        leading: networkImage(context, item.owner?.avatarUrl),
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
