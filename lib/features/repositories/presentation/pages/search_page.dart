import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/search/search_cubit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final _refreshController = RefreshController(initialRefresh: false);

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
              initial: () => Container(),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (result) => ListView.builder(
                itemCount: result.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = result[index];
                  return ListTile(
                    title: Text(item.name ?? ''),
                  );
                },
              ),
              error: () => const Center(child: Text('Error')),
            ),
          );
        },
      ),
    );
  }
}
