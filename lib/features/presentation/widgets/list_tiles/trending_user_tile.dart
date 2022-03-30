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
      child: ListTile(
        leading: networkImage(context, item.avatar, openPreview: false),
        title: Padding(
          padding: EdgeInsets.only(top: (item.repo != null ? spaceMedium : 0)),
          child: Row(
            children: [
              Text(item.name ?? ''),
              if (item.name != null) ...[
                const SizedBox(width: spaceMedium),
                Text(
                  '(${item.username ?? ''})',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ],
          ),
        ),
        subtitle: (item.repo != null)
            ? Padding(
                padding: paddingDefault,
                child: InkWell(
                  onTap: () {
                    onRepositoryTap
                        ?.call(item.repo!.copyWith(author: item.username));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(FontAwesomeIcons.bookBookmark, size: 20),
                          const SizedBox(width: spaceMedium),
                          Flexible(
                            child: Text(
                              item.repo?.name ?? '',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: spaceMedium),
                      if (item.repo?.description != null)
                        Text(item.repo?.description ?? ''),
                    ],
                  ),
                ),
              )
            : null,
        onTap: () {
          onTap?.call(item);
        },
      ),
    );
  }
}
