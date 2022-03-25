import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/repositories/domain/entities/models.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/search/search_cubit.dart';
import 'package:flutterhub/features/repositories/presentation/pages/repository_page.dart';
import 'package:flutterhub/features/repositories/presentation/pages/user_page.dart';
import 'package:flutterhub/features/repositories/presentation/widgets/empty_widget.dart';
import 'package:flutterhub/features/repositories/presentation/widgets/user_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

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
        title: const Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.gear),
            onPressed: () {},
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
      tabs: const [
        Tab(
          text: 'Repositories',
          icon: Icon(FontAwesomeIcons.bookBookmark),
        ),
        Tab(
          text: 'Users',
          icon: Icon(FontAwesomeIcons.user),
        ),
      ],
    );
  }

  Widget _buildUsersList(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SmartRefresher(
          controller: _userRefreshController,
          onRefresh: () {
            context.read<SearchCubit>().searchUser('Khoren');
          },
          child: state.when(
            loading: () => Container(),
            loaded: (repositories, users, repositoriesHasNextPage,
                usersHasNextPage) {
              _userRefreshController.refreshCompleted();
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) => UserTile(
                  item: users[index],
                  onTap: _onUserSelect,
                ),
              );
            },
            error: (message, url) {
              _userRefreshController.refreshFailed();
              return serverFailureWidget(message, url);
            },
          ),
        );
      },
    );
  }

  Widget _buildRepositoriesList(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SmartRefresher(
          controller: _repositoryRefreshController,
          onRefresh: () {
            context.read<SearchCubit>().searchRepository('Swifthub');
          },
          child: state.when(
            loading: () => Container(),
            loaded: (repositories, users, repositoriesHasNextPage,
                usersHasNextPage) {
              _repositoryRefreshController.refreshCompleted();
              return ListView.builder(
                itemCount: repositories.length,
                itemBuilder: (context, index) => RepositoryTile(
                  item: repositories[index],
                  onTap: _onRepositorySelect,
                ),
              );
            },
            error: (message, url) {
              _repositoryRefreshController.refreshFailed();
              return serverFailureWidget(message, url);
            },
          ),
        );
      },
    );
  }

  _onRepositorySelect(Repository item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RepositoryPage(fullName: item.fullName),
      ),
    );
  }

  _onUserSelect(User item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserPage(owner: item.login),
      ),
    );
  }

  Future<dynamic> _onSearchPressed(BuildContext context) {
    return showSearch(
      context: context,
      delegate: RepositoriesSearchDelegate(),
    );
  }
}
