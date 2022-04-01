import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/presentation/pages/user_page.dart';
import 'package:flutterhub/features/presentation/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../cubit/repository/repository_cubit.dart';
import '../widgets/empty_widget.dart';
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
    return BlocBuilder<RepositoryCubit, RepositoryState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(context, state),
          body: SmartRefresher(
            controller: _refreshController,
            onRefresh: _onRefresh,
            child: state.when(
              fetchInProgress: _buildInProgressWidget,
              fetchSuccess: (item) => _buildSuccessWidget(context, item),
              fetchError: (message, url) => _buildErrorWidget(message, url),
            ),
          ),
        );
      },
    );
  }

  _onRefresh() {
    context
        .read<RepositoryCubit>()
        .fetchRepository(fullName: widget.fullName ?? '');
  }

  Widget _buildInProgressWidget() {
    return Container();
  }

  AppBar _buildAppBar(BuildContext context, RepositoryState item) {
    return item.maybeWhen(
      orElse: () => AppBar(
        title: Text(widget.fullName ?? ''),
      ),
      fetchSuccess: (item) => AppBar(
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => UserPage(
                  owner: item.owner?.login,
                ),
              ),
            );
          },
          child: Row(
            children: [
              networkImage(
                context,
                item.owner?.avatarUrl,
                width: 44,
                height: 44,
              ),
              const SizedBox(width: spaceDefault),
              Expanded(child: Text(item.owner?.login ?? '')),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.github),
            onPressed: () {
              launch(item.htmlUrl ?? '');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessWidget(BuildContext context, Repository item) {
    _refreshController.refreshCompleted();
    return Column(
      children: [
        const SizedBox(height: spaceDefault),
        _buildRepositoryInfo(context, item),
      ],
    );
  }

  Widget _buildRepositoryInfo(BuildContext context, Repository item) {
    return ListTile(
      leading: const Icon(FontAwesomeIcons.bookBookmark, size: 32),
      title: Text(item.fullName ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(item.description ?? ''),
          const SizedBox(height: spaceSmall2),
          _buildStats(context, item),
        ],
      ),
      isThreeLine: true,
    );
  }

  Widget _buildStats(BuildContext context, Repository item) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildStat(
            context,
            FontAwesomeIcons.eye,
            'Watching',
            item.subscribersCount,
          ),
          _buildStat(
            context,
            FontAwesomeIcons.codeBranch,
            'Forks',
            item.forksCount,
          ),
          _buildStat(
            context,
            FontAwesomeIcons.star,
            'Stars',
            item.stargazersCount,
          ),
        ],
      ),
    );
  }

  _buildStat(BuildContext context, IconData icon, String title, int? count) {
    return Card(
      child: Padding(
        padding: paddingSmallMedium,
        child: Row(
          children: [
            Icon(icon, size: 18),
            const SizedBox(width: spaceMedium),
            Column(
              children: [
                Text(
                  NumberFormat.compact().format(count),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(title),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Scaffold _buildErrorWidget(String? message, String? url) {
    _refreshController.refreshFailed();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.fullName ?? ''),
      ),
      body: serverErrorWidget(message, url),
    );
  }
}
