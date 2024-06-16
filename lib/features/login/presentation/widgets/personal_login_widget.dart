import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/generated/l10n.dart';

import '../cubit/login_cubit.dart';
import 'login_button.dart';

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
          const TokenInput(),
          const SizedBox(height: spaceDefault),
          const LoginButton(),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Text(
      S.current.loginPersonalTitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }

  _buildDescription(BuildContext context) {
    return Text(
      S.current.loginPersonalDescription(kGithubScope),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}

class TokenInput extends StatelessWidget {
  const TokenInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.whenOrNull(
              personal: (status, isValid, token, message) => TextFormField(
                decoration: InputDecoration(
                  labelText: S.current.loginPersonalLoginHint,
                  errorText: token.isNotValid ? 'invalid token' : null,
                ),
                onChanged: (value) =>
                    context.read<LoginCubit>().onPersonalTokenChanged(value),
              ),
            ) ??
            Container();
      },
    );
  }
}
