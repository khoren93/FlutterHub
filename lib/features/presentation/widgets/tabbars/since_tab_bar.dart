import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../../../../generated/l10n.dart';

enum SinceType { daily, weekly, monthly }

class SinceTabModel {
  final String title;
  final String value;
  final SinceType type;

  const SinceTabModel(this.type, this.title, this.value);

  static SinceTabModel fromType(SinceType type) {
    return items.firstWhere(
      (since) => since.type == type,
      orElse: () => const SinceTabModel(SinceType.daily, '', ''),
    );
  }

  static final items = [
    SinceTabModel(SinceType.daily, S.current.daily, 'daily'),
    SinceTabModel(SinceType.weekly, S.current.weekly, 'weekly'),
    SinceTabModel(SinceType.monthly, S.current.monthly, 'monthly'),
  ];
}

Widget buildSinceTabs(BuildContext context, TabController controller) {
  return Container(
    margin: paddingSmallDefault,
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
      tabs: SinceTabModel.items.map((model) {
        return Tab(
          text: model.title,
        );
      }).toList(),
    ),
  );
}
