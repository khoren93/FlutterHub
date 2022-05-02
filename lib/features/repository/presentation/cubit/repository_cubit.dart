import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/repository/domain/repositories/repos_repository.dart';
import 'package:flutterhub/features/repository/domain/usecases/get_repository_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_state.dart';
part 'repository_cubit.freezed.dart';
part 'repository_cubit.g.dart';

class RepositoryCubit extends Cubit<RepositoryState> {
  RepositoryCubit(
    this.getRepositoryUsecase,
  ) : super(const RepositoryState.fetchInProgress());

  final GetRepositoryUsecase getRepositoryUsecase;

  void fetchRepository({required String fullName}) async {
    emit(const RepositoryState.fetchInProgress());
    try {
      final result = await getRepositoryUsecase(GetRepositoryParams(fullName));
      result.fold(
        (l) => emit(RepositoryState.fetchError(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) => emit(RepositoryState.fetchSuccess(item: r)),
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const RepositoryState.fetchError(message: kUnexpectedError));
    }
  }
}
