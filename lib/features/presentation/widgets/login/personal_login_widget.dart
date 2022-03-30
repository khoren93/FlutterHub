import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../configs/constants.dart';
import '../../../../generated/l10n.dart';

class PersonalLoginWidget extends StatelessWidget {
  const PersonalLoginWidget({Key? key}) : super(key: key);

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
          _buildTokenTextField(),
          const SizedBox(height: spaceDefault),
          _buildLoginButton(),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Text(
      S.current.loginPersonalTitle,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  _buildDescription(BuildContext context) {
    return Text(
      S.current.loginPersonalDescription(githubScope),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }

  _buildTokenTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: S.current.loginPersonalLoginHint,
        filled: true,
      ),
    );
  }

  _buildLoginButton() {
    return ElevatedButton.icon(
      label: Text(S.current.loginPersonalButton),
      icon: const Icon(FontAwesomeIcons.github),
      onPressed: () {},
    );
  }
}
