import 'package:flutter/material.dart';
import 'package:flutterhub/features/presentation/widgets/common_widgets.dart';

import '../../../../configs/constants.dart';
import '../../../../generated/l10n.dart';

enum SinceType { daily, weekly, monthly }

extension SinceTypeExtension on SinceType {
  String get title {
    switch (this) {
      case SinceType.daily:
        return S.current.daily;
      case SinceType.weekly:
        return S.current.weekly;
      case SinceType.monthly:
        return S.current.monthly;
    }
  }

  String get value {
    switch (this) {
      case SinceType.daily:
        return 'daily';
      case SinceType.weekly:
        return 'weekly';
      case SinceType.monthly:
        return 'monthly';
    }
  }
}

Widget buildSinceTabs(BuildContext context, TabController controller) {
  return ContainerX(
    child: Container(
      margin: paddingSmallMedium,
      height: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TabBar(
        controller: controller,
        indicator: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20.0),
        ),
        tabs: SinceType.values.map((model) {
          return Tab(
            text: model.title,
          );
        }).toList(),
      ),
    ),
  );
}
