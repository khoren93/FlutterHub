import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/user/domain/repositories/users_repository.dart';
import 'package:flutterhub/features/user/domain/usecases/get_user_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';
part 'user_cubit.g.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(
    this.getUserUsecase,
  ) : super(const UserState.fetchInProgress());

  final GetUserUsecase getUserUsecase;

  void fetchUser({required String owner}) async {
    emit(const UserState.fetchInProgress());
    try {
      final result = await getUserUsecase(UserParams(owner));
      result.fold(
        (l) => emit(UserState.fetchError(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) => emit(UserState.fetchSuccess(item: r)),
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const UserState.fetchError(message: kUnexpectedError));
    }
  }

  void setUser(User user) {
    emit(UserState.fetchSuccess(item: user));
  }
}
