import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/repositories/domain/repositories/repositories_repository.dart';
import 'package:flutterhub/features/repositories/domain/usecases/repositories_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../configs/constants.dart';
import '../../../../utils/helpers.dart';
import '../../../core/data/models/failure.dart';

part 'repositories_state.dart';
part 'repositories_cubit.freezed.dart';
part 'repositories_cubit.g.dart';

class RepositoriesCubit extends Cubit<RepositoriesState> {
  RepositoriesCubit(
    this.userRepositoriesUsecase,
    this.userStarredRepositoriesUsecase,
    this.userWatchingRepositoriesUsecase,
    this.forkRepositoriesUsecase,
  ) : super(const RepositoriesState.initial());

  final UserRepositoriesUsecase userRepositoriesUsecase;
  final UserStarredRepositoriesUsecase userStarredRepositoriesUsecase;
  final UserWatchingRepositoriesUsecase userWatchingRepositoriesUsecase;
  final ForkRepositoriesUsecase forkRepositoriesUsecase;

  void fetchUserRepositories(
      UserRepositoriesParams params, bool isRefresh) async {
    _fetchRepositories(userRepositoriesUsecase, params, isRefresh);
  }

  void fetchUserStarredRepositories(
      UserRepositoriesParams params, bool isRefresh) async {
    _fetchRepositories(userStarredRepositoriesUsecase, params, isRefresh);
  }

  void fetchUserWatchingRepositories(
      UserRepositoriesParams params, bool isRefresh) async {
    _fetchRepositories(userWatchingRepositoriesUsecase, params, isRefresh);
  }

  void fetchForkRepositories(RepositoriesParams params, bool isRefresh) async {
    _fetchRepositories(forkRepositoriesUsecase, params, isRefresh);
  }

  void _fetchRepositories(usecase, params, bool isRefresh) async {
    List<Repository> oldItems = [];
    if (!isRefresh) {
      state.whenOrNull(
        reposFetchSuccess: (items, hasNextPage) {
          oldItems = items;
        },
      );
    } else {
      emit(const RepositoriesState.reposFetchInProgress());
    }
    try {
      final page = pageForItems(isRefresh, oldItems);
      debugPrint('page: $page');
      final Either<Failure, List<Repository>> result = await usecase(params);
      result.fold(
        (l) => emit(RepositoriesState.reposFetchError(
          message: l.messageText(),
        )),
        (r) {
          // final items = isRefresh ? r : oldItems + r;
          // emit(items.isEmpty
          //     ? const RepositoriesState.reposFetchEmpty()
          //     : RepositoriesState.reposFetchSuccess(
          //         items: items,
          //         hasNextPage: r.hasNextPage,
          //       ));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const RepositoriesState.reposFetchError(message: kUnexpectedError));
    }
  }
}
