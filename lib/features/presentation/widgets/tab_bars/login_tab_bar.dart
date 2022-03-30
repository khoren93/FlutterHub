import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../../../../generated/l10n.dart';

enum LoginType { oauth, personal, basic }

class LoginTabModel {
  final String title;
  final LoginType type;

  const LoginTabModel(this.type, this.title);

  static LoginTabModel fromType(LoginType type) {
    return items().firstWhere(
      (since) => since.type == type,
      orElse: () => const LoginTabModel(LoginType.oauth, ''),
    );
  }

  static List<LoginTabModel> items() => [
        LoginTabModel(LoginType.oauth, S.current.loginOAuthTab),
        LoginTabModel(LoginType.personal, S.current.loginPersonalTab),
        LoginTabModel(LoginType.basic, S.current.loginBasicTab),
      ];
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
      tabs: LoginTabModel.items().map((model) {
        return Tab(
          text: model.title,
        );
      }).toList(),
    ),
  );
}
