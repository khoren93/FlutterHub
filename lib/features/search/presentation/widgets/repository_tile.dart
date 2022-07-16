import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/core/presentation/widgets/common_widgets.dart';
import 'package:flutterhub/features/core/presentation/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return ContainerX(
      child: Card(
        child: ListTile(
          leading: networkImage(context, item.owner?.avatarUrl),
          title: Text(item.name ?? ''),
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
                  const SizedBox(width: spaceDefault),
                  const Icon(FontAwesomeIcons.star, size: 14),
                  const SizedBox(width: spaceSmall2),
                  Expanded(
                    child: Text(
                      '${item.stargazersCount ?? 0}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
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
