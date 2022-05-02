part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.oauth({
    @Default(FormzStatus.pure) FormzStatus status,
    String? message,
  }) = _OAuth;

  const factory LoginState.personal({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(PersonalToken.pure()) PersonalToken token,
    String? message,
  }) = _Personal;

  const factory LoginState.basic({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
    String? message,
  }) = _Basic;
}
