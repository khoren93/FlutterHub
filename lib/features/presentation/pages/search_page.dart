import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/presentation/cubit/search/search_cubit.dart';
import 'package:flutterhub/features/presentation/pages/repository_page.dart';
import 'package:flutterhub/features/presentation/pages/settings_page.dart';
import 'package:flutterhub/features/presentation/pages/user_page.dart';
import 'package:flutterhub/features/presentation/widgets/empty_widget.dart';
import 'package:flutterhub/features/presentation/widgets/user_tile.dart';
import 'package:flutterhub/generated/l10n.dart' as loc;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../configs/app_store.dart';
import '../widgets/repository_tile.dart';
import '../widgets/repositories_search_delegate.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  final _repositoryRefreshController = RefreshController(initialRefresh: true);
  final _userRefreshController = RefreshController(initialRefresh: true);
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    Connectivity().onConnectivityChanged.listen((event) {
      appStore.hasInternetConnection = event != ConnectivityResult.none;
    });
    super.initState();
  }

  @override
  void dispose() {
    _repositoryRefreshController.dispose();
    _userRefreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loc.S.current.searchAppBarTile),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.gear),
            onPressed: _onSettingsPressed,
          ),
        ],
        bottom: _buildSearchTypeTabsWidget(context, _tabController),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildRepositoriesList(context),
          _buildUsersList(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.magnifyingGlass),
        onPressed: () {
          _onSearchPressed(context);
        },
      ),
    );
  }

  TabBar _buildSearchTypeTabsWidget(
      BuildContext context, TabController controller) {
    return TabBar(
      controller: controller,
      tabs: [
        Tab(
          text: loc.S.current.repositories,
          icon: const Icon(FontAwesomeIcons.bookBookmark),
        ),
        Tab(
          text: loc.S.current.users,
          icon: const Icon(FontAwesomeIcons.user),
        ),
      ],
    );
  }

  Widget _buildRepositoriesList(BuildContext context) {
    return BlocBuilder<SearchRepositoryCubit, SearchRepositoryState>(
      builder: (context, state) {
        return SmartRefresher(
          controller: _repositoryRefreshController,
          enablePullUp: true,
          onRefresh: () {
            context.read<SearchRepositoryCubit>().searchRepository(
                  query: 'swifthub',
                  isRefresh: true,
                );
          },
          onLoading: () {
            context.read<SearchRepositoryCubit>().searchRepository(
                  query: 'swifthub',
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
                  onTap: _onRepositorySelected,
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

  Widget _buildUsersList(BuildContext context) {
    return BlocBuilder<SearchUserCubit, SearchUserState>(
      builder: (context, state) {
        return SmartRefresher(
          controller: _userRefreshController,
          enablePullUp: true,
          onRefresh: () {
            context.read<SearchUserCubit>().searchUser(
                  query: 'Khoren',
                  isRefresh: true,
                );
          },
          onLoading: () {
            context.read<SearchUserCubit>().searchUser(
                  query: 'Khoren',
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
                  onTap: _onUserSelected,
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

  _onSettingsPressed() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SettingsPage(),
      ),
    );
    setState(() {});
  }

  Future<dynamic> _onSearchPressed(BuildContext context) {
    return showSearch(
      context: context,
      delegate: RepositoriesSearchDelegate(),
    );
  }

  _onRepositorySelected(Repository item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RepositoryPage(fullName: item.fullName),
      ),
    );
  }

  _onUserSelected(User item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserPage(owner: item.login),
      ),
    );
  }
}
