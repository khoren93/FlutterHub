import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/di/di.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/repository/repository_cubit.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/user/user_cubit.dart';
import 'package:flutterhub/features/repositories/presentation/pages/search_page.dart';
import 'package:logging/logging.dart';

import 'features/repositories/presentation/cubit/search/search_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _setupLogging();
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
      child: const MaterialApp(
        title: 'FlutterHub',
        home: SearchPage(),
      ),
    );
  }
}

class FlutterHubBlocObserver extends BlocObserver {
  // @override
  // void onChange(BlocBase bloc, Change change) {
  //   super.onChange(bloc, change);
  //   debugPrint('${bloc.runtimeType} ${change.toString()}');
  // }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('$transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('$error');
    super.onError(bloc, error, stackTrace);
  }
}

_setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    debugPrint('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
