import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/features/repositories/domain/entities/models.dart';
import 'package:flutterhub/features/repositories/domain/usecases/usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/failure.dart';

part 'repository_state.dart';
part 'repository_cubit.freezed.dart';
part 'repository_cubit.g.dart';

class RepositoryCubit extends Cubit<RepositoryState> {
  RepositoryCubit({
    required this.getRepositoryUsecase,
  }) : super(const RepositoryState.loading());

  final GetRepositoryUsecase getRepositoryUsecase;

  void getRepository({required String fullName}) async {
    emit(const RepositoryState.loading());
    try {
      final result = await getRepositoryUsecase(GetRepositoryParams(fullName));
      result.fold(
        (l) => emit(RepositoryState.error(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) => emit(RepositoryState.loaded(item: r)),
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const RepositoryState.error(message: kUnexpectedError));
    }
  }
}
