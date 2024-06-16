part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.oauth({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? message,
  }) = _OAuth;

  const factory LoginState.personal({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    @Default(PersonalToken.pure()) PersonalToken token,
    String? message,
  }) = _Personal;

  const factory LoginState.basic({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
    String? message,
  }) = _Basic;
}
