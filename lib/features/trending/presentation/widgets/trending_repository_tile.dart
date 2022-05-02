import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/core/presentation/widgets/common_widgets.dart';
import 'package:flutterhub/features/core/presentation/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrendingRepositoryTile extends StatelessWidget {
  const TrendingRepositoryTile({
    Key? key,
    required this.item,
    required this.timePeriod,
    this.onTap,
    this.onUserTap,
  }) : super(key: key);

  final TrendingRepository item;
  final String timePeriod;
  final Function(TrendingRepository)? onTap;
  final Function(TrendingUser)? onUserTap;

  @override
  Widget build(BuildContext context) {
    return ContainerX(
      child: Card(
        child: ListTile(
          leading: networkImage(context, item.avatar, openPreview: false),
          title: Padding(
            padding: const EdgeInsets.only(top: spaceMedium),
            child: Row(
              children: [
                const Icon(FontAwesomeIcons.bookBookmark, size: 20),
                const SizedBox(width: spaceMedium),
                Expanded(
                  child: Text(
                    item.fullName,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: spaceMedium),
              if (item.description != null) Text(item.description ?? ''),
              const SizedBox(height: spaceMedium),
              Row(
                children: [
                  if (item.color != null)
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: Color(item.color ?? 0),
                        shape: BoxShape.circle,
                      ),
                    ),
                  const SizedBox(width: spaceSmall2),
                  if (item.language != null)
                    Text(
                      item.language ?? '',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  const SizedBox(width: spaceMedium),
                  const Icon(FontAwesomeIcons.star, size: 14),
                  const SizedBox(width: spaceSmall2),
                  Expanded(
                    child: Text(
                      '${item.stars}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const SizedBox(width: spaceMedium),
                  const Icon(FontAwesomeIcons.star, size: 14),
                  const SizedBox(width: spaceSmall2),
                  Text(
                    '${item.currentPeriodStars} $timePeriod',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: spaceMedium),
              if (item.builtBy != null)
                Row(
                  children: (item.builtBy ?? []).map((builtBy) {
                    return InkWell(
                      onTap: () {
                        onUserTap?.call(builtBy);
                      },
                      child: Padding(
                        padding: paddingSmall,
                        child: networkImage(context, builtBy.avatar,
                            openPreview: false, width: 34, height: 34),
                      ),
                    );
                  }).toList(),
                ),
              const SizedBox(height: spaceSmall2),
            ],
          ),
          onTap: () {
            onTap?.call(item);
          },
        ),
      ),
    );
  }
}
