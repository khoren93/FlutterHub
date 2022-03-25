import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/search/search_cubit.dart';
import 'package:flutterhub/features/repositories/presentation/pages/repository_page.dart';
import 'package:flutterhub/features/repositories/presentation/widgets/empty_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../widgets/list_view_tiles.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _refreshController = RefreshController(initialRefresh: true);

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return SmartRefresher(
            controller: _refreshController,
            onRefresh: () {
              context.read<SearchCubit>().search('Swifthub');
            },
            child: state.when(
              loading: () => Container(),
              loaded: (result) {
                _refreshController.refreshCompleted();
                return ListView.builder(
                  itemCount: result.length,
                  itemBuilder: (BuildContext context, int index) =>
                      RepositoryTile(
                    item: result[index],
                    onTap: (item) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              RepositoryPage(fullName: item.fullName),
                        ),
                      );
                    },
                  ),
                );
              },
              error: (message, url) {
                _refreshController.refreshFailed();
                return serverFailureWidget(message, url);
              },
            ),
          );
        },
      ),
    );
  }
}
