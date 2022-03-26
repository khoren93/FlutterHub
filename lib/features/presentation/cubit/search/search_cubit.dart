import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/core/app_constants.dart';
import 'package:flutterhub/core/error/failure.dart';
import 'package:flutterhub/features/domain/usecases/usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helpers.dart';
import '../../../domain/entities/models.dart';
import '../../../domain/repositories/search_repository.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';
part 'search_cubit.g.dart';

class SearchRepositoryCubit extends Cubit<SearchRepositoryState> {
  SearchRepositoryCubit({
    required this.searchRepositoriesUsecase,
  }) : super(const SearchRepositoryState.loading());

  final SearchRepositoriesUsecase searchRepositoriesUsecase;

  void searchRepository(
      {required String query, required bool isRefresh}) async {
    List<Repository> oldItems = [];
    if (!isRefresh) {
      state.whenOrNull(
        loaded: (_items, _hasNextPage) {
          oldItems = _items;
        },
      );
    } else {
      emit(const SearchRepositoryState.loading());
    }
    try {
      final page = pageForItems(isRefresh, oldItems);
      final result =
          await searchRepositoriesUsecase(SearchParams(query, page, kPerPage));
      result.fold(
        (l) => emit(SearchRepositoryState.error(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) {
          final items = isRefresh ? r.items ?? [] : oldItems + (r.items ?? []);
          emit(items.isEmpty
              ? const SearchRepositoryState.empty()
              : SearchRepositoryState.loaded(
                  items: items,
                  hasNextPage: r.hasNextPage,
                ));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const SearchRepositoryState.error(message: kUnexpectedError));
    }
  }
}

class SearchUserCubit extends Cubit<SearchUserState> {
  SearchUserCubit({
    required this.searchUsersUsecase,
  }) : super(const SearchUserState.loading());

  final SearchUsersUsecase searchUsersUsecase;

  void searchUser({required String query, required bool isRefresh}) async {
    List<User> oldItems = [];
    if (!isRefresh) {
      state.whenOrNull(
        loaded: (_items, _hasNextPage) {
          oldItems = _items;
        },
      );
    } else {
      emit(const SearchUserState.loading());
    }
    try {
      final page = pageForItems(isRefresh, oldItems);
      final result =
          await searchUsersUsecase(SearchParams(query, page, kPerPage));
      result.fold(
        (l) => emit(SearchUserState.error(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) {
          final items = isRefresh ? r.items ?? [] : oldItems + (r.items ?? []);
          emit(items.isEmpty
              ? const SearchUserState.empty()
              : SearchUserState.loaded(
                  items: items,
                  hasNextPage: r.hasNextPage,
                ));
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const SearchUserState.error(message: kUnexpectedError));
    }
  }
}
