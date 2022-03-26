import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/presentation/widgets/repository_tile.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../domain/entities/models.dart';
import '../cubit/search/search_cubit.dart';
import '../pages/repository_page.dart';
import 'empty_widget.dart';

class RepositoriesSearchDelegate extends SearchDelegate {
  final _repositoryRefreshController = RefreshController(initialRefresh: true);

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
    return _buildRepositoriesList(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  Widget _buildRepositoriesList(BuildContext context) {
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

  _onRepositorySelected(BuildContext context, Repository item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RepositoryPage(fullName: item.fullName),
      ),
    );
  }
}
