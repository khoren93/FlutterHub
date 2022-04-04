import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/configs/app_router.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/presentation/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../configs/constants.dart';
import '../cubit/user/user_cubit.dart';
import '../widgets/empty_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key, required this.arguments}) : super(key: key);
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
          return SmartRefresher(
            controller: _refreshController,
            onRefresh: _onRefresh,
            child: state.when(
              fetchInProgress: _buildInProgressWidget,
              fetchSuccess: _buildSuccessWidget,
              fetchError: _buildErrorWidget,
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

  Widget? _buildSuccessWidget(item) {
    _refreshController.refreshCompleted();
    return Column(
      children: [
        _buildUserInfo(item),
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
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      item.login ?? '',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(height: spaceSmall2),
                    _buildPersonalInfo(
                        FontAwesomeIcons.locationDot, item.location, null),
                    _buildPersonalInfo(
                      FontAwesomeIcons.envelope,
                      item.email,
                      () async {
                        try {
                          launch('mailto:${item.email}');
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
                          await launch(item.blog ?? '');
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
              style: Theme.of(context).textTheme.subtitle2,
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
                      style: Theme.of(context).textTheme.bodyText2,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  Widget _buildErrorWidget(String? message, String? url) {
    _refreshController.refreshFailed();
    return serverErrorWidget(message, url);
  }
}
