import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/configs/app_store.dart';
import 'package:flutterhub/features/data/models/personal_token_input.dart';
import 'package:flutterhub/features/domain/repositories/user_repository.dart';
import 'package:flutterhub/features/domain/usecases/user_usecase.dart';
import 'package:flutterhub/features/presentation/widgets/tab_bars/login_tab_bar.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/password_input.dart';
import '../../../data/models/username_input.dart';
import '../../../domain/entities/models.dart';

import 'dart:convert';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.getUserUsecase) : super(const LoginState.oauth());

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
      oauth: (_status, _message) {},
    );
  }

  void onPersonalLoginPressed() {
    state.whenOrNull(
      personal: (_status, _token, _message) async {
        emit(state.copyWith(status: FormzStatus.submissionInProgress));
        final personalToken = _token.value;
        Token token = Token(
          type: TokenType.personal,
          personalToken: personalToken,
        );
        await appStore.saveToken(token);
        await _validateToken();
      },
    );
  }

  void onBasicLoginPressed() {
    state.whenOrNull(
      basic: (_status, _username, _password, _message) async {
        emit(state.copyWith(status: Formz.validate([_username, _password])));
        if (_status.isValidated) {
          emit(state.copyWith(status: FormzStatus.submissionInProgress));
          final credentials =
              '${_username.value.trim()}:${_password.value.trim()}';
          final basicToken = utf8.fuse(base64).encode(credentials);
          Token token = Token(
            type: TokenType.basic,
            basicToken: basicToken,
          );
          await appStore.saveToken(token);
          await _validateToken();
        }
      },
    );
  }

  void onUsernameChanged(String value) {
    final username = Username.dirty(value);
    dynamic password = state.whenOrNull(
          basic: (_status, _username, _password, _message) => _password,
        ) ??
        const Password.pure();
    emit(LoginState.basic(
      username: username,
      password: password,
      status: Formz.validate([username, password]),
    ));
  }

  void onPasswordChanged(String value) {
    final password = Password.dirty(value);
    dynamic username = state.whenOrNull(
          basic: (_status, _username, _password, _message) => _username,
        ) ??
        const Username.pure();
    emit(LoginState.basic(
      username: username,
      password: password,
      status: Formz.validate([username, password]),
    ));
  }

  void onPersonalTokenChanged(String value) {
    final token = PersonalToken.dirty(value);
    emit(LoginState.personal(
      token: token,
      status: Formz.validate([token]),
    ));
  }

  Future<void> _validateToken() async {
    final result = await getUserUsecase(AuthenticatedUserParams());
    result.fold(
      (l) async {
        await appStore.deleteToken();
        emit(state.copyWith(
            status: FormzStatus.submissionFailure, message: l.messageText()));
      },
      (r) => emit(state.copyWith(status: FormzStatus.submissionSuccess)),
    );
  }
}
