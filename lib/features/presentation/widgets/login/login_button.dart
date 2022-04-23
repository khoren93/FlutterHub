import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';

import '../../../../generated/l10n.dart';
import '../../cubit/login/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionInProgress) {
          FocusScope.of(context).unfocus();
        }
      },
      builder: (context, state) {
        return state.when(
          oauth: (status, message) => status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : ElevatedButton.icon(
                  icon: const Icon(FontAwesomeIcons.github),
                  label: Text(S.current.loginOAuthButton),
                  onPressed: () =>
                      context.read<LoginCubit>().onOAuthLoginPressed(),
                ),
          personal: (status, token, message) => status.isSubmissionInProgress
              ? const CircularProgressIndicator()
              : ElevatedButton.icon(
                  icon: const Icon(FontAwesomeIcons.github),
                  label: Text(S.current.loginPersonalButton),
                  onPressed: status.isValidated
                      ? () =>
                          context.read<LoginCubit>().onPersonalLoginPressed()
                      : null,
                ),
          basic: (status, username, password, message) =>
              status.isSubmissionInProgress
                  ? const CircularProgressIndicator()
                  : ElevatedButton.icon(
                      icon: const Icon(FontAwesomeIcons.github),
                      label: Text(S.current.loginBasicButton),
                      onPressed: status.isValidated
                          ? () =>
                              context.read<LoginCubit>().onBasicLoginPressed()
                          : null,
                    ),
        );
      },
    );
  }
}
