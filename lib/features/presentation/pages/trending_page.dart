import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/domain/repositories/trend_repository.dart';
import 'package:flutterhub/features/presentation/cubit/trending/trending_cubit.dart';
import 'package:flutterhub/features/presentation/pages/repository_page.dart';
import 'package:flutterhub/features/presentation/pages/settings_page.dart';
import 'package:flutterhub/features/presentation/pages/user_page.dart';
import 'package:flutterhub/features/presentation/widgets/empty_widget.dart';
import 'package:flutterhub/features/presentation/widgets/tabbars/since_tab_bar.dart';
import 'package:flutterhub/features/presentation/widgets/user_tile.dart';
import 'package:flutterhub/generated/l10n.dart' as loc;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../configs/app_store.dart';
import '../widgets/repository_tile.dart';
import 'search_delegate_page.dart';
import '../widgets/tabbars/search_tab_bar.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage>
    with TickerProviderStateMixin {
  final _repositoryRefreshController = RefreshController(initialRefresh: true);
  final _userRefreshController = RefreshController(initialRefresh: true);
  late TabController _searchTabController;
  late TabController _sinceTabController;

  final _searchTabItems = SearchTabModel.items;
  final _sinceTabItems = SinceTabModel.items;

  late SearchTabModel _selectedSearch = _searchTabItems.first;
  late SinceTabModel _selectedSince = _sinceTabItems.first;

  @override
  void initState() {
    _searchTabController =
        TabController(length: _searchTabItems.length, vsync: this);
    _searchTabController.addListener(() {
      _selectedSearch = _searchTabItems[_searchTabController.index];
    });

    _sinceTabController =
        TabController(length: _sinceTabItems.length, vsync: this);
    _sinceTabController.addListener(() {
      _selectedSince = _sinceTabItems[_sinceTabController.index];
      switch (_selectedSearch.type) {
        case SearchType.repository:
          _repositoryRefreshController.requestRefresh();
          break;
        case SearchType.user:
          _userRefreshController.requestRefresh();
          break;
      }
    });

    Connectivity().onConnectivityChanged.listen((event) {
      appStore.hasInternetConnection = event != ConnectivityResult.none;
    });

    super.initState();
  }

  @override
  void dispose() {
    _repositoryRefreshController.dispose();
    _userRefreshController.dispose();
    _searchTabController.dispose();
    _sinceTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loc.S.current.trendingAppBarTitle),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.gear),
            onPressed: _onSettingsPressed,
          ),
        ],
        bottom: buildSearchTypeTabs(context, _searchTabController),
      ),
      body: Column(
        children: [
          buildSinceTabs(context, _sinceTabController),
          Expanded(
            child: TabBarView(
              controller: _searchTabController,
              children: [
                _buildRepositoriesList(context),
                _buildUsersList(context),
              ],
            ),
          ),
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

  Widget _buildRepositoriesList(BuildContext context) {
    return BlocBuilder<TrendingRepositoryCubit, TrendingRepositoryState>(
      builder: (context, state) {
        return SmartRefresher(
          controller: _repositoryRefreshController,
          onRefresh: () {
            context
                .read<TrendingRepositoryCubit>()
                .trendingRepositories(TrendingParams('', _selectedSince.value));
          },
          child: state.when(
            loading: () => Container(),
            loaded: (items) {
              _repositoryRefreshController.refreshCompleted();
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
              return emptyRepositoriesWidget();
            },
            error: (message) {
              _repositoryRefreshController.refreshFailed();
              return serverFailureWidget(message, null);
            },
          ),
        );
      },
    );
  }

  Widget _buildUsersList(BuildContext context) {
    return BlocBuilder<TrendingUserCubit, TrendingUserState>(
      builder: (context, state) {
        return SmartRefresher(
          controller: _userRefreshController,
          onRefresh: () {
            context
                .read<TrendingUserCubit>()
                .trendingUsers(TrendingParams('', _selectedSince.value));
          },
          child: state.when(
            loading: () => Container(),
            loaded: (items) {
              _userRefreshController.refreshCompleted();
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
              return emptyUsersWidget();
            },
            error: (message) {
              _userRefreshController.refreshFailed();
              _userRefreshController.loadFailed();
              return serverFailureWidget(message, null);
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
      delegate: SearchDelegatePage(_selectedSearch.type),
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
