import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/features/presentation/cubit/login/login_cubit.dart';
import 'package:flutterhub/features/presentation/widgets/app_logo.dart';
import 'package:flutterhub/features/presentation/widgets/common_widgets.dart';
import 'package:flutterhub/features/presentation/widgets/login/oauth_login_widget.dart';
import 'package:flutterhub/features/presentation/widgets/tab_bars/login_tab_bar.dart';
import 'package:formz/formz.dart';

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
    _tabController.addListener(() => _onTabChanged(context));
    _onTabChanged(context);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).loginAppBarTitle),
      ),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status.isSubmissionSuccess) {
            Navigator.of(context).pop();
          }
          if (state.status.isSubmissionFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message ?? kUnknownServerError),
              ),
            );
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: ContainerX(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AppLogo(),
                  buildLoginTabs(context, _tabController),
                  const SizedBox(height: spaceDefault),
                  Flexible(
                    child: SizedBox(
                      height: 400,
                      child: TabBarView(
                        controller: _tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          OAuthLoginWidget(),
                          PersonalLoginWidget(),
                          BasicLoginWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onTabChanged(BuildContext context) {
    LoginType type = LoginType.values[_tabController.index];
    context.read<LoginCubit>().onLoginTypeChanged(type);
  }
}
