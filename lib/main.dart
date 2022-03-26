import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterhub/core/extensions.dart';
import 'package:flutterhub/di/di.dart';
import 'package:flutterhub/features/presentation/cubit/repository/repository_cubit.dart';
import 'package:flutterhub/features/presentation/cubit/user/user_cubit.dart';
import 'package:flutterhub/features/presentation/pages/search_page.dart';
import 'package:logging/logging.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';

import 'configs/app_store.dart';
import 'core/bloc_observer.dart';
import 'core/scroll_behavior.dart';
import 'features/presentation/cubit/search/search_cubit.dart';
import 'configs/app_theme.dart';
import 'generated/l10n.dart' as loc;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _setupLogging();
  await _initializeSharedPrefs();
  await initDI();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: FlutterHubBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di<SearchRepositoryCubit>()),
        BlocProvider(create: (_) => di<SearchUserCubit>()),
        BlocProvider(create: (_) => di<RepositoryCubit>()),
        BlocProvider(create: (_) => di<UserCubit>()),
      ],
      child: Observer(
        builder: (_) => MaterialApp(
          title: 'FlutterHub',
          theme: AppTheme.flexLightTheme(),
          darkTheme: AppTheme.flexDarkTheme(),
          themeMode: ThemeMode.light,
          localizationsDelegates: const [
            loc.S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: loc.S.delegate.supportedLocales,
          locale: appStore.selectedLanguage.parseLocale(),
          home: const SearchPage(),
          scrollBehavior: MyCustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

_initializeSharedPrefs() async {
  await initialize();
  await appStore.toggleUserLoggedIn(value: getBoolAsync(isUserLoggedInPref));
  final themeModeString = getStringAsync(themeModePref,
      defaultValue: appStore.themeMode.toString());
  await appStore.setThemeMode(ThemeMode.values
      .firstWhere((element) => element.toString() == themeModeString));
  await appStore.setColorSchemeIndex(getIntAsync(colorSchemeIndexPref,
      defaultValue: appStore.colorSchemeIndex));
  await appStore.toggleNotificationsMode(
      value: getBoolAsync(isNotificationsOnPref,
          defaultValue: appStore.isNotificationsOn));
  await appStore.setLanguage(
      getStringAsync(languagePref, defaultValue: appStore.selectedLanguage));
}

_setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    debugPrint('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
