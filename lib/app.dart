import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterhub/core/extensions.dart';

import 'configs/app_router.dart';
import 'configs/app_store.dart';
import 'configs/app_theme.dart';
import 'core/scroll_behavior.dart';
import 'di/di.dart';
import 'features/presentation/cubit/languages/languages_cubit.dart';
import 'features/presentation/cubit/login/login_cubit.dart';
import 'features/presentation/cubit/search/search_cubit.dart';
import 'features/presentation/cubit/trending/trending_cubit.dart';
import 'generated/l10n.dart';
import 'l10n/localizations.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di<LoginCubit>()),
        BlocProvider(create: (_) => di<TrendingCubit>()),
        BlocProvider(create: (_) => di<SearchCubit>()),
        BlocProvider(create: (_) => di<LanguagesCubit>()),
      ],
      child: Observer(
        builder: (_) => MaterialApp(
          title: 'FlutterHub',
          theme: AppTheme.flexLightTheme(),
          darkTheme: AppTheme.flexDarkTheme(),
          themeMode: appStore.themeMode,
          localizationsDelegates: const [
            S.delegate,
            MyRefreshLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: appStore.selectedLanguage.parseLocale(),
          onGenerateRoute: _appRouter.onGenerateRoute,
          scrollBehavior: MyCustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
