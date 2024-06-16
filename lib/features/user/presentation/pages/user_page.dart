import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/utils/app_router.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/utils/extensions.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/core/presentation/widgets/common_widgets.dart';
import 'package:flutterhub/features/core/presentation/widgets/empty_widget.dart';
import 'package:flutterhub/features/core/presentation/widgets/network_image.dart';
import 'package:flutterhub/generated/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../cubit/user_cubit.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key, required this.arguments});
  final Object? arguments;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final _refreshController = RefreshController(initialRefresh: true);

  String? get owner => widget.arguments as String;

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
          return ContainerX(
            child: SmartRefresher(
              controller: _refreshController,
              onRefresh: _onRefresh,
              child: state.when(
                fetchInProgress: _buildInProgressWidget,
                fetchSuccess: _buildSuccessWidget,
                fetchError: _buildErrorWidget,
              ),
            ),
          );
        },
      ),
    );
  }

  void _onRefresh() {
    context.read<UserCubit>().fetchUser(owner: owner ?? '');
  }

  Widget? _buildInProgressWidget() => Container();

  Widget _buildErrorWidget(String? message, String? url) {
    _refreshController.refreshFailed();
    return serverErrorWidget(message, url);
  }

  Widget? _buildSuccessWidget(User item) {
    _refreshController.refreshCompleted();
    return ListView(
      padding: paddingSmall,
      children: [
        _buildUserInfo(item),
        _buildStats(context, item),
        _buildUserActions(context, item),
        _buildUserRows(context, item),
        const SizedBox(height: spaceLarge3),
      ],
    );
  }

  Widget _buildUserInfo(User item) {
    return Padding(
      padding: paddingDefault,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              networkImage(context, item.avatarUrl, width: 140, height: 140),
              const SizedBox(width: spaceDefault),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name ?? '',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      item.login ?? '',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: spaceSmall2),
                    _buildPersonalInfo(
                        FontAwesomeIcons.locationDot, item.location, null),
                    _buildPersonalInfo(
                      FontAwesomeIcons.envelope,
                      item.email,
                      () async {
                        try {
                          launchUrl(Uri(scheme: 'mailto', path: item.email));
                        } catch (e) {
                          debugPrint(e.toString());
                        }
                      },
                    ),
                    _buildPersonalInfo(
                      FontAwesomeIcons.link,
                      item.blog,
                      () async {
                        try {
                          await launchUrl(Uri.parse(item.blog ?? ''));
                        } catch (e) {
                          debugPrint(e.toString());
                        }
                      },
                    ),
                    _buildPersonalInfo(
                      FontAwesomeIcons.building,
                      item.company,
                      () {
                        Navigator.of(context).pushNamed(
                          AppRoutes.user,
                          arguments: item.company?.replaceAll('@', ''),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (item.bio != null) ...[
            const SizedBox(height: spaceDefault),
            Text(
              item.bio ?? '',
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.left,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildPersonalInfo(IconData? icon, String? text, VoidCallback? onTap) {
    return text == null || text.isEmpty
        ? Container()
        : InkWell(
            onTap: onTap,
            child: Padding(
              padding: paddingSmall,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (icon != null) ...[
                    Center(child: Icon(icon, size: 14)),
                    const SizedBox(width: spaceMedium),
                  ],
                  Expanded(
                    child: Text(
                      text,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  // User created at and updated at
  Widget _buildStats(BuildContext context, User item) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
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
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
  }

  // User repositories, followers and following
  Widget _buildUserActions(BuildContext context, User item) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildActionButton(
            context,
            S.current.userRepositoriesTitle,
            item.publicRepos,
          ),
          _buildActionButton(
            context,
            S.current.userFollowersTitle,
            item.followers,
          ),
          _buildActionButton(
            context,
            S.current.userFollowingTitle,
            item.following,
          ),
        ],
      ),
    );
  }

  _buildActionButton(BuildContext context, String title, int? count) {
    return Card(
      child: Padding(
        padding: paddingSmallDefault,
        child: Row(
          children: [
            Column(
              children: [
                if (count != null)
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

  // User stars, watching, events and etc...
  Widget _buildUserRows(BuildContext context, User item) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500,
        mainAxisExtent: 60,
      ),
      children: [
        _buildRowItem(context, FontAwesomeIcons.star, S.current.userStarsTitle,
            '${item.starredRepositoriesCount ?? ''}', () {
          _onStarsSelect(item);
        }),
        _buildRowItem(context, FontAwesomeIcons.eye,
            S.current.userWatchingTitle, '${item.watchingCount ?? ''}', () {
          _onWatchingSelect(item);
        }),
        _buildRowItem(
            context, FontAwesomeIcons.rss, S.current.userEventsTitle, null, () {
          _onEventsSelect(item);
        }),
        _buildRowItem(
            context,
            FontAwesomeIcons.chartPie,
            S.current.userProfileSummaryTitle,
            Uri.parse(kProfileSummaryBaseUrl).host, () {
          _onProfileSummarySelect(item);
        }),
      ],
    );
  }

  _buildRowItem(BuildContext context, IconData icon, String title,
      String? detail, Function()? onTap) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: ListTile(
            dense: true,
            leading: Icon(icon, color: Theme.of(context).primaryColor),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                if (detail != null && detail.isNotEmpty) ...[
                  const SizedBox(width: spaceDefault),
                  Flexible(child: Chip(label: Text(detail)))
                ]
              ],
            ),
            trailing: const Icon(FontAwesomeIcons.chevronRight),
          ),
        ),
      ),
    );
  }

  _onStarsSelect(User item) {}

  _onWatchingSelect(User item) {}

  _onEventsSelect(User item) {}

  _onProfileSummarySelect(User item) {
    final url = '$kProfileSummaryBaseUrl/user/${item.login}';
    launchUrl(Uri.parse(url));
  }
}
