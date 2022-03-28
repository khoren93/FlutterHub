import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import '../../../domain/entities/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/usecases/get_user_usecase.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';
part 'user_cubit.g.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({
    required this.getUserUsecase,
  }) : super(const UserState.loading());

  final GetUserUsecase getUserUsecase;

  void getUser({required String owner}) async {
    emit(const UserState.loading());
    try {
      final result = await getUserUsecase(GetUserParams(owner));
      result.fold(
        (l) => emit(UserState.error(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) => emit(UserState.loaded(item: r)),
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const UserState.error(message: kUnexpectedError));
    }
  }
}
