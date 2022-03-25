import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/core/error/failure.dart';
import 'package:flutterhub/features/repositories/domain/usecases/usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/models.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';
part 'search_cubit.g.dart';

class SearchRepositoryCubit extends Cubit<SearchRepositoryState> {
  SearchRepositoryCubit({
    required this.searchRepositories,
  }) : super(const SearchRepositoryState.loading());

  final SearchRepositoriesUsecase searchRepositories;

  void searchRepository(String query) async {
    emit(const SearchRepositoryState.loading());
    try {
      final result =
          await searchRepositories(SearchRepositoriesParams(query, 1));
      result.fold(
        (l) => emit(SearchRepositoryState.error(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) => emit(r.isEmpty
            ? const SearchRepositoryState.empty()
            : SearchRepositoryState.loaded(
                items: r.items ?? [],
                hasNextPage: r.hasNextPage,
              )),
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const SearchRepositoryState.error(message: kUnexpectedError));
    }
  }
}

class SearchUserCubit extends Cubit<SearchUserState> {
  SearchUserCubit({
    required this.searchUsers,
  }) : super(const SearchUserState.loading());

  final SearchUsersUsecase searchUsers;

  void searchUser(String query) async {
    emit(const SearchUserState.loading());
    try {
      final result = await searchUsers(SearchUsersParams(query, 1));
      result.fold(
        (l) => emit(SearchUserState.error(
          message: l.messageText(),
          url: l.documentationUrlText(),
        )),
        (r) => emit(r.isEmpty
            ? const SearchUserState.empty()
            : SearchUserState.loaded(
                items: r.items ?? [],
                hasNextPage: r.hasNextPage,
              )),
      );
    } catch (e) {
      debugPrint(e.toString());
      emit(const SearchUserState.error(message: kUnexpectedError));
    }
  }
}
