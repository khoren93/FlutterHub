import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

import '../../../../generated/l10n.dart';
import '../cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isInProgress) {
          FocusScope.of(context).unfocus();
        }
      },
      builder: (context, state) {
        return state.when(
          oauth: (status, isValid, message) => status.isInProgress
              ? const CircularProgressIndicator()
              : ElevatedButton.icon(
                  icon: const Icon(FontAwesomeIcons.github),
                  label: Text(S.current.loginOAuthButton),
                  onPressed: () =>
                      context.read<LoginCubit>().onOAuthLoginPressed(),
                ),
          personal: (status, isValid, token, message) => status.isInProgress
              ? const CircularProgressIndicator()
              : ElevatedButton.icon(
                  icon: const Icon(FontAwesomeIcons.github),
                  label: Text(S.current.loginPersonalButton),
                  onPressed: isValid
                      ? () =>
                          context.read<LoginCubit>().onPersonalLoginPressed()
                      : null,
                ),
          basic: (status, isValid, username, password, message) =>
              status.isInProgress
                  ? const CircularProgressIndicator()
                  : ElevatedButton.icon(
                      icon: const Icon(FontAwesomeIcons.github),
                      label: Text(S.current.loginBasicButton),
                      onPressed: isValid
                          ? () =>
                              context.read<LoginCubit>().onBasicLoginPressed()
                          : null,
                    ),
        );
      },
    );
  }
}
