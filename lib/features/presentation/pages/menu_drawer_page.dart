import 'package:flutter/material.dart';
import 'package:flutterhub/configs/app_router.dart';
import '../../../configs/app_store.dart';
import '../widgets/rate_limit_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../generated/l10n.dart';
import '../widgets/list_tiles/menu_tile.dart';
import '../widgets/network_image.dart';

class MenuDrawerPage extends StatefulWidget {
  const MenuDrawerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuDrawerPage> createState() => _MenuDrawerPageState();
}

class _MenuDrawerPageState extends State<MenuDrawerPage> {
  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = appStore.isUserLoggedIn;
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                if (!isLoggedIn)
                  DrawerHeader(
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
                            primary: Colors.white,
                          ),
                          onPressed: () async {
                            await Navigator.of(context)
                                .pushNamed(AppRoutes.login);
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                if (isLoggedIn) ...[
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      child: networkImage(context,
                          'https://avatars.githubusercontent.com/u/11523360?v=4',
                          width: 72, height: 72),
                    ),
                    accountName: const Text('Khoren Markosyan'),
                    accountEmail: const Text('khoren.markosyan@gmail.com'),
                    onDetailsPressed: () {
                      Navigator.of(context).popAndPushNamed(
                        AppRoutes.user,
                        arguments: 'khoren93',
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
                ],
                MenuTile(
                  context,
                  title: S.current.settingsAppBarTitle,
                  leading: FontAwesomeIcons.gear,
                  onTap: () {
                    Navigator.of(context).popAndPushNamed(AppRoutes.settings);
                  },
                ),
                if (isLoggedIn) ...[
                  const Divider(),
                  MenuTile(
                    context,
                    title: 'Log Out',
                    leading: FontAwesomeIcons.rightFromBracket,
                    onTap: () {
                      appStore.deleteToken();
                      setState(() {});
                    },
                  ),
                ],
              ],
            ),
          ),
          const RateLimitWidget(),
        ],
      ),
    );
  }
}
