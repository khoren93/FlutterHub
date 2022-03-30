import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domain/entities/models.dart';
import '../network_image.dart';

class TrendingRepositoryTile extends StatelessWidget {
  const TrendingRepositoryTile({
    Key? key,
    required this.item,
    required this.timePeriod,
    this.onTap,
  }) : super(key: key);

  final TrendingRepository item;
  final String timePeriod;
  final Function(TrendingRepository)? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: networkImage(context, item.avatar),
        title: Row(
          children: [
            const Icon(FontAwesomeIcons.bookBookmark, size: 20),
            const SizedBox(width: spaceMedium),
            Text(item.name ?? ''),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: spaceMedium),
            if (item.description != null) Text(item.description ?? ''),
            const SizedBox(height: spaceMedium),
            if (item.language != null)
              Row(
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      color: Color(item.color),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: spaceSmall2),
                  if (item.language != null) Text(item.language ?? ''),
                  const SizedBox(width: spaceMedium),
                  const Icon(FontAwesomeIcons.star, size: 14),
                  const SizedBox(width: spaceSmall2),
                  Text('${item.stars}'),
                  const SizedBox(width: spaceMedium),
                  const Spacer(),
                  const Icon(FontAwesomeIcons.star, size: 14),
                  const SizedBox(width: spaceSmall2),
                  Text('${item.currentPeriodStars} $timePeriod'),
                ],
              ),
            if (item.builtBy != null)
              Row(
                children: (item.builtBy ?? []).map((builtBy) {
                  return Padding(
                    padding: const EdgeInsets.all(spaceSmall2),
                    child: networkImage(context, builtBy.avatar,
                        width: 30, height: 30),
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
    );
  }
}
