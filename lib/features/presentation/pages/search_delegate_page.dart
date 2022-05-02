import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/configs/app_router.dart';
import 'package:flutterhub/features/presentation/widgets/common_widgets.dart';
import 'package:flutterhub/features/presentation/widgets/dropdowns/sort_repository_dropdown.dart';
import 'package:flutterhub/features/presentation/widgets/dropdowns/sort_user_dropdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/language_header_widget.dart';
import '../widgets/list_tiles/repository_tile.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../domain/entities/models.dart';
import '../cubit/search/search_cubit.dart';
import '../widgets/tab_bars/search_tab_bar.dart';
import '../widgets/empty_widget.dart';
import '../widgets/list_tiles/user_tile.dart';

class SearchDelegatePage extends SearchDelegate {
  SearchDelegatePage(this.type, this.selectedLanguage) : super();

  final SearchType type;
  final RepositoryLanguage? selectedLanguage;
  String? sort;
  String? order;

  final _refreshController = RefreshController(initialRefresh: true);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(FontAwesomeIcons.xmark),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(FontAwesomeIcons.arrowLeft),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildResults(context, query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  Widget _buildResults(BuildContext context, String query) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Column(
          children: [
            if (type == SearchType.repository)
              SortRepositoryDropDown(
                onChanged: (value) {
                  _onSortRepositorySelected(context, value);
                },
              ),
            if (type == SearchType.user)
              SortUserDropDown(
                onChanged: (value) {
                  _onSortUserSelected(context, value);
                },
              ),
            if (selectedLanguage != null)
              LanguageHeaderWidget(
                  context: context, language: selectedLanguage),
            Expanded(
              child: SmartRefresher(
                controller: _refreshController,
                enablePullUp: true,
                onRefresh: () => _onRefresh(context),
                onLoading: () => _onRefresh(context, isLoading: true),
                child: state.when(
                  initial: () => Container(),
                  reposFetchInProgress: () => Container(),
                  reposFetchEmpty: _buildEmptyRepositoriesWidget,
                  reposFetchSuccess: (items, hasNextPage) =>
                      _buildRepositoriesList(context, items, hasNextPage),
                  reposFetchError: _buildFailureWidget,
                  usersFetchInProgress: () => Container(),
                  usersFetchEmpty: _buildEmptyUsersWidget,
                  usersFetchSuccess: (items, hasNextPage) =>
                      _buildUsersList(context, items, hasNextPage),
                  usersFetchError: _buildFailureWidget,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  String createQuery() {
    if (selectedLanguage != null) {
      return 'language:${selectedLanguage?.urlParam} $query';
    }
    return query;
  }

  _onRefresh(BuildContext context, {bool isLoading = false}) {
    switch (type) {
      case SearchType.repository:
        context.read<SearchCubit>().fetchRepository(
              query: createQuery(),
              order: order ?? '',
              sort: sort ?? '',
              isRefresh: !isLoading,
            );
        break;
      case SearchType.user:
        context.read<SearchCubit>().fetchUser(
              query: createQuery(),
              order: order ?? '',
              sort: sort ?? '',
              isRefresh: !isLoading,
            );
        break;
    }
  }

  endLoadAnimation({
    bool isRefresh = false,
    bool hasNextPage = false,
    bool isFailure = false,
  }) {
    if (isRefresh) {
      _refreshController.refreshCompleted();
    }
    if (hasNextPage) {
      _refreshController.loadComplete();
    } else {
      _refreshController.loadNoData();
    }
    if (isFailure) {
      _refreshController.refreshFailed();
      _refreshController.loadFailed();
    }
  }

  Widget _buildEmptyRepositoriesWidget() {
    endLoadAnimation(isRefresh: true);
    return emptyRepositoriesWidget();
  }

  Widget _buildEmptyUsersWidget() {
    endLoadAnimation(isRefresh: true);
    return emptyUsersWidget();
  }

  Widget _buildRepositoriesList(
      BuildContext context, List<Repository> items, bool hasNextPage) {
    endLoadAnimation(isRefresh: true, hasNextPage: hasNextPage);
    return ContainerX(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => RepositoryTile(
          item: items[index],
          onTap: (item) => _onRepositorySelected(context, item),
        ),
      ),
    );
  }

  Widget _buildUsersList(
      BuildContext context, List<User> items, bool hasNextPage) {
    endLoadAnimation(isRefresh: true, hasNextPage: hasNextPage);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => UserTile(
        item: items[index],
        onTap: (item) => _onUserSelected(context, item),
      ),
    );
  }

  Widget _buildFailureWidget(String? message, String? url) {
    endLoadAnimation(isFailure: true);
    return serverErrorWidget(message, url);
  }

  _onSortRepositorySelected(BuildContext context, SortRepositoryType? sort) {
    order = sort?.orderValue;
    this.sort = sort?.sortValue;
    _onRefresh(context);
  }

  _onSortUserSelected(BuildContext context, SortUserType? sort) {
    order = sort?.orderValue;
    this.sort = sort?.sortValue;
    _onRefresh(context);
  }

  _onRepositorySelected(BuildContext context, Repository item) {
    Navigator.of(context).pushNamed(
      AppRoutes.repository,
      arguments: item.fullName,
    );
  }

  _onUserSelected(BuildContext context, User item) {
    Navigator.of(context).pushNamed(
      AppRoutes.user,
      arguments: item.login,
    );
  }
}
