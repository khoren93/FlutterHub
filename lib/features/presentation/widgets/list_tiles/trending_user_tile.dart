import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domain/entities/models.dart';
import '../network_image.dart';

class TrendingUserTile extends StatelessWidget {
  const TrendingUserTile({
    Key? key,
    required this.item,
    this.onTap,
    this.onRepositoryTap,
  }) : super(key: key);

  final TrendingUser item;
  final Function(TrendingUser)? onTap;
  final Function(TrendingRepository)? onRepositoryTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          onTap?.call(item);
        },
        child: Center(
          child: ListTile(
            leading: networkImage(context, item.avatar, openPreview: false),
            title: Text(
              '${item.name ?? ''} (${item.username ?? ''})',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: (item.repo != null)
                ? Padding(
                    padding: paddingSmallDefault,
                    child: InkWell(
                      onTap: () {
                        onRepositoryTap
                            ?.call(item.repo!.copyWith(author: item.username));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Icon(FontAwesomeIcons.bookBookmark,
                                  size: 16),
                              const SizedBox(width: spaceMedium),
                              Flexible(
                                child: Text(
                                  item.repo?.name ?? '',
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          if (item.repo?.description != null) ...[
                            const SizedBox(height: spaceMedium),
                            Flexible(
                              child: Text(
                                item.repo?.description ?? '',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
