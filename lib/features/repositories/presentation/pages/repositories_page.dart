import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/repositories/domain/entities/repositories_type.dart';
import 'package:flutterhub/features/repositories/domain/repositories/repositories_repository.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/repositories_cubit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../utils/app_router.dart';
import '../../../core/domain/entities/models.dart';
import '../../../core/presentation/widgets/empty_widget.dart';
import '../../../search/presentation/cubit/search_cubit.dart';
import '../../../search/presentation/widgets/repository_tile.dart';
import '../../../search/presentation/widgets/sort_repository_dropdown.dart';
import '../../../search/presentation/widgets/sort_user_dropdown.dart';
import '../../../search/presentation/widgets/user_tile.dart';

class RepositoriesPage extends StatefulWidget {
  const RepositoriesPage({Key? key, required this.type}) : super(key: key);
  final RepositoriesType type;

  @override
  State<RepositoriesPage> createState() => _RepositoriesPageState();
}

class _RepositoriesPageState extends State<RepositoriesPage> {
  final _refreshController = RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepositoriesCubit, RepositoriesState>(
      builder: (context, state) {
        return Column(
          children: [
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
                  reposFetchError: (error) => _buildFailureWidget(error, null),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _onRefresh(BuildContext context, {bool isLoading = false}) {
    // switch (widget.type) {
    //   case RepositoriesType.userRepositories:
    //     context.read<RepositoriesCubit>().fetchUserRepositories(
    //           query: createQuery(),
    //           order: order ?? '',
    //           sort: sort ?? '',
    //           isRefresh: !isLoading,
    //         );
    //     break;
    //   case RepositoriesType.userStarredRepositories:
    //     context.read<SearchCubit>().fetchUser(
    //           query: createQuery(),
    //           order: order ?? '',
    //           sort: sort ?? '',
    //           isRefresh: !isLoading,
    //         );
    //     break;
    //   default:
    //     break;
    // }
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

  Widget _buildFailureWidget(String? message, String? url) {
    endLoadAnimation(isFailure: true);
    return serverErrorWidget(message, url);
  }

  Widget _buildRepositoriesList(
      BuildContext context, List<Repository> items, bool hasNextPage) {
    endLoadAnimation(isRefresh: true, hasNextPage: hasNextPage);
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => RepositoryTile(
        item: items[index],
        onTap: (item) => _onRepositorySelected(context, item),
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

  _onSortRepositorySelected(BuildContext context, SortRepositoryType? sort) {
    // order = sort?.orderValue;
    // this.sort = sort?.sortValue;
    _onRefresh(context);
  }

  _onSortUserSelected(BuildContext context, SortUserType? sort) {
    // order = sort?.orderValue;
    // this.sort = sort?.sortValue;
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
