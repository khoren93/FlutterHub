part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.fetchInProgress() = _FetchInProgress;

  const factory UserState.fetchSuccess({
    required User item,
  }) = _FetchSuccess;

  const factory UserState.fetchError({
    String? message,
    String? url,
  }) = _fetchError;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
