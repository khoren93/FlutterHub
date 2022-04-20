import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import '../../../../configs/constants.dart';
import '../../../domain/entities/models.dart';
import '../../../domain/repositories/trend_repository.dart';
import '../../../domain/usecases/trending_repositories_usecase.dart';
import '../../../domain/usecases/trending_users_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_state.dart';
part 'trending_cubit.freezed.dart';
part 'trending_cubit.g.dart';

class TrendingCubit extends Cubit<TrendingState> {
  TrendingCubit(
    this.trendingRepositoriesUsecase,
    this.trendingUsersUsecase,
  ) : super(const TrendingState.initial());

  final TrendingRepositoriesUsecase trendingRepositoriesUsecase;
  final TrendingUsersUsecase trendingUsersUsecase;

  void fetchRepositories(TrendingParams params) async {
    emit(const TrendingState.reposFetchInProgress());
    try {
      final result = await trendingRepositoriesUsecase(params);
      result.fold(
        (l) => emit(TrendingState.reposFetchError(
          message: l.messageText(),
        )),
        (r) {
          emit(r.isEmpty
              ? const TrendingState.reposFetchEmpty()
              : TrendingState.reposFetchSuccess(items: r));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const TrendingState.reposFetchError(message: kUnexpectedError));
    }
  }

  void fetchUsers(TrendingParams params) async {
    emit(const TrendingState.usersFetchInProgress());
    try {
      final result = await trendingUsersUsecase(params);
      result.fold(
        (l) => emit(TrendingState.usersFetchError(
          message: l.messageText(),
        )),
        (r) {
          emit(r.isEmpty
              ? const TrendingState.usersFetchEmpty()
              : TrendingState.usersFetchSuccess(items: r));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const TrendingState.usersFetchError(message: kUnexpectedError));
    }
  }
}
