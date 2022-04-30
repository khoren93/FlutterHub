import 'dart:math';

import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/configs/app_router.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/presentation/widgets/network_image.dart';
import 'package:flutterhub/core/extensions.dart';
import 'package:flutterhub/generated/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../cubit/repository/repository_cubit.dart';
import '../widgets/common_widgets.dart';
import '../widgets/empty_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RepositoryPage extends StatefulWidget {
  const RepositoryPage({Key? key, required this.arguments}) : super(key: key);
  final Object? arguments;

  @override
  State<RepositoryPage> createState() => _RepositoryPageState();
}

class _RepositoryPageState extends State<RepositoryPage> {
  final _refreshController = RefreshController(initialRefresh: true);

  String? get fullName => widget.arguments as String;

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
          body: ContainerX(
            child: SmartRefresher(
              controller: _refreshController,
              onRefresh: _onRefresh,
              child: state.when(
                fetchInProgress: _buildInProgressWidget,
                fetchSuccess: (item) => _buildSuccessWidget(context, item),
                fetchError: (message, url) => _buildErrorWidget(message, url),
              ),
            ),
          ),
        );
      },
    );
  }

  _onRefresh() {
    context.read<RepositoryCubit>().fetchRepository(fullName: fullName ?? '');
  }

  Widget _buildInProgressWidget() {
    return Container();
  }

  Widget _buildErrorWidget(String? message, String? url) {
    _refreshController.refreshFailed();
    return serverErrorWidget(message, url);
  }

  AppBar _buildAppBar(BuildContext context, RepositoryState item) {
    return item.maybeWhen(
      orElse: () => AppBar(
        title: Text(fullName ?? ''),
      ),
      fetchSuccess: (item) => AppBar(
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.user,
              arguments: item.owner?.login,
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
              launchUrl(Uri.parse(item.htmlUrl ?? ''));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessWidget(BuildContext context, Repository item) {
    _refreshController.refreshCompleted();
    return ListView(
      padding: paddingSmall,
      children: [
        const SizedBox(height: spaceDefault),
        _buildRepositoryInfo(context, item),
        _buildStats(context, item),
        if (item.topics != null) _buildTopics(context, item.topics),
        _buildRepoActions(context, item),
        _buildRepoRows(context, item),
        const SizedBox(height: spaceLarge4),
      ],
    );
  }

  // Repository title and description
  Widget _buildRepositoryInfo(BuildContext context, Repository item) {
    return ListTile(
      leading: const Icon(FontAwesomeIcons.bookBookmark, size: 32),
      title: Text(item.fullName ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(item.description ?? ''),
        ],
      ),
      isThreeLine: true,
    );
  }

  // Repository size, created at and updated at
  Widget _buildStats(BuildContext context, Repository item) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          if (item.language != null)
            _buildStatItem(
              FontAwesomeIcons.code,
              '${item.language}',
            ),
          if (item.size != null)
            _buildStatItem(
              FontAwesomeIcons.sdCard,
              filesize('${(item.size ?? 0).toInt()}'),
            ),
          if (item.createdAt != null)
            _buildStatItem(
              FontAwesomeIcons.calendarPlus,
              '${item.createdAt?.toTimeAgoString()}',
            ),
          if (item.updatedAt != null)
            _buildStatItem(
              FontAwesomeIcons.clock,
              '${item.updatedAt?.toTimeAgoString()}',
            ),
        ],
      ),
    );
  }

  Widget _buildStatItem(IconData? icon, String? text) {
    return text == null || text.isEmpty
        ? Container()
        : Padding(
            padding: paddingSmallMedium,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Center(child: Icon(icon, size: 12)),
                  const SizedBox(width: spaceMedium),
                ],
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
  }

  Widget _buildTopics(BuildContext context, List<String>? topics) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: paddingSmallMedium,
        child: Wrap(
          spacing: spaceSmall2,
          children: topics
                  ?.map((topic) => Chip(
                        label: Text(topic),
                        padding: EdgeInsets.zero,
                        visualDensity: VisualDensity.compact,
                        backgroundColor:
                            Theme.of(context).primaryColor.withOpacity(0.4),
                      ))
                  .toList() ??
              [],
        ),
      ),
    );
  }

  // Repository watching, forks and stars
  Widget _buildRepoActions(BuildContext context, Repository item) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildActionButton(
            context,
            FontAwesomeIcons.star,
            S.current.repositoryStarsTitle,
            item.stargazersCount,
          ),
          _buildActionButton(
            context,
            FontAwesomeIcons.codeBranch,
            S.current.repositoryForksTitle,
            item.forksCount,
          ),
          _buildActionButton(
            context,
            FontAwesomeIcons.eye,
            S.current.repositoryWatchingTitle,
            item.subscribersCount,
          ),
        ],
      ),
    );
  }

  _buildActionButton(
      BuildContext context, IconData icon, String title, int? count) {
    return Card(
      child: Padding(
        padding: paddingSmallDefault,
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).primaryColor),
            const SizedBox(width: spaceDefault),
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

  // Repository issues, pull requests, commits, branches, releases and etc
  Widget _buildRepoRows(BuildContext context, Repository item) {
    return Column(
      children: [
        if (item.fork == true)
          _buildRowItem(context, FontAwesomeIcons.codeFork,
              S.current.repositoryParentTitle, null, () {
            _onParentSelect(item);
          }),
        if (item.homepage != null && item.homepage?.isNotEmpty == true)
          _buildRowItem(context, FontAwesomeIcons.link,
              S.current.repositoryHomepageTitle, '${item.homepage}', () {
            _onHomepageSelect(item);
          }),
        _buildRowItem(context, FontAwesomeIcons.circleExclamation,
            S.current.repositoryIssuesTitle, '${item.openIssuesCount}', () {
          _onIssuesSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.codePullRequest,
            S.current.repositoryPullRequestsTitle, null, () {
          _onPullRequestsSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.codeCommit,
            S.current.repositoryCommitsTitle, null, () {
          _onCommitsSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.codeBranch,
            S.current.repositoryBranchesTitle, '${item.defaultBranch}', () {
          _onBranchesSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.tag,
            S.current.repositoryReleasesTitle, null, () {
          _onReleasesSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.users,
            S.current.repositoryContributorsTitle, null, () {
          _onContributorsSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.rss,
            S.current.repositoryEventsTitle, null, () {
          _onEventsSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.bell,
            S.current.repositoryNotificationsTitle, null, () {
          _onNotificationsSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.folder,
            S.current.repositorySourceTitle, null, () {
          _onSourceCodeSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.star,
            S.current.repositoryStarHistoryTitle, 'star-history.t9t.io', () {
          _onStarHistorySelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.chartPie,
            S.current.repositoryCountLinesOfCodeTitle, null, () {
          _onCountLinesSelect(item);
        }),
      ],
    );
  }

  _buildRowItem(BuildContext context, IconData icon, String title,
      String? detail, Function()? onTap) {
    final width = min(MediaQuery.of(context).size.width, spaceMaxWidth);
    return Card(
      child: ListTile(
        dense: true,
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (detail != null)
              Container(
                constraints: BoxConstraints(maxWidth: width * 0.4),
                child: Chip(label: Text(detail)),
              ),
            const Icon(FontAwesomeIcons.chevronRight),
          ],
        ),
        onTap: onTap,
      ),
    );
  }

  _onParentSelect(Repository item) {
    Navigator.of(context).pushNamed(
      AppRoutes.repository,
      arguments: item.parent?.fullName,
    );
  }

  _onHomepageSelect(Repository item) {
    if (item.homepage != null) {
      launchUrl(Uri.parse(item.homepage ?? ''));
    }
  }

  _onIssuesSelect(Repository item) {}

  _onPullRequestsSelect(Repository item) {}

  _onCommitsSelect(Repository item) {}

  _onBranchesSelect(Repository item) {}

  _onReleasesSelect(Repository item) {}

  _onContributorsSelect(Repository item) {}

  _onEventsSelect(Repository item) {}

  _onNotificationsSelect(Repository item) {}

  _onSourceCodeSelect(Repository item) {}

  _onStarHistorySelect(Repository item) {
    final url = '$kStarHistoryApiBaseUrl/#${item.fullName}';
    launchUrl(Uri.parse(url));
  }

  _onCountLinesSelect(Repository item) {}
}
