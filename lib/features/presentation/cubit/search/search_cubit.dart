import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import '../../../../configs/constants.dart';
import '../../../domain/usecases/usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helpers.dart';
import '../../../domain/entities/models.dart';
import '../../../domain/repositories/search_repository.dart';

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
        reposFetchSuccess: (_items, _hasNextPage) {
          oldItems = _items;
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
        usersFetchSuccess: (_items, _hasNextPage) {
          oldItems = _items;
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
