import 'package:flutter/material.dart';

import '../../../domain/entities/models.dart';
import '../network_image.dart';

class TrendingUserTile extends StatelessWidget {
  const TrendingUserTile({
    Key? key,
    required this.item,
    this.onTap,
  }) : super(key: key);

  final TrendingUser item;
  final Function(TrendingUser)? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: networkImage(context, item.avatar),
        title: Text(item.username ?? ''),
        subtitle: item.name != null ? Text(item.name ?? '') : null,
        onTap: () {
          onTap?.call(item);
        },
      ),
    );
  }
}
