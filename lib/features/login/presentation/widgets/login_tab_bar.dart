import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../../../../generated/l10n.dart';

enum LoginType { oauth, personal, basic }

extension LoginTypeExtension on LoginType {
  String get title {
    switch (this) {
      case LoginType.oauth:
        return S.current.loginOAuthTab;
      case LoginType.personal:
        return S.current.loginPersonalTab;
      case LoginType.basic:
        return S.current.loginBasicTab;
      default:
        return '';
    }
  }
}

Widget buildLoginTabs(BuildContext context, TabController controller) {
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
      tabs: LoginType.values.map((model) {
        return Tab(
          text: model.title,
        );
      }).toList(),
    ),
  );
}
