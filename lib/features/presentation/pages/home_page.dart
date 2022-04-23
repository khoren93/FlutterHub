import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/di/di.dart';
import 'package:flutterhub/features/presentation/cubit/cubits.dart';
import 'package:flutterhub/features/presentation/pages/trending_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(di()),
      child: const TrendingPage(),
    );
  }
}
