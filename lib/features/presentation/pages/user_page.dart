import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/user/user_cubit.dart';
import '../widgets/empty_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key, this.owner}) : super(key: key);
  final String? owner;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
        title: const Text('User'),
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          return SmartRefresher(
            controller: _refreshController,
            onRefresh: () {
              context.read<UserCubit>().getUser(owner: widget.owner ?? '');
            },
            child: state.when(
              loading: () => Container(),
              loaded: (item) {
                _refreshController.refreshCompleted();
                return Text(item.login ?? '');
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
