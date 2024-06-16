import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/generated/l10n.dart';

import '../cubit/login_cubit.dart';
import 'login_button.dart';

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
          const UsernameInput(),
          const SizedBox(height: spaceDefault),
          const PasswordInput(),
          const SizedBox(height: spaceDefault),
          const LoginButton(),
        ],
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Text(
      S.current.loginBasicTitle,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class UsernameInput extends StatelessWidget {
  const UsernameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.whenOrNull(
              basic: (status, isValid, username, password, message) =>
                  TextFormField(
                key: const Key('login_usernameInput_textField'),
                decoration: InputDecoration(
                  labelText: S.current.loginBasicLoginHint,
                  errorText: username.isNotValid ? 'invalid username' : null,
                ),
                onChanged: (value) =>
                    context.read<LoginCubit>().onUsernameChanged(value),
              ),
            ) ??
            Container();
      },
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.whenOrNull(
              basic: (status, isValid, username, password, message) =>
                  TextFormField(
                key: const Key('login_passwordInput_textField'),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: S.current.loginBasicPasswordHint,
                  errorText: password.isNotValid ? 'invalid password' : null,
                ),
                onChanged: (value) =>
                    context.read<LoginCubit>().onPasswordChanged(value),
              ),
            ) ??
            Container();
      },
    );
  }
}
