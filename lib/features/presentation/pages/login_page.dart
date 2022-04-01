import 'package:flutter/material.dart';
import 'package:flutterhub/features/presentation/widgets/app_logo.dart';
import 'package:flutterhub/features/presentation/widgets/common_widgets.dart';
import 'package:flutterhub/features/presentation/widgets/login/oauth_login_widget.dart';
import 'package:flutterhub/features/presentation/widgets/tab_bars/login_tab_bar.dart';

import '../../../configs/constants.dart';
import '../../../generated/l10n.dart';
import '../widgets/login/basic_login_widget.dart';
import '../widgets/login/personal_login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController =
        TabController(length: LoginType.values.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).loginAppBarTitle),
      ),
      body: ContainerX(
        child: Column(
          children: [
            const AppLogo(),
            buildLoginTabs(context, _tabController),
            const SizedBox(height: spaceDefault),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  OAuthLoginWidget(),
                  PersonalLoginWidget(),
                  BasicLoginWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
