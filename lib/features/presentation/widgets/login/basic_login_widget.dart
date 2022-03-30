import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/generated/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasicLoginWidget extends StatelessWidget {
  const BasicLoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingSmallDefault,
      child: Column(
        children: [
          _buildTitle(context),
          const SizedBox(height: spaceDefault),
          _buildEmailTextField(),
          _buildPasswordTextField(),
          const SizedBox(height: spaceDefault),
          _buildLoginButton(),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Text(
      S.current.loginBasicTitle,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  _buildEmailTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: S.current.loginBasicLoginHint,
        filled: true,
      ),
    );
  }

  _buildPasswordTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: S.current.loginBasicPasswordHint,
        filled: true,
      ),
      obscureText: true,
    );
  }

  _buildLoginButton() {
    return ElevatedButton.icon(
      label: Text(S.current.loginBasicButton),
      icon: const Icon(FontAwesomeIcons.github),
      onPressed: () {},
    );
  }
}
