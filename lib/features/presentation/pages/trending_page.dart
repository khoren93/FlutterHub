import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/domain/repositories/trend_repository.dart';
import 'package:flutterhub/features/presentation/cubit/trending/trending_cubit.dart';
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

// Since class
class Since {
  final String name;
  final String value;

  const Since({required this.name, required this.value});

  static Since fromValue(String value) {
    return items.firstWhere(
      (since) => since.value == value,
      orElse: () => const Since(name: '', value: ''),
    );
  }

  static final items = [
    Since(name: loc.S.current.daily, value: 'daily'),
    Since(name: loc.S.current.weekly, value: 'weekly'),
    Since(name: loc.S.current.monthly, value: 'monthly'),
  ];
}

class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage>
    with TickerProviderStateMixin {
  final _repositoryRefreshController = RefreshController(initialRefresh: true);
  final _userRefreshController = RefreshController(initialRefresh: true);
  late TabController _tabController;
  late TabController _sinceTabController;

  final _sinceList = Since.items;
  late Since _selectedSince;

  @override
  void initState() {
    _selectedSince = _sinceList.first;
    _tabController = TabController(length: 2, vsync: this);
    _sinceTabController = TabController(length: _sinceList.length, vsync: this);
    _sinceTabController.addListener(() {
      _selectedSince = _sinceList[_sinceTabController.index];
      if (_tabController.index == 0) {
        _repositoryRefreshController.requestRefresh();
      } else {
        _userRefreshController.requestRefresh();
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
    _tabController.dispose();
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
        bottom: _buildSearchTypeTabsWidget(context, _tabController),
      ),
      body: Column(
        children: [
          _buildSinceTabsWidget(_sinceTabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
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
          icon: const Icon(FontAwesomeIcons.solidUser),
        ),
      ],
    );
  }

  Widget _buildSinceTabsWidget(TabController controller) {
    return Container(
      margin: paddingSmallDefault,
      height: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TabBar(
        controller: controller,
        indicator: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20.0),
        ),
        tabs: [
          Tab(
            text: loc.S.current.daily,
          ),
          Tab(
            text: loc.S.current.weekly,
          ),
          Tab(
            text: loc.S.current.monthly,
          ),
        ],
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
