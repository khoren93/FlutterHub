import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/utils/helpers.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/search/domain/repositories/search_repository.dart';
import 'package:flutterhub/features/search/domain/usecases/search_repositories_usecase.dart';
import 'package:flutterhub/features/search/domain/usecases/search_users_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';
part 'search_cubit.g.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this.searchRepositoriesUsecase,
    this.searchUsersUsecase,
  ) : super(const SearchState.initial());

  final SearchRepositoriesUsecase searchRepositoriesUsecase;
  final SearchUsersUsecase searchUsersUsecase;

  void fetchRepository({
    required String query,
    required String order,
    required String sort,
    required bool isRefresh,
  }) async {
    List<Repository> oldItems = [];
    if (!isRefresh) {
      state.whenOrNull(
        reposFetchSuccess: (items, hasNextPage) {
          oldItems = items;
        },
      );
    } else {
      emit(const SearchState.reposFetchInProgress());
    }
    try {
      final page = pageForItems(isRefresh, oldItems);
      final result = await searchRepositoriesUsecase(
          SearchParams(query, order, sort, page, kPerPage));
      result.fold(
        (l) => emit(SearchState.reposFetchError(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) {
          final items = isRefresh ? r.items ?? [] : oldItems + (r.items ?? []);
          emit(items.isEmpty
              ? const SearchState.reposFetchEmpty()
              : SearchState.reposFetchSuccess(
                  items: items,
                  hasNextPage: r.hasNextPage,
                ));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const SearchState.reposFetchError(message: kUnexpectedError));
    }
  }

  void fetchUser({
    required String query,
    required String order,
    required String sort,
    required bool isRefresh,
  }) async {
    List<User> oldItems = [];
    if (!isRefresh) {
      state.whenOrNull(
        usersFetchSuccess: (items, hasNextPage) {
          oldItems = items;
        },
      );
    } else {
      emit(const SearchState.usersFetchInProgress());
    }
    try {
      final page = pageForItems(isRefresh, oldItems);
      final result = await searchUsersUsecase(
          SearchParams(query, order, sort, page, kPerPage));
      result.fold(
        (l) => emit(SearchState.usersFetchError(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) {
          final items = isRefresh ? r.items ?? [] : oldItems + (r.items ?? []);
          emit(items.isEmpty
              ? const SearchState.usersFetchEmpty()
              : SearchState.usersFetchSuccess(
                  items: items,
                  hasNextPage: r.hasNextPage,
                ));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const SearchState.usersFetchError(message: kUnexpectedError));
    }
  }
}
