import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import '../../../domain/entities/models.dart';
import '../../../domain/repositories/trend_repository.dart';
import '../../../domain/usecases/trending_repositories_usecase.dart';
import '../../../domain/usecases/trending_users_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failure.dart';

part 'trending_state.dart';
part 'trending_cubit.freezed.dart';
part 'trending_cubit.g.dart';

class TrendingRepositoryCubit extends Cubit<TrendingRepositoryState> {
  TrendingRepositoryCubit(this.trendingRepositoriesUsecase)
      : super(const TrendingRepositoryState.loading());

  final TrendingRepositoriesUsecase trendingRepositoriesUsecase;

  void trendingRepositories(TrendingParams params) async {
    emit(const TrendingRepositoryState.loading());
    try {
      final result = await trendingRepositoriesUsecase(params);
      result.fold(
        (l) => emit(TrendingRepositoryState.error(
          message: l.messageText(),
        )),
        (r) {
          emit(r.isEmpty
              ? const TrendingRepositoryState.empty()
              : TrendingRepositoryState.loaded(
                  items: r.map((e) => e.toRepository()).toList()));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const TrendingRepositoryState.error(message: kUnexpectedError));
    }
  }
}

class TrendingUserCubit extends Cubit<TrendingUserState> {
  TrendingUserCubit(this.trendingUsersUsecase)
      : super(const TrendingUserState.loading());

  final TrendingUsersUsecase trendingUsersUsecase;

  void trendingUsers(TrendingParams params) async {
    emit(const TrendingUserState.loading());
    try {
      final result = await trendingUsersUsecase(params);
      result.fold(
        (l) => emit(TrendingUserState.error(
          message: l.messageText(),
        )),
        (r) {
          emit(r.isEmpty
              ? const TrendingUserState.empty()
              : TrendingUserState.loaded(
                  items: r.map((e) => e.toUser()).toList(),
                ));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const TrendingUserState.error(message: kUnexpectedError));
    }
  }
}
