import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/di/di.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/repository/repository_cubit.dart';
import 'package:flutterhub/features/repositories/presentation/cubit/user/user_cubit.dart';
import 'package:flutterhub/features/repositories/presentation/pages/search_page.dart';

import 'features/repositories/presentation/cubit/search/search_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
        BlocProvider(create: (_) => di<SearchCubit>()),
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
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('${bloc.runtimeType} $change');
  }
}
