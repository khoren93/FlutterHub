import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:flutterhub/configs/app_store.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/login/domain/repositories/login_repository.dart';
import 'package:flutterhub/features/menu/domain/repositories/user_repository.dart';
import 'package:flutterhub/features/login/domain/usecases/login_usecase.dart';
import 'package:flutterhub/features/menu/domain/usecases/user_usecase.dart';
import 'package:flutterhub/features/login/presentation/widgets/login_tab_bar.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';

import '../../data/models/password_input.dart';
import '../../data/models/personal_token_input.dart';
import '../../data/models/username_input.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.createAccessTokenUsecase, this.getUserUsecase)
      : super(const LoginState.oauth());

  final CreateAccessTokenUsecase createAccessTokenUsecase;
  final GetAuthenticatedUserUsecase getUserUsecase;

  void onLoginTypeChanged(LoginType type) {
    switch (type) {
      case LoginType.oauth:
        emit(const LoginState.oauth());
        break;
      case LoginType.personal:
        emit(const LoginState.personal());
        break;
      case LoginType.basic:
        emit(const LoginState.basic());
        break;
    }
  }

  void onOAuthLoginPressed() {
    state.whenOrNull(
      oauth: (status, valis, message) async {
        try {
          final url = Uri.https('github.com', 'login/oauth/authorize', {
            'client_id': kGithubClientId,
            'scope': kGithubScope,
            'redirect_uri': '$kGithubRedirectUrl://',
          });
          final result = await FlutterWebAuth.authenticate(
            url: url.toString(),
            callbackUrlScheme: kGithubRedirectUrl,
          );
          final code = Uri.parse(result).queryParameters['code'];
          if (code != null) {
            final token = await createAccessTokenUsecase(
              AccessTokenParams(kGithubClientId, kGithubClientSecret, code,
                  '$kGithubRedirectUrl://', ''),
            );
            token.fold(
              (l) => emit(state.copyWith(
                status: FormzSubmissionStatus.failure,
                message: l.messageText(),
              )),
              (r) async {
                await appStore.saveToken(r);
                await _fetchUser();
              },
            );
          } else {
            emit(state.copyWith(
              status: FormzSubmissionStatus.failure,
              message: kUnexpectedError,
            ));
          }
        } catch (e) {
          debugPrint(e.toString());
        }
      },
    );
  }

  void onPersonalLoginPressed() {
    state.whenOrNull(
      personal: (status, valid, token, message) async {
        emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
        final personalToken = token.value;
        await appStore.saveToken(Token(
          type: TokenType.personal,
          personalToken: personalToken,
        ));
        await _fetchUser();
      },
    );
  }

  void onBasicLoginPressed() {
    state.whenOrNull(
      basic: (status, valid, username, password, message) async {
        final isValid = Formz.validate([username, password]);
        emit(state.copyWith(
          status: FormzSubmissionStatus.initial,
          isValid: isValid,
        ));
        if (isValid) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          final credentials =
              '${username.value.trim()}:${password.value.trim()}';
          final basicToken = utf8.fuse(base64).encode(credentials);
          Token token = Token(
            type: TokenType.basic,
            basicToken: basicToken,
          );
          await appStore.saveToken(token);
          await _fetchUser();
        }
      },
    );
  }

  void onUsernameChanged(String value) {
    final username = Username.dirty(value);
    dynamic password = state.whenOrNull(
          basic: (status, valid, username, password, message) => password,
        ) ??
        const Password.pure();
    emit(LoginState.basic(
      username: username,
      password: password,
      status: FormzSubmissionStatus.initial,
      isValid: Formz.validate([username, password]),
    ));
  }

  void onPasswordChanged(String value) {
    final password = Password.dirty(value);
    dynamic username = state.whenOrNull(
          basic: (status, valid, username, password, message) => username,
        ) ??
        const Username.pure();
    emit(LoginState.basic(
      username: username,
      password: password,
      status: FormzSubmissionStatus.initial,
      isValid: Formz.validate([username, password]),
    ));
  }

  void onPersonalTokenChanged(String value) {
    final token = PersonalToken.dirty(value);
    emit(LoginState.personal(
      token: token,
      status: FormzSubmissionStatus.initial,
      isValid: Formz.validate([token]),
    ));
  }

  Future<void> _fetchUser() async {
    final result = await getUserUsecase(AuthenticatedUserParams());
    result.fold(
      (l) async {
        await appStore.deleteToken();
        await appStore.deleteUser();
        emit(state.copyWith(
            status: FormzSubmissionStatus.failure, message: l.messageText()));
      },
      (r) async {
        await appStore.saveUser(r);
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      },
    );
  }
}
