import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/utils/app_router.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/core/presentation/widgets/empty_widget.dart';
import 'package:flutterhub/features/core/presentation/widgets/network_image.dart';
import 'package:flutterhub/features/user/presentation/cubit/user_cubit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../configs/app_store.dart';
import '../widgets/rate_limit_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../generated/l10n.dart';
import '../widgets/menu_tile.dart';

class MenuDrawerPage extends StatefulWidget {
  const MenuDrawerPage({
    super.key,
  });

  @override
  State<MenuDrawerPage> createState() => _MenuDrawerPageState();
}

class _MenuDrawerPageState extends State<MenuDrawerPage> {
  final _refreshController = RefreshController(initialRefresh: false);

  User? get currentUser => appStore.currentUser;
  bool get isLoggedIn => appStore.isUserLoggedIn;

  @override
  Widget build(BuildContext context) {
    setUser();
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: isLoggedIn
                ? _buildAuthorizedWidget()
                : _buildUnauthorizedWidget(),
          ),
          const RateLimitWidget(),
        ],
      ),
    );
  }

  void setUser() {
    if (currentUser != null) {
      context.read<UserCubit>().setUser(currentUser!);
    }
  }

  void _onRefresh() {
    context.read<UserCubit>().fetchUser(owner: currentUser?.login ?? '');
  }

  Widget _buildInProgressWidget() => Container();

  Widget _buildErrorWidget(String? message, String? url) {
    _refreshController.refreshFailed();
    return serverErrorWidget(message, url);
  }

  Widget _buildAuthorizedWidget() {
    return BlocBuilder<UserCubit, UserState>(
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
    );
  }

  Widget _buildSuccessWidget(User item) {
    _refreshController.refreshCompleted();
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            child: networkImage(context, currentUser?.avatarUrl,
                width: 72, height: 72),
          ),
          accountName: Text(currentUser?.name ?? currentUser?.login ?? ''),
          accountEmail: currentUser?.email != null
              ? Text(currentUser?.email ?? '')
              : null,
          onDetailsPressed: () {
            Navigator.of(context).popAndPushNamed(
              AppRoutes.user,
              arguments: currentUser?.login,
            );
          },
        ),
        MenuTile(
          context,
          title: 'Events',
          leading: FontAwesomeIcons.rss,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        MenuTile(
          context,
          title: 'Notifications',
          leading: FontAwesomeIcons.solidBell,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        const Divider(),
        MenuTile(
          context,
          title: S.current.settingsAppBarTitle,
          leading: FontAwesomeIcons.gear,
          onTap: () {
            Navigator.of(context).popAndPushNamed(AppRoutes.settings);
          },
        ),
        const Divider(),
        MenuTile(
          context,
          title: 'Log Out',
          leading: FontAwesomeIcons.rightFromBracket,
          onTap: () async {
            await appStore.deleteToken();
            await appStore.deleteUser();
            setState(() {});
          },
        ),
      ],
    );
  }

  Widget _buildUnauthorizedWidget() {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                child: noUserImageWidget(70, null),
              ),
              TextButton.icon(
                icon: const Icon(
                  FontAwesomeIcons.rightToBracket,
                ),
                label: Text(S.current.loginBasicButton,
                    style: const TextStyle(fontSize: 20)),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  await Navigator.of(context).pushNamed(AppRoutes.login);
                  setState(() {});
                },
              ),
            ],
          ),
        ),
        MenuTile(
          context,
          title: S.current.settingsAppBarTitle,
          leading: FontAwesomeIcons.gear,
          onTap: () {
            Navigator.of(context).popAndPushNamed(AppRoutes.settings);
          },
        ),
      ],
    );
  }
}
