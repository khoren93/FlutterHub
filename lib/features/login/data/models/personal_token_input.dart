import 'package:formz/formz.dart';

enum PersonalTokenValidationError { empty }

class PersonalToken extends FormzInput<String, PersonalTokenValidationError> {
  const PersonalToken.pure() : super.pure('');
  const PersonalToken.dirty([super.value = '']) : super.dirty();

  @override
  PersonalTokenValidationError? validator(String? value) {
    return value?.isNotEmpty == true
        ? null
        : PersonalTokenValidationError.empty;
  }
}
