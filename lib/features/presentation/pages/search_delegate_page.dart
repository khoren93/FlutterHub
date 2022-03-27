import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/presentation/widgets/list_tiles/repository_tile.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../domain/entities/models.dart';
import '../cubit/search/search_cubit.dart';
import '../widgets/tab_bars/search_tab_bar.dart';
import 'repository_page.dart';
import 'user_page.dart';
import '../widgets/empty_widget.dart';
import '../widgets/list_tiles/user_tile.dart';

class SearchDelegatePage extends SearchDelegate {
  SearchDelegatePage(this.type) : super();

  final SearchType type;

  final _repositoryRefreshController = RefreshController(initialRefresh: true);
  final _userRefreshController = RefreshController(initialRefresh: true);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    switch (type) {
      case SearchType.repository:
        return _buildRepositoriesList(context, query);
      case SearchType.user:
        return _buildUsersList(context, query);
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  Widget _buildRepositoriesList(BuildContext context, String query) {
    return BlocBuilder<SearchRepositoryCubit, SearchRepositoryState>(
      builder: (context, state) {
        return SmartRefresher(
          controller: _repositoryRefreshController,
          enablePullUp: true,
          onRefresh: () {
            context.read<SearchRepositoryCubit>().searchRepository(
                  query: query,
                  isRefresh: true,
                );
          },
          onLoading: () {
            context.read<SearchRepositoryCubit>().searchRepository(
                  query: query,
                  isRefresh: false,
                );
          },
          child: state.when(
            loading: () => Container(),
            loaded: (items, hasNextPage) {
              _repositoryRefreshController.refreshCompleted();
              if (hasNextPage) {
                _repositoryRefreshController.loadComplete();
              } else {
                _repositoryRefreshController.loadNoData();
              }
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) => RepositoryTile(
                  item: items[index],
                  onTap: (item) {
                    _onRepositorySelected(context, item);
                  },
                ),
              );
            },
            empty: () {
              _repositoryRefreshController.refreshCompleted();
              _repositoryRefreshController.loadNoData();
              return emptyRepositoriesWidget();
            },
            error: (message, url) {
              _repositoryRefreshController.refreshFailed();
              _repositoryRefreshController.loadFailed();
              return serverFailureWidget(message, url);
            },
          ),
        );
      },
    );
  }

  Widget _buildUsersList(BuildContext context, String query) {
    return BlocBuilder<SearchUserCubit, SearchUserState>(
      builder: (context, state) {
        return SmartRefresher(
          controller: _userRefreshController,
          enablePullUp: true,
          onRefresh: () {
            context.read<SearchUserCubit>().searchUser(
                  query: query,
                  isRefresh: true,
                );
          },
          onLoading: () {
            context.read<SearchUserCubit>().searchUser(
                  query: query,
                  isRefresh: false,
                );
          },
          child: state.when(
            loading: () => Container(),
            loaded: (items, hasNextPage) {
              _userRefreshController.refreshCompleted();
              if (hasNextPage) {
                _userRefreshController.loadComplete();
              } else {
                _userRefreshController.loadNoData();
              }
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) => UserTile(
                  item: items[index],
                  onTap: (item) {
                    _onUserSelected(context, item);
                  },
                ),
              );
            },
            empty: () {
              _userRefreshController.refreshCompleted();
              _userRefreshController.loadNoData();
              return emptyUsersWidget();
            },
            error: (message, url) {
              _userRefreshController.refreshFailed();
              _userRefreshController.loadFailed();
              return serverFailureWidget(message, url);
            },
          ),
        );
      },
    );
  }

  _onRepositorySelected(BuildContext context, Repository item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RepositoryPage(fullName: item.fullName),
      ),
    );
  }

  _onUserSelected(BuildContext context, User item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserPage(owner: item.login),
      ),
    );
  }
}
