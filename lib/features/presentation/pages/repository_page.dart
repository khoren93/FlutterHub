import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/presentation/cubit/repository/repository_cubit.dart';
import 'package:flutterhub/features/presentation/widgets/empty_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RepositoryPage extends StatefulWidget {
  const RepositoryPage({Key? key, required this.fullName}) : super(key: key);
  final String? fullName;

  @override
  State<RepositoryPage> createState() => _RepositoryPageState();
}

class _RepositoryPageState extends State<RepositoryPage> {
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
        title: const Text('Repository'),
      ),
      body: BlocBuilder<RepositoryCubit, RepositoryState>(
        builder: (context, state) {
          return SmartRefresher(
            controller: _refreshController,
            onRefresh: () {
              context
                  .read<RepositoryCubit>()
                  .getRepository(fullName: widget.fullName ?? '');
            },
            child: state.when(
              loading: () => Container(),
              loaded: (item) {
                _refreshController.refreshCompleted();
                return Text(item.fullName ?? '');
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
