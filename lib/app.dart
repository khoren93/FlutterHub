import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterhub/utils/extensions.dart';

import 'utils/app_router.dart';
import 'configs/app_store.dart';
import 'configs/app_theme.dart';
import 'utils/di.dart';
import 'features/languages/presentation/cubit/languages_cubit.dart';
import 'features/login/presentation/cubit/login_cubit.dart';
import 'features/search/presentation/cubit/search_cubit.dart';
import 'features/trending/presentation/cubit/trending_cubit.dart';
import 'generated/l10n.dart';
import 'l10n/localizations.dart';
import 'utils/scroll_behavior.dart';

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
