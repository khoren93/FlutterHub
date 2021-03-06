import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/utils/di.dart';
import 'package:flutterhub/features/core/presentation/cubit/cubits.dart';
import 'package:flutterhub/features/home/presentation/pages/home_page.dart';
import 'package:flutterhub/features/languages/presentation/pages/languages_page.dart';
import 'package:flutterhub/features/login/presentation/pages/login_page.dart';
import 'package:flutterhub/features/repository/presentation/pages/repository_page.dart';
import 'package:flutterhub/features/settings/presentation/pages/settings_page.dart';
import 'package:flutterhub/features/trending/presentation/pages/trending_page.dart';
import 'package:flutterhub/features/user/presentation/pages/user_page.dart';

abstract class AppRoutes {
  static const home = '/';
  static const languages = '/languages';
  static const login = '/login';
  static const repository = '/repository';
  static const settings = '/settings';
  static const trending = '/trending';
  static const user = '/user';
}

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case AppRoutes.languages:
        return MaterialPageRoute(
          builder: (_) => const LanguagesPage(),
        );
      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case AppRoutes.repository:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => di<RepositoryCubit>(),
            child: RepositoryPage(arguments: settings.arguments),
          ),
        );
      case AppRoutes.settings:
        return MaterialPageRoute(
          builder: (_) => const SettingsPage(),
        );
      case AppRoutes.trending:
        return MaterialPageRoute(
          builder: (_) => const TrendingPage(),
        );
      case AppRoutes.user:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => di<UserCubit>(),
            child: UserPage(arguments: settings.arguments),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
    }
  }
}
