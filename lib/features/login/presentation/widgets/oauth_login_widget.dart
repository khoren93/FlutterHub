import 'package:flutter/material.dart';

import '../../../../configs/constants.dart';
import '../../../../generated/l10n.dart';
import 'login_button.dart';

class OAuthLoginWidget extends StatelessWidget {
  const OAuthLoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingSmallDefault,
      child: Column(
        children: [
          _buildTitle(context),
          const SizedBox(height: spaceDefault),
          _buildDescription(context),
          const SizedBox(height: spaceDefault),
          const LoginButton(),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Text(
      S.current.loginOAuthTitle,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  _buildDescription(BuildContext context) {
    return Text(
      S.current.loginOAuthDescription,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
