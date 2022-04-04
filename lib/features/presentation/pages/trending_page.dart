import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/configs/app_router.dart';
import 'package:flutterhub/features/presentation/cubit/languages/languages_cubit.dart';
import 'package:flutterhub/features/presentation/widgets/list_tiles/trending_repository_tile.dart';
import 'package:flutterhub/features/presentation/widgets/list_tiles/trending_user_tile.dart';
import '../../domain/entities/models.dart';
import '../../domain/repositories/trend_repository.dart';
import '../cubit/trending/trending_cubit.dart';
import '../widgets/language_header_widget.dart';
import 'menu_drawer_page.dart';
import '../widgets/empty_widget.dart';
import '../../../generated/l10n.dart' as loc;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../configs/app_store.dart';
import '../widgets/tab_bars/search_tab_bar.dart';
import '../widgets/tab_bars/since_tab_bar.dart';
import 'search_delegate_page.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage>
    with TickerProviderStateMixin {
  final _refreshController = RefreshController(initialRefresh: true);
  late TabController _searchTabController;
  late TabController _sinceTabController;

  late SearchType _selectedSearchType = SearchType.repository;
  late SinceType _selectedSinceType = SinceType.daily;
  RepositoryLanguage? _selectedLanguage;

  @override
  void initState() {
    _searchTabController =
        TabController(length: SearchType.values.length, vsync: this);
    _searchTabController.addListener(() {
      _selectedSearchType = SearchType.values[_searchTabController.index];
      _refreshController.requestRefresh();
    });

    _sinceTabController =
        TabController(length: SinceType.values.length, vsync: this);
    _sinceTabController.addListener(() {
      _selectedSinceType = SinceType.values[_sinceTabController.index];
      _refreshController.requestRefresh();
    });

    Connectivity().onConnectivityChanged.listen((event) {
      appStore.hasInternetConnection = event != ConnectivityResult.none;
    });

    super.initState();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    _searchTabController.dispose();
    _sinceTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawerPage(),
      appBar: AppBar(
        title: Text(loc.S.current.trendingAppBarTitle),
        bottom: buildSearchTypeTabs(context, _searchTabController),
        actions: [
          BlocConsumer<LanguagesCubit, LanguagesState>(
            listener: (context, state) {
              state.whenOrNull(
                fetchSuccess: (items, selected) {
                  _selectedLanguage = selected;
                  _onRefresh();
                },
              );
            },
            builder: (context, state) {
              return IconButton(
                icon: Icon(
                  FontAwesomeIcons.code,
                  color: _selectedLanguage != null
                      ? Theme.of(context).colorScheme.secondary
                      : null,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.languages);
                },
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          buildSinceTabs(context, _sinceTabController),
          Expanded(
            child: BlocBuilder<TrendingCubit, TrendingState>(
              builder: (context, state) {
                return Column(
                  children: [
                    if (_selectedLanguage != null)
                      LanguageHeaderWidget(
                          context: context, language: _selectedLanguage),
                    Expanded(
                      child: SmartRefresher(
                        controller: _refreshController,
                        onRefresh: _onRefresh,
                        child: state.when(
                          initial: () => Container(),
                          reposFetchInProgress: () => Container(),
                          reposFetchEmpty: _buildEmptyRepositoriesWidget,
                          reposFetchSuccess: _buildRepositoriesList,
                          reposFetchError: _buildFailureWidget,
                          usersFetchInProgress: () => Container(),
                          usersFetchEmpty: _buildEmptyUsersWidget,
                          usersFetchSuccess: _buildUsersList,
                          usersFetchError: _buildFailureWidget,
                        ),
                      ),
                    ),
                  ],
                );
              },
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

  _onRefresh() {
    switch (_selectedSearchType) {
      case SearchType.repository:
        context.read<TrendingCubit>().fetchRepositories(
              TrendingParams(
                _selectedLanguage?.urlParam ?? '',
                _selectedSinceType.value,
              ),
            );
        break;
      case SearchType.user:
        context.read<TrendingCubit>().fetchUsers(
              TrendingParams(
                _selectedLanguage?.urlParam ?? '',
                _selectedSinceType.value,
              ),
            );
        break;
    }
  }

  Widget _buildEmptyRepositoriesWidget() {
    _refreshController.refreshCompleted();
    return emptyRepositoriesWidget();
  }

  Widget _buildEmptyUsersWidget() {
    _refreshController.refreshFailed();
    return emptyUsersWidget();
  }

  Widget _buildRepositoriesList(List<TrendingRepository> items) {
    _refreshController.refreshCompleted();
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => TrendingRepositoryTile(
        item: items[index],
        timePeriod: _selectedSinceType.title.toLowerCase(),
        onTap: _onRepositorySelected,
        onUserTap: _onUserSelected,
      ),
    );
  }

  Widget _buildUsersList(List<TrendingUser> items) {
    _refreshController.refreshCompleted();
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => TrendingUserTile(
        item: items[index],
        onTap: _onUserSelected,
        onRepositoryTap: _onRepositorySelected,
      ),
    );
  }

  Widget _buildFailureWidget(String? message) {
    _refreshController.refreshFailed();
    return serverErrorWidget(message, null);
  }

  Future<dynamic> _onSearchPressed(BuildContext context) {
    return showSearch(
      context: context,
      delegate: SearchDelegatePage(_selectedSearchType, _selectedLanguage),
    );
  }

  _onRepositorySelected(TrendingRepository item) {
    Navigator.of(context).pushNamed(
      AppRoutes.repository,
      arguments: item.fullName,
    );
  }

  _onUserSelected(TrendingUser item) {
    Navigator.of(context).pushNamed(
      AppRoutes.user,
      arguments: item.username,
    );
  }
}
