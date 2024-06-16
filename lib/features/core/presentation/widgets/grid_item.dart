import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';

import 'network_image.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    this.imageUrl,
    this.heroTag,
    this.icon,
    this.title,
    this.subtitle,
    this.onTap,
  });

  final String? imageUrl;
  final String? heroTag;
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        margin: paddingSmall,
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              if (imageUrl != null)
                Expanded(
                  flex: 2,
                  child: networkImage(
                    context,
                    imageUrl,
                    width: double.infinity,
                    isCircle: false,
                    openPreview: false,
                    heroTag: heroTag,
                  ),
                ),
              if (icon != null)
                Expanded(
                  flex: 2,
                  child: Icon(icon, size: 70),
                ),
              if (title != null)
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title ?? '',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: subtitle == null ? 2 : 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (subtitle != null)
                        Padding(
                          padding: const EdgeInsets.only(top: spaceSmall),
                          child: Text(
                            subtitle ?? '',
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                          ),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
