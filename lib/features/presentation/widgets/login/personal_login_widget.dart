import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/presentation/widgets/login/login_button.dart';

import '../../../../configs/constants.dart';
import '../../../../generated/l10n.dart';
import '../../cubit/login/login_cubit.dart';

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
}

class TokenInput extends StatelessWidget {
  const TokenInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.whenOrNull(
              personal: (status, token, message) => TextFormField(
                decoration: InputDecoration(
                  labelText: S.current.loginPersonalLoginHint,
                  errorText: token.invalid ? 'invalid token' : null,
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
