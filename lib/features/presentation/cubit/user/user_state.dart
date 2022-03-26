part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _Loading;

  const factory UserState.loaded({
    required User item,
  }) = _Loaded;
  
  const factory UserState.error({
    String? message,
    String? url,
  }) = _Error;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
