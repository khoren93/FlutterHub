import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../configs/constants.dart';
import '../../../../generated/l10n.dart';

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
          _buildLoginButton(),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Text(
      S.current.loginOAuthTitle,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  _buildDescription(BuildContext context) {
    return Text(
      S.current.loginOAuthDescription,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }

  _buildLoginButton() {
    return ElevatedButton.icon(
      label: Text(S.current.loginOAuthButton),
      icon: const Icon(FontAwesomeIcons.github),
      onPressed: () {},
    );
  }
}
