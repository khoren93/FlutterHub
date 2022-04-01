import 'package:flutter/material.dart';
import 'package:flutterhub/features/presentation/pages/login_page.dart';
import '../../../configs/app_store.dart';
import '../widgets/rate_limit_widget.dart';
import 'user_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../generated/l10n.dart';
import 'settings_page.dart';
import '../widgets/list_tiles/menu_tile.dart';
import '../widgets/network_image.dart';

class MenuDrawerPage extends StatelessWidget {
  const MenuDrawerPage({
    Key? key,
  }) : super(key: key);

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
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
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
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UserPage(
                            owner: 'khoren93',
                          ),
                        ),
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
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ),
                    );
                  },
                ),
                if (isLoggedIn) ...[
                  const Divider(),
                  MenuTile(
                    context,
                    title: 'Log Out',
                    leading: FontAwesomeIcons.rightFromBracket,
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SettingsPage(),
                        ),
                      );
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
